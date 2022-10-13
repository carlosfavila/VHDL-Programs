----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:38:53 03/27/2022 
-- Design Name: 
-- Module Name:    c_nand - Behavioral 
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

entity c_nand is
	 Port ( a : in  STD_LOGIC;
			  b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
			  d : out  STD_LOGIC);
end c_nand;

architecture Behavioral of c_nand is

begin

	d <= not(a and b and c);

end Behavioral;

