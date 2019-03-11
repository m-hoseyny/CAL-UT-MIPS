library verilog;
use verilog.vl_types.all;
entity MEM is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        address         : in     vl_logic_vector(31 downto 0);
        MEM_R_EN        : in     vl_logic;
        MEM_W_EN        : in     vl_logic;
        data            : in     vl_logic_vector(31 downto 0);
        mem_out         : out    vl_logic_vector(31 downto 0)
    );
end MEM;
