library verilog;
use verilog.vl_types.all;
entity ID_Stage is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        instruction     : in     vl_logic_vector(31 downto 0);
        WB_Write_Enable : in     vl_logic;
        WB_Dest         : in     vl_logic_vector(4 downto 0);
        WB_Data         : in     vl_logic_vector(31 downto 0);
        IF_flush        : out    vl_logic;
        Dest            : out    vl_logic_vector(4 downto 0);
        Reg2            : out    vl_logic_vector(31 downto 0);
        Val2            : out    vl_logic_vector(31 downto 0);
        Val1            : out    vl_logic_vector(31 downto 0);
        BR_Type         : out    vl_logic_vector(1 downto 0);
        EXE_CMD         : out    vl_logic_vector(3 downto 0);
        MEM_R_EN        : out    vl_logic;
        MEM_W_EN        : out    vl_logic;
        WB_EN           : out    vl_logic
    );
end ID_Stage;
