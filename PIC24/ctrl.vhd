----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:08:04 04/11/2021 
-- Design Name: 
-- Module Name:    ctrl - Behavioral 
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

entity ctrl is
    Port ( OP : in  STD_LOGIC_VECTOR (7 downto 0);
			  Branch : out STD_Logic_Vector(2 downto 0);
			  CE_ZF : out  STD_LOGIC;
			  CE_CF : out STD_LOGIC;
			  CE_OVF : out STD_LOGIC;
			  CE_NF : out STD_LOGIC;
           ALUOP : out  STD_LOGIC_VECTOR (3 downto 0);
           MemWr : out  STD_LOGIC;
           Mem2Reg : out  STD_LOGIC;
           RegWr : out  STD_LOGIC;
			  WbReg : out  STD_LOGIC;
           RegDest : out  STD_LOGIC);
end ctrl;

architecture Behavioral of ctrl is

begin

CE_ZF <= '1' when OP(7 downto 3) = b"0_1000" -- add
					or OP(7 downto 3) = b"0_1010" -- sub
					or OP(7 downto 3) = b"0_1100" -- and
					or OP(7 downto 3) = b"0_1110" -- ior
					or OP(7 downto 3) = b"1_1011" -- lsr
					or OP(7 downto 3) = b"1_1101" -- neg
					or OP(7 downto 3) = b"1_1010" -- sl
					or OP(7 downto 3) = b"1_0100" -- btsts
					
					else 
			'0';
			
CE_CF <= '1' when OP(7 downto 3) = b"0_1000" --add
					or OP(7 downto 3) = b"0_1010" --sub
					or OP(7 downto 3) = b"1_1101" -- neg
					or OP(7 downto 3) = b"1_1010" -- sl
					else
				'0';
				
CE_OVF <= '1' when OP(7 downto 3) = b"0_1000" --add
					or OP(7 downto 3) = b"0_1010" --sub
					or OP(7 downto 3) = b"1_1101" -- neg
					else
				'0';
				
CE_NF <= '1' when OP(7 downto 3) = b"0_1000" --add
					or OP(7 downto 3) = b"0_1010" --sub
					or OP(7 downto 3) = b"0_1100" -- and
					or OP(7 downto 3) = b"0_1110" -- ior
					or OP(7 downto 3) = b"1_1011" -- lsr
					or OP(7 downto 3) = b"1_1101" -- neg
					or OP(7 downto 3) = b"1_1010" -- sl
					else
				'0';
			
MemWr <= '1' when OP(7 downto 3) = b"1_0001" else '0'; -- mov wns, f

Mem2Reg <= '1' when OP(7 downto 3) = b"1_0000" else '0'; -- mov f, wnd

RegWr <= '1' when OP(7 downto 3) = b"0_1000" -- add
				   or OP(7 downto 3) = b"0_1010" -- sub
					or OP(7 downto 3) = b"0_1100" -- and
					or OP(7 downto 3) = b"0_1110" -- ior
					or OP(7 downto 3) = b"1_0000" -- mov f, wnd
					or OP(7 downto 3) = b"1_1011" -- lsr
					or OP(7 downto 3) = b"1_1101" -- neg
					or OP(7 downto 3) = b"1_1010" -- sl
					or OP(7 downto 3) = b"1_0100" -- btsts
					else
			'0';
			
RegDest <= '0' when OP(7 downto 3) = b"1_0000" else-- mov f, wnd
			  '1';
			  
WbReg <= '0' when OP(7 downto 3) = b"1_1011" else-- lsr wb, wns , wnd
			  '1';
			  
ALUOP <= "0000" when OP(7 downto 3) = b"0_1000" else -- add
			"0001" when OP(7 downto 3) = b"0_1010" else -- sub 
			"0010" when OP(7 downto 3) = b"0_1100" else -- and
			"0011" when OP(7 downto 3) = b"0_1110" else -- ior
			"0100" when OP(7 downto 3) = b"1_1011" else -- lsr
			"0101" when OP(7 downto 3) = b"1_1101" else -- neg
			"0110" when OP(7 downto 3) = b"1_1010" else -- sl
			"0111" when OP(7 downto 3) = b"1_0100" else -- btsts
			"1000";
			
Branch <= "001" when OP = b"0011_0010" else --bra z, expr
			 "010" when OP = b"0011_0000" else --bra ov,expr
			 "011" when OP = b"0011_0001" else --bra c, expr
			 "100" when OP = b"0011_0011" else --bra n, expr
			 "101" when OP = b"0011_0111" else --bra expr
			 "000";

end Behavioral;
