library verilog;
use verilog.vl_types.all;
entity Condition_Check is
    port(
        Reg2            : in     vl_logic_vector(31 downto 0);
        Val1            : in     vl_logic_vector(31 downto 0);
        BR_Type         : in     vl_logic_vector(1 downto 0);
        Br_taken        : out    vl_logic
    );
end Condition_Check;
