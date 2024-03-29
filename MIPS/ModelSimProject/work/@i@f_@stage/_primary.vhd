library verilog;
use verilog.vl_types.all;
entity IF_Stage is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        Br_taken        : in     vl_logic;
        Br_Addr         : in     vl_logic_vector(31 downto 0);
        PC              : out    vl_logic_vector(31 downto 0);
        Instruction     : out    vl_logic_vector(31 downto 0)
    );
end IF_Stage;
