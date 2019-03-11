library verilog;
use verilog.vl_types.all;
entity MEM_Stage is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        MEM_R_EN_in     : in     vl_logic;
        MEM_W_EN_in     : in     vl_logic;
        ALU_Res_in      : in     vl_logic_vector(31 downto 0);
        ST_val          : in     vl_logic_vector(31 downto 0);
        MEM_read_value  : out    vl_logic_vector(31 downto 0)
    );
end MEM_Stage;
