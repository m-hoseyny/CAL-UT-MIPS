module MIPS_TB ();

		MIPS inst_MIPS
		(
			.CLOCK_27    (CLOCK_27),
			.CLOCK_50    (CLOCK_50),
			.EXT_CLOCK   (EXT_CLOCK),
			.KEY         (KEY),
			.SW          (SW),
			.HEX0        (HEX0),
			.HEX1        (HEX1),
			.HEX2        (HEX2),
			.HEX3        (HEX3),
			.HEX4        (HEX4),
			.HEX5        (HEX5),
			.HEX6        (HEX6),
			.HEX7        (HEX7),
			.LEDG        (LEDG),
			.LEDR        (LEDR),
			.DRAM_DQ     (DRAM_DQ),
			.DRAM_ADDR   (DRAM_ADDR),
			.DRAM_LDQM   (DRAM_LDQM),
			.DRAM_UDQM   (DRAM_UDQM),
			.DRAM_WE_N   (DRAM_WE_N),
			.DRAM_CAS_N  (DRAM_CAS_N),
			.DRAM_RAS_N  (DRAM_RAS_N),
			.DRAM_CS_N   (DRAM_CS_N),
			.DRAM_BA_0   (DRAM_BA_0),
			.DRAM_BA_1   (DRAM_BA_1),
			.DRAM_CLK    (DRAM_CLK),
			.DRAM_CKE    (DRAM_CKE),
			.FL_DQ       (FL_DQ),
			.FL_ADDR     (FL_ADDR),
			.FL_WE_N     (FL_WE_N),
			.FL_RST_N    (FL_RST_N),
			.FL_OE_N     (FL_OE_N),
			.FL_CE_N     (FL_CE_N),
			.SRAM_DQ     (SRAM_DQ),
			.SRAM_ADDR   (SRAM_ADDR),
			.SRAM_UB_N   (SRAM_UB_N),
			.SRAM_LB_N   (SRAM_LB_N),
			.SRAM_WE_N   (SRAM_WE_N),
			.SRAM_CE_N   (SRAM_CE_N),
			.SRAM_OE_N   (SRAM_OE_N),
			.OTG_DATA    (OTG_DATA),
			.OTG_ADDR    (OTG_ADDR),
			.OTG_CS_N    (OTG_CS_N),
			.OTG_RD_N    (OTG_RD_N),
			.OTG_WR_N    (OTG_WR_N),
			.OTG_RST_N   (OTG_RST_N),
			.OTG_FSPEED  (OTG_FSPEED),
			.OTG_LSPEED  (OTG_LSPEED),
			.OTG_INT0    (OTG_INT0),
			.OTG_INT1    (OTG_INT1),
			.OTG_DREQ0   (OTG_DREQ0),
			.OTG_DREQ1   (OTG_DREQ1),
			.OTG_DACK0_N (OTG_DACK0_N),
			.OTG_DACK1_N (OTG_DACK1_N),
			.LCD_ON      (LCD_ON),
			.LCD_BLON    (LCD_BLON),
			.LCD_RW      (LCD_RW),
			.LCD_EN      (LCD_EN),
			.LCD_RS      (LCD_RS),
			.LCD_DATA    (LCD_DATA),
			.TDI         (TDI),
			.TCK         (TCK),
			.TCS         (TCS),
			.TDO         (TDO),
			.I2C_SDAT    (I2C_SDAT),
			.I2C_SCLK    (I2C_SCLK),
			.PS2_DAT     (PS2_DAT),
			.PS2_CLK     (PS2_CLK),
			.VGA_CLK     (VGA_CLK),
			.VGA_HS      (VGA_HS),
			.VGA_VS      (VGA_VS),
			.VGA_BLANK   (VGA_BLANK),
			.VGA_SYNC    (VGA_SYNC),
			.VGA_R       (VGA_R),
			.VGA_G       (VGA_G),
			.VGA_B       (VGA_B),
			.ENET_DATA   (ENET_DATA),
			.ENET_CMD    (ENET_CMD),
			.ENET_CS_N   (ENET_CS_N),
			.ENET_WR_N   (ENET_WR_N),
			.ENET_RD_N   (ENET_RD_N),
			.ENET_RST_N  (ENET_RST_N),
			.ENET_INT    (ENET_INT),
			.ENET_CLK    (ENET_CLK),
			.AUD_ADCLRCK (AUD_ADCLRCK),
			.AUD_ADCDAT  (AUD_ADCDAT),
			.AUD_DACLRCK (AUD_DACLRCK),
			.AUD_DACDAT  (AUD_DACDAT),
			.AUD_BCLK    (AUD_BCLK),
			.AUD_XCK     (AUD_XCK),
			.TD_DATA     (TD_DATA),
			.TD_HS       (TD_HS),
			.TD_VS       (TD_VS),
			.TD_RESET    (TD_RESET),
			.TD_CLK27    (TD_CLK27),
			.GPIO_0      (GPIO_0),
			.GPIO_1      (GPIO_1)
		);


endmodule