----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:52:51 03/27/2022 
-- Design Name: 
-- Module Name:    principal - Behavioral 
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
use work.costal.all;


entity principal is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           f1 : out  STD_LOGIC;
           f2 : out  STD_LOGIC);
end principal;

architecture Behavioral of principal is

signal aux1, aux2, aux3, aux4,aux5: std_logic;

begin

	u1 : c_inv port map (x=>a,y=>aux1);

	u2 : c_and port map (a => aux1, b => b, c => aux2);

	u3 : c_xor port map(a => aux1, b => d, c => aux3);

	u4 : c_or port map(x => aux2, y => c, z => aux4);

	u5 : c_and port map(a => aux4, b => aux3, c => aux5);

	u6 : c_nand port map(a => aux3 ,b => c ,c => d ,d => f2);

	u7 : c_or port map (x => aux2, y => aux5, z => f1);
	

end Behavioral;

