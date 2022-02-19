library IEEE;
use IEEE.std_logic_ll64.all;
use IEEE.std_logic_unsigned.all;

entity exec is
    port
    (
        CLK_EX      : in std_logic;
        RESET_N     : in std_logic;
        OP_CODE     : in std_logic_vector(3 downto 0);
        REG_A       : in std_logic_vector(15 downto 0);
        REG_B       : in std_logic_vector(15 downto 0);
        OP_DATA     : in std_logic_vector(7 downto 0);
        RAM_OUT     : in std_logic_vector(15 downto 0);
        P_COUNT     : out std_logic_vector(7 downto 0);
        REG_IN      : out std_logic_vector(15 downto 0);
        RAM_IN      : out std_logic_vector(15 downto 0);
        REG_WEN     : out std_logic;
        RAM_WEN     : out std_logic
    );
end exec;

architecture RTL of exec is

signal PC       : std_logic_vector(7 downto 0) := "00000000";
signal CMP_FLAG : std_logic := '0';

begin
    process(CLK_EX)
    begin
        if(CLK_EX'event and CLK_EX = '1') then
            if(RESET_N = '0') then
                PC <= "00000000";
                CMP_FLAG <= '0';
            else
                case OP_CODE is
                    when "0000" =>          -- MOV
                        REG_IN <= REG_B;
                        REG_WEN <= '1';
                        RAM_WEN <= '0';
                        PC <= PC + 1;
                    when "0001" =>          -- ADD
                        REG_IN <= REG_A + REG_B;
                        REG_WEN <= '1';
                        RAM_WEN <= '0';
                        PC <= PC + 1;
                    when "0010" =>          -- SUB
                        REG_IN <= REG_A - REG_B;
                        REG_WEN <= '1';
                        RAM_WEN <= '0';
                        PC <= PC + 1;
                    when "0011" =>          -- AND
                        REG_IN <= REG_A and REG_B;
                        REG_WEN <= '1';
                        RAM_WEN <= '0';
                        PC <= PC + 1;
                    when "0100" =>          -- OR
                        REG_IN <= REG_A or REG_B;
                        REG_WEN <= '1';
                        RAM_WEN <= '0';
                        PC <= PC + 1;
                    when "0101" =>          -- SL
                        REG_IN <= REG_A(14 downto 0) & '0';
                        REG_WEN <= '1';
                        RAM_WEN <= '0';
                        PC <= PC + 1;
                    when "0110" =>          -- SR
                        REG_IN <= '0' & REG_A(15 downto 1);
                        REG_WEN <= '1';
                        RAM_WEN <= '0';
                        PC <= PC + 1;
                    when "0111" =>          -- SRA
                        REG_IN <= REG_A(15) & REG_A(15 downto 1);
                        REG_WEN <= '1';
                        RAM_WEN <= '0';
                        PC <= PC + 1;
                    when "1000" =>          -- LDL
                        REG_IN <= REG_A(15 downto 8) & OP_DATA;
                        REG_WEN <= '1';
                        RAM_WEN <= '0';
                        PC <= PC + 1;
                    when "1001" =>          -- LDH
                        REG_IN <= OP_DATA & REG_A(7 downto 0);
                        REG_WEN <= '1';
                        RAM_WEN <= '0';
                        PC <= PC + 1;
                    when "1010" =>          -- CMP
                        if(REG_A = REG_B) then
                            CMP_FLAG <= '1';
                        else
                            CMP_FLAG <= '0';
                        end if;
                        REG_WEN <= '0';
                        RAM_WEN <= '0';
                        PC <= PC + 1;
                    when "1011" =>          -- JE
                        if(CMP_FLAG = '1') then
                            PC <= OP_DATA;
                        else
                            PC <= PC + 1;
                        end if;
                        REG_WEN <= '0';
                        RAM_WEN <= '0';
                        PC <= PC + 1;
                    when "1100" =>          -- JMP
                        REG_WEN <= '0';
                        RAM_WEN <= '0';
                        PC <= OP_DATA;
                    when "1101" =>          -- LD
                        REG_IN <= RAM_OUT;
                        REG_WEN <= '1';
                        RAM_WEN <= '0';
                        PC <= PC + 1;
                    when "1110" =>          -- ST
                        RAM_IN <= REG_A;
                        REG_WEN <= '0';
                        RAM_WEN <= '1';
                        PC <= PC + 1;
                    when othres =>
                        null;
                end case;
            end if;
        end if;
    end process;

    P_COUNT <= PC;

end RTL;
