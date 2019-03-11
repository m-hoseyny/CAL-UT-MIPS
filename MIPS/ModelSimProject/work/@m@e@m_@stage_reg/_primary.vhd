library verilog;
use verilog.vl_types.all;
entity MEM_Stage_reg is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        WB_EN_in        : in     vl_logic;
        MEM_R_EN_in     : in     vl_logic;
        ALU_Res_in      : in     vl_logic_vector(31 downto 0);
        Mem_read_value_in: in     vl_logic_vector(31 downto 0);
        Dest_in         : in     vl_logic_vector(4 downto 0);
        WB_EN           : out    vl_logic;
        MEM_R_EN        : out    vl_logic;
        ALU_Res         : out    vl_logic_vector(31 downto 0);
        Mem_read_value  : out    vl_logic_vector(31 downto 0);
        Dest            : out    vl_logic_vector(4 downto 0)
    );
end MEM_Stage_reg;
