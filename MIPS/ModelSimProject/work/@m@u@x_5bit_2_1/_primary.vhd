library verilog;
use verilog.vl_types.all;
entity MUX_5bit_2_1 is
    port(
        A               : in     vl_logic_vector(4 downto 0);
        B               : in     vl_logic_vector(4 downto 0);
        sel             : in     vl_logic;
        \out\           : out    vl_logic_vector(4 downto 0)
    );
end MUX_5bit_2_1;
