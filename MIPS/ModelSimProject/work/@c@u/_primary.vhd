library verilog;
use verilog.vl_types.all;
entity CU is
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        EXE_CMD         : out    vl_logic_vector(3 downto 0);
        MEM_R_EN        : out    vl_logic;
        MEM_W_EN        : out    vl_logic;
        WB_EN           : out    vl_logic;
        IS_IMM          : out    vl_logic;
        BR_Type         : out    vl_logic_vector(1 downto 0)
    );
end CU;
