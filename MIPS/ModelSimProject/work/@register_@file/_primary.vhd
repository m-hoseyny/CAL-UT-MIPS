library verilog;
use verilog.vl_types.all;
entity Register_File is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        src1            : in     vl_logic_vector(4 downto 0);
        src2            : in     vl_logic_vector(4 downto 0);
        dest            : in     vl_logic_vector(4 downto 0);
        Write_Val       : in     vl_logic_vector(31 downto 0);
        Write_EN        : in     vl_logic;
        reg1            : out    vl_logic_vector(31 downto 0);
        reg2            : out    vl_logic_vector(31 downto 0)
    );
end Register_File;
