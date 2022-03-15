library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity cpu15_sim is
end cpu15_sim;

architecture SIM of cpu15_sim is

component clk_gen
    port
    (
        CLK     : in std_logic;
        CLK_FT  : out std_logic;
        CLK_DC  : out std_logic;
        CLK_EX  : out std_logic;
        CLK_WB  : out std_logic
    );
end component;

component fetch
    port
    (
        CLK_FT      : in std_logic;
        P_COUNT     : in std_logic_vector(7 downto 0);
        PROM_OUT    : out std_logic_vector(14 downto 0)
    );
end component;

component decode
    port
    (
        CLK_DC      : in std_logic;
        PROM_OUT    : in std_logic_vector(14 downto 0);
        OP_CODE     : out std_logic_vector(3 downto 0);
        OP_DATA     : out std_logic_vector(7 downto 0)
    );
end component;

component reg_dc
    port
    (
        CLK_DC      : in std_logic;
        N_REG_IN    : in std_logic_vector(2 downto 0);
        REG_0       : in std_logic_vector(15 downto 0);
        REG_1       : in std_logic_vector(15 downto 0);
        REG_2       : in std_logic_vector(15 downto 0);
        REG_3       : in std_logic_vector(15 downto 0);
        REG_4       : in std_logic_vector(15 downto 0);
        REG_5       : in std_logic_vector(15 downto 0);
        REG_6       : in std_logic_vector(15 downto 0);
        REG_7       : in std_logic_vector(15 downto 0);
        N_REG_OUT   : out std_logic_vector(2 downto 0);
        REG_OUT     : out std_logic_vector(15 downto 0)
    );
end component;

component ram_dc
    port
    (
        CLK_DC      : in std_logic;
        RAM_AD_IN   : in std_logic_vector(7 downto 0);
        RAM_0       : in std_logic_vector(15 downto 0);
        RAM_1       : in std_logic_vector(15 downto 0);
        RAM_2       : in std_logic_vector(15 downto 0);
        RAM_3       : in std_logic_vector(15 downto 0);
        RAM_4       : in std_logic_vector(15 downto 0);
        RAM_5       : in std_logic_vector(15 downto 0);
        RAM_6       : in std_logic_vector(15 downto 0);
        RAM_7       : in std_logic_vector(15 downto 0);
        IO65_IN     : in std_logic_vector(15 downto 0);
        RAM_AD_OUT  : out std_logic_vector(7 downto 0);
        RAM_OUT     : out std_logic_vector(15 downto 0)
    );
end component;

component exec
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
end component;

component reg_wb
    port
    (
        CLK_WB      : in std_logic;
        RESET_N     : in std_logic;
        N_REG       : in std_logic_vector(2 downto 0);
        REG_IN      : in std_logic_vector(15 downto 0);
        REG_WEN     : in std_logic;
        REG_0       : out std_logic_vector(15 downto 0);
        REG_1       : out std_logic_vector(15 downto 0);
        REG_2       : out std_logic_vector(15 downto 0);
        REG_3       : out std_logic_vector(15 downto 0);
        REG_4       : out std_logic_vector(15 downto 0);
        REG_5       : out std_logic_vector(15 downto 0);
        REG_6       : out std_logic_vector(15 downto 0);
        REG_7       : out std_logic_vector(15 downto 0)
    );
end component;

component ram_wb
    port
    (
        CLK_WB      : in std_logic;
        RAM_ADDR    : in std_logic_vector(7 downto 0);
        RAM_IN      : in std_logic_vector(15 downto 0);
        RAM_WEN     : in std_logic;
        RAM_0       : out std_logic_vector(15 downto 0);
        RAM_1       : out std_logic_vector(15 downto 0);
        RAM_2       : out std_logic_vector(15 downto 0);
        RAM_3       : out std_logic_vector(15 downto 0);
        RAM_4       : out std_logic_vector(15 downto 0);
        RAM_5       : out std_logic_vector(15 downto 0);
        RAM_6       : out std_logic_vector(15 downto 0);
        RAM_7       : out std_logic_vector(15 downto 0);
        IO64_OUT    : out std_logic_vector(15 downto 0)
    );
end component;


