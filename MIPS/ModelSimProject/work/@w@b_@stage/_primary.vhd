library verilog;
use verilog.vl_types.all;
entity WB_Stage is
    port(
        clk             : in     vl_logic;
        WB_EN_in        : in     vl_logic;
        MEM_R_EN        : in     vl_logic;
        ALU_Res         : in     vl_logic_vector(31 downto 0);
        Mem_read_Value  : in     vl_logic_vector(31 downto 0);
        Dest_in         : in     vl_logic_vector(4 downto 0);
        WB_EN           : out    vl_logic;
        Write_Value     : out    vl_logic_vector(31 downto 0);
        Dest            : out    vl_logic_vector(4 downto 0)
    );
end WB_Stage;
