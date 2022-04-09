----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:17:48 04/09/2021 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( RdData1 : in  STD_LOGIC_VECTOR (15 downto 0);
           RdData2 : in  STD_LOGIC_VECTOR (15 downto 0);
           ALUOP : in  STD_LOGIC_VECTOR (3 downto 0);
           CE_N : in  STD_LOGIC;
			  CE_Z : in  STD_LOGIC;
			  CE_OV : in  STD_LOGIC;
			  CE_C : in  STD_LOGIC;
			  ZF : out STD_LOGIC;
			  C: out STD_LOGIC;
			  OV: out STD_LOGIC;
			  N : out STD_LOGIC;
				Y : out STD_LOGIC_VECTOR(15 downto 0);
				bit4: in STD_LOGIC_VECTOR(3 downto 0);
				Clk: in STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

	signal OP1: STD_LOGIC_VECTOR(16 downto 0);
	signal OP2: STD_LOGIC_VECTOR(16 downto 0);
	signal NEG: STD_LOGIC_VECTOR(16 downto 0);
	signal SL: STD_LOGIC_VECTOR(16 downto 0);
	signal LSR: STD_LOGIC_VECTOR(16 downto 0);
	signal BTSTS: STD_LOGIC_VECTOR(16 downto 0);
	signal comp: STD_LOGIC; 
	signal sY: STD_LOGIC_VECTOR(16 downto 0); 
	signal tempC: STD_LOGIC;
	signal tempN: STD_LOGIC;
	signal tempOV: STD_LOGIC;
	signal blsr: STD_LOGIC_VECTOR(4 downto 0);

begin

	OP1 <= (b"0"&RdData1);
	OP2 <= (b"1"&RdData2) when ALUOP = b"0001"
				else (b"0"&RdData2);
	

	with ALUOP select
		sy <= OP1 + OP2 when "0000",
			OP1 - OP2 when "0001",
			OP1 and OP2 when "0010",
			OP1 or OP2 when "0011",
			LSR when "0100" ,
			NEG when "0101",
			SL  when "0110",
			BTSTS when "0111",
			b"0"&x"0000" when others;
	 	
	
	
	 SL <='0'&OP2(14 downto 0)&b"0";
			 
	
	
	NEG <= not OP2+b"01";
	
	blsr<=OP2(4 downto 0);
	
	with blsr select
	LSR<= "00" & OP1(15 downto 1) when b"0_0001",
         "000" & OP1(15 downto  2) when b"0_0010",
         "0000" & OP1(15 downto  3) when b"0_0011",
			"00000" & OP1(15 downto  4) when b"0_0100",
			"000000" & OP1(15 downto  5) when b"0_0101",
			"0000000" & OP1(15 downto  6) when b"0_0110",
			"00000000" & OP1(15 downto  7) when b"0_0111",
			"000000000" & OP1(15 downto  8) when b"0_1000",
			"0000000000" & OP1(15 downto  9) when b"0_1001",
			"00000000000" & OP1(15 downto 10) when b"0_1010",
			"000000000000" & OP1(15 downto 11) when b"0_1011",
			"0000000000000" & OP1(15 downto 12) when b"0_1100",
			"00000000000000" & OP1(15 downto 13) when b"0_1101",
			"000000000000000" & OP1(15 downto 14) when b"0_1110",
			"0000000000000000" & OP1(15) when b"0_1111",
         '0'&x"0000" when others;
	
	BTSTS <= '0'&OP2(15 downto conv_integer(bit4)+1)&not(OP2(conv_integer(bit4)))&OP2(conv_integer(bit4)-1 downto 0)  when(OP2(conv_integer(bit4)))='0' else
	         '0'&not(OP2(15))&OP2(14 downto 0) when OP2(15)='0' and bit4=x"F" else
	         '0'&OP2(15 downto 1)&not(OP2(0)) when(OP2(0)='0') and bit4=x"0";
				 
	
	tempN <= sY(15);
	N<= tempN when rising_edge(Clk) and CE_N='1';
	
	
	tempC <= sY(16);
	C <= tempC when rising_edge(Clk) and CE_C = '1';
	
	
	tempOV <= '1' when (ALUOP="0000" and OP1(15) = '0' and OP2(15) = '0' and sY(15) ='1')or
							(ALUOP="0000" and OP1(15) = '1' and OP2(15) = '1' and sY(15) = '0') or
							(ALUOP="0001" and OP1(15) = '0' and OP2(15) = '1' and sY(15) ='1') or
							(ALUOP="0001" and OP1(15) = '1' and OP2(15) = '0' and sY(15) = '0') or
							(ALUOP="0101" and OP1(15) = '0' and OP2(15) = '1' and sY(15) = '1') or
							(ALUOP="0101" and OP1(15) = '1' and OP2(15) = '0' and sY(15) = '0') else
					'0';
	OV <= tempOV when rising_edge(Clk) and CE_OV = '1';
							
	
	
	comp <= '1' when sY(15 downto 0) = x"0000" else '0';
	

	ZF <= comp when rising_edge(Clk) and CE_Z='1';
	
	Y <= sY(15 downto 0);

end Behavioral;


