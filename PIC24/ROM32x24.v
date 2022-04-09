----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:31 03/28/2021 
-- Design Name: 
-- Module Name:    ROM32x24 - Behavioral 
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

entity ROM32x24 is
    Port ( Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           Data : out  STD_LOGIC_VECTOR (23 downto 0));
end ROM32x24;

architecture Behavioral of ROM32x24 is

type tROM is array (0 to 31) of std_logic_vector(23 downto 0);

constant ROM : tROM :=(
               --test
             	x"808101",   --  MOV 0x1020, W1	  mov     0x1020, w1  ;INW0=aaab
					x"808112",   --  MOV 0x1022, W2    mov     0x1022, w2  ;INW1=5555
					x"408182",   --  ADD W1, W2, W3 	  add     w1,w2,w3    	 					
					x"508202",   --  SUB W1, W2, W4    sub     w1,w2,w4             
					x"608282",   --  AND W1, W2, W5    and     w1,w2,w5               
					x"708302",   --  IOR W1, W2, W6    ior     w1,w2,w6     
					x"EA0381",   --  NEG W1, W7        neg     w1,w7
					x"D00401",   --  SL W1, W8         sl      w1,w8 
					x"888121",   --  MOV W1, 0x1024    mov     w1, 0x1024    
					x"888122",   --  MOV W2, 0x1024    mov     w2, 0x1024     
					x"888123",   --  MOV W3, 0x1024    mov     w3, 0x1024
					x"888124",   --  MOV W4, 0x1024    mov     w4, 0x1024
					x"888125",   --  MOV W5, 0x1024    mov     w5, 0x1024
					x"888126",   --  MOV W6, 0x1024    mov     w6, 0x1024
					x"32FFF1",   --  BRA Z, 0x2B8      bra     Z,  LOOP
					x"37FFF0",   --  BRA 0x2B8         bra     LOOP
					x"000000",
					x"000000",
					x"000000",
					x"000000",
					x"000000",
					x"000000",
					x"000000",
					x"000000",
					x"000000",
					x"000000",
					x"000000",
					x"000000",
					x"000000",
					x"000000",
					x"000000",
					x"000000"
				  );
				

begin

Data <= ROM(conv_integer(Addr));

end Behavioral;

					

