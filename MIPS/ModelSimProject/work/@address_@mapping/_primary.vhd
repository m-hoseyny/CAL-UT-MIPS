library verilog;
use verilog.vl_types.all;
entity Address_Mapping is
    port(
        address_in      : in     vl_logic_vector(31 downto 0);
        address_out     : out    vl_logic_vector(31 downto 0)
    );
end Address_Mapping;
