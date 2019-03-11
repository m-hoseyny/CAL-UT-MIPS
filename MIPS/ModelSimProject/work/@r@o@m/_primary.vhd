library verilog;
use verilog.vl_types.all;
entity ROM is
    port(
        PC              : in     vl_logic_vector(31 downto 0);
        Instruction     : out    vl_logic_vector(31 downto 0)
    );
end ROM;
