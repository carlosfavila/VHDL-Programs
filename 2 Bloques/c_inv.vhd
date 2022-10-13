----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:29:30 03/27/2022 
-- Design Name: 
-- Module Name:    c_inv - Behavioral 
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


entity c_inv is
    Port ( x : in  STD_LOGIC;
           y : out  STD_LOGIC);
end c_inv;

architecture Behavioral of c_inv is

begin
	y <= not x;

end Behavioral;

