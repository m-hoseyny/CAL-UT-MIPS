library verilog;
use verilog.vl_types.all;
entity MUX_32bit_2_1 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        sel             : in     vl_logic;
        \OUT\           : out    vl_logic_vector(31 downto 0)
    );
end MUX_32bit_2_1;
