----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:09:22 03/28/2021 
-- Design Name: 
-- Module Name:    PC_Update - Behavioral 
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

entity PC_Update is
    Port (
	        Offset : in  STD_LOGIC_VECTOR (4 downto 0);
			  Branch : in STD_LOGIC_VECTOR (2 downto 0);
	        PC : in  STD_LOGIC_VECTOR (5 downto 0);
			  ZF: in STD_LOGIC;
			  OVF: in STD_LOGIC;
			  CF: in STD_LOGIC;
			  NF: in STD_LOGIC;
           New_PC : out  STD_LOGIC_VECTOR (5 downto 0));
end PC_Update;

architecture Behavioral of PC_Update is

signal depl : std_logic_vector(5 downto 0);


begin


depl(5 downto 1) <= Offset(4 downto 0);
depl(0) <= '0';


New_PC <= PC + 2 + depl when (Branch = b"001" and ZF = '1') or (Branch = b"010" and OVF = '1') or 
										(Branch = b"011" and CF = '1') or (Branch = b"100" and NF = '1') or (Branch = b"101") else
			 PC + 2;

end Behavioral;

