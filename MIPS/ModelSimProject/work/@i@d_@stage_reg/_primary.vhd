library verilog;
use verilog.vl_types.all;
entity ID_Stage_reg is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        flush           : in     vl_logic;
        Dest_in         : in     vl_logic_vector(4 downto 0);
        Reg2_in         : in     vl_logic_vector(31 downto 0);
        Val2_in         : in     vl_logic_vector(31 downto 0);
        Val1_in         : in     vl_logic_vector(31 downto 0);
        PC_in           : in     vl_logic_vector(31 downto 0);
        Br_taken_in     : in     vl_logic;
        EXE_CMD_in      : in     vl_logic_vector(3 downto 0);
        MEM_R_EN_in     : in     vl_logic;
        MEM_W_EN_in     : in     vl_logic;
        WB_EN_in        : in     vl_logic;
        Dest            : out    vl_logic_vector(4 downto 0);
        Reg2            : out    vl_logic_vector(31 downto 0);
        Val2            : out    vl_logic_vector(31 downto 0);
        Val1            : out    vl_logic_vector(31 downto 0);
        PC_out          : out    vl_logic_vector(31 downto 0);
        Br_taken        : out    vl_logic;
        EXE_CMD         : out    vl_logic_vector(3 downto 0);
        MEM_R_EN        : out    vl_logic;
        MEM_W_EN        : out    vl_logic;
        WB_EN           : out    vl_logic
    );
end ID_Stage_reg;