-- Definition of inner signal
signal CLK          : std_logic;
signal RESET_FT     : std_logic;
signal RESET_N      : std_logic;
signal IO65_IN      : std_logic_vector(15 downto 0);
signal IO64_OUT     : std_logic_vector(15 downto 0);
signal CLK_FT       : std_logic;
signal CLK_DC       : std_logic;
signal CLK_EX       : std_logic;
signal CLK_WB       : std_logic;
signal P_COUNT      : std_logic_vector(7 downto 0);
signal PROM_OUT     : std_logic_vector(14 downto 0);
signal OP_CODE      : std_logic_vector(3 downto 0);
signal OP_DATA      : std_logic_vector(7 downto 0);
signal N_REG_A      : std_logic_vector(2 downto 0);
signal N_REG_B      : std_logic_vector(2 downto 0);
signal REG_IN       : std_logic_vector(15 downto 0);
signal REG_A        : std_logic_vector(15 downto 0);
signal REG_B        : std_logic_vector(15 downto 0);
signal REG_WEN      : std_logic;
signal REG_0        : std_logic_vector(15 downto 0);
signal REG_1        : std_logic_vector(15 downto 0);
signal REG_2        : std_logic_vector(15 downto 0);
signal REG_3        : std_logic_vector(15 downto 0);
signal REG_4        : std_logic_vector(15 downto 0);
signal REG_5        : std_logic_vector(15 downto 0);
signal REG_6        : std_logic_vector(15 downto 0);
signal REG_7        : std_logic_vector(15 downto 0);
signal RAM_ADDR     : std_logic_vector(7 downto 0);
signal RAM_IN       : std_logic_vector(15 downto 0);
signal RAM_OUT      : std_logic_vector(15 downto 0);
signal RAM_WEN      : std_logic;
signal RAM_0        : std_logic_vector(15 downto 0);
signal RAM_1        : std_logic_vector(15 downto 0);
signal RAM_2        : std_logic_vector(15 downto 0);
signal RAM_3        : std_logic_vector(15 downto 0);
signal RAM_4        : std_logic_vector(15 downto 0);
signal RAM_5        : std_logic_vector(15 downto 0);
signal RAM_6        : std_logic_vector(15 downto 0);
signal RAM_7        : std_logic_vector(15 downto 0);

begin
    C1 : clk_gen
        port map(
            CLK => CLK,
            CLK_FT => CLK_FT,
            CLK_DC => CLK_DC,
            CLK_EX => CLK_EX,
            CLK_WB => CLK_WB
        );
    C2 : fetch
        port map(
            CLK_FT => CLK_FT,
            P_COUNT => P_COUNT,
            PROM_OUT => PROM_OUT
        );
    C3 : decode
        port map(
            CLK_DC => CLK_DC,
            PROM_OUT => PROM_OUT,
            OP_CODE => OP_CODE,
            OP_DATA => OP_DATA
        );
    C4 : reg_dc
        port map(
            CLK_DC => CLK_DC,
            N_REG_IN => PROM_OUT(10 downto 8),
            REG_0 => REG_0,
            REG_1 => REG_1,
            REG_2 => REG_2,
            REG_3 => REG_3,
            REG_4 => REG_4,
            REG_5 => REG_5,
            REG_6 => REG_6,
            REG_7 => REG_7,
            N_REG_OUT => N_REG_A,
            REG_OUT => REG_A
        );
    C5 : reg_dc
        port map(
            CLK_DC => CLK_DC,
            N_REG_IN => PROM_OUT(7 downto 5),
            REG_0 => REG_0,
            REG_1 => REG_1,
            REG_2 => REG_2,
            REG_3 => REG_3,
            REG_4 => REG_4,
            REG_5 => REG_5,
            REG_6 => REG_6,
            REG_7 => REG_7,
            N_REG_OUT => N_REG_B,
            REG_OUT => REG_B
        );
    C6 : ram_dc
        port map(
            CLK_DC => CLK_DC,
            RAM_AD_IN => PROM_OUT(7 downto 0),
            RAM_0 => RAM_0,
            RAM_1 => RAM_1,
            RAM_2 => RAM_2,
            RAM_3 => RAM_3,
            RAM_4 => RAM_4,
            RAM_5 => RAM_5,
            RAM_6 => RAM_6,
            RAM_7 => RAM_7,
            IO65_IN => IO65_IN,
            RAM_AD_OUT => RAM_ADDR,
            RAM_OUT => RAM_OUT
        );
    C7 : exec
        port map(
            CLK_EX => CLK_EX,
            RESET_N  => RESET_N,
            OP_CODE => OP_CODE,
            REG_A => REG_A,
            REG_B => REG_B,
            OP_DATA => OP_DATA,
            RAM_OUT => RAM_OUT,
            P_COUNT => P_COUNT,
            REG_IN => REG_IN,
            RAM_IN  => RAM_IN,
            REG_WEN => REG_WEN,
            RAM_WEN => RAM_WEN
        );
    C8 : reg_wb
        port map(
            CLK_WB => CLK_WB,
            RESET_N => RESET_N,
            N_REG => N_REG_A,
            REG_IN => REG_IN,
            REG_WEN => REG_WEN,
            REG_0 => REG_0,
            REG_1 => REG_1,
            REG_2 => REG_2,
            REG_3 => REG_3,
            REG_4 => REG_4,
            REG_5 => REG_5,
            REG_6 => REG_6,
            REG_7 => REG_7
        );
    C9 : ram_wb
        port map(
            CLK_WB => CLK_WB,
            RAM_ADDR => RAM_ADDR,
            RAM_IN => RAM_IN,
            RAM_WEN => RAM_WEN,
            RAM_0 => RAM_0,
            RAM_1 => RAM_1,
            RAM_2 => RAM_2,
            RAM_3 => RAM_3,
            RAM_4 => RAM_4,
            RAM_5 => RAM_5,
            RAM_6 => RAM_6,
            RAM_7 => RAM_7,
            IO64_OUT => IO64_OUT
        );

    -- for CLK simulation
    process begin
        CLK <= '1';
        wait for 10 ns;
        CLK <= '0';
        wait for 10 ns;
    end process;

    -- for RESET_N simulation
    process begin
        RESET_N <= '0';
        wait for 100 ns;
        RESET_N <= '1';
        wait;
    end process;

end SIM;
