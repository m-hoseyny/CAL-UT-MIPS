library verilog;
use verilog.vl_types.all;
entity EXE_Stage is
    port(
        clk             : in     vl_logic;
        EXE_CMD         : in     vl_logic_vector(3 downto 0);
        Val1            : in     vl_logic_vector(31 downto 0);
        Val2            : in     vl_logic_vector(31 downto 0);
        Reg2            : in     vl_logic_vector(31 downto 0);
        PC              : in     vl_logic_vector(31 downto 0);
        BR_type         : in     vl_logic_vector(1 downto 0);
        ALU_Res         : out    vl_logic_vector(31 downto 0);
        Br_Addr         : out    vl_logic_vector(31 downto 0);
        Br_taken        : out    vl_logic
    );
end EXE_Stage;
