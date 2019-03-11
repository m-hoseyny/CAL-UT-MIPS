library verilog;
use verilog.vl_types.all;
entity PC_Adder is
    port(
        PC_in           : in     vl_logic_vector(31 downto 0);
        PC_out          : out    vl_logic_vector(31 downto 0)
    );
end PC_Adder;
