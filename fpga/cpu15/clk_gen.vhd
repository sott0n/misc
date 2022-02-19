library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity clk_gen is
    port 
    (
        CLK     : in std_logic;
        CLK_FT  : out std_logic;
        CLK_DC  : out std_logic;
        CLK_EX  : out std_logic;
        CLK_WB  : out std_logic
    );
end clk_gen;

architecture RTL of clk_gen is
signal COUNT : std_logic_vector(1 downto 0) := "00";
begin
    process(CLK)
    begin
        if(CLK'event and CLK = '1') then
            case COUNT is
                when "00" => -- fetch stage
                    CLK_FT <= '1';
                    CLK_DC <= '0';
                    CLK_EX <= '0';
                    CLK_WB <= '0';
                when "01" => -- decode stage
                    CLK_FT <= '0';
                    CLK_DC <= '1';
                    CLK_EX <= '0';
                    CLK_WB <= '0';
                when "10" => -- exec stage
                    CLK_FT <= '0';
                    CLK_DC <= '0';
                    CLK_EX <= '1';
                    CLK_WB <= '0';
                when "11" => -- writeback stage
                    CLK_FT <= '0';
                    CLK_DC <= '0';
                    CLK_EX <= '0';
                    CLK_WB <= '1';
                when others =>
                    null;
            end case;
            COUNT <= COUNT + 1;
        end if;
    end process;
end RTL;
