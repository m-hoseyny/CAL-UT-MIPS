library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        EXE_CMD         : in     vl_logic_vector(3 downto 0);
        Val2            : in     vl_logic_vector(31 downto 0);
        Val1            : in     vl_logic_vector(31 downto 0);
        ALU_Res         : out    vl_logic_vector(31 downto 0)
    );
end ALU;
