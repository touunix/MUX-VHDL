-- Mateusz Gabryel 181329 EiT 3
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY tb IS
END tb;

ARCHITECTURE Behavioral OF tb IS

COMPONENT top IS
    PORT ( sw_i : in STD_LOGIC_VECTOR (3 downto 0);
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
           );
END COMPONENT top;

   signal sw_i : STD_LOGIC_VECTOR (3 downto 0);
   signal led7_an_o : STD_LOGIC_VECTOR (3 downto 0);
   signal led7_seg_o : STD_LOGIC_VECTOR (7 downto 0);

BEGIN
    uut: top PORT MAP (
          sw_i => sw_i,
          led7_seg_o => led7_seg_o,
          led7_an_o => led7_an_o
        );
        
tb: PROCESS
   BEGIN		  
		sw_i <= "0000"; -- I kombinacja - 0
		wait for 100 ms;
		sw_i <= "0001"; -- II kombinacja - 1
		wait for 100 ms;
		sw_i <= "0010"; -- III kombinacja - 2
		wait for 100 ms;
		sw_i <= "0011"; -- IV kombinacja - 3
		wait for 100 ms;
		sw_i <= "0100"; -- V kombinacja - 4
		wait for 100 ms;
		sw_i <= "0101"; -- VI kombinacja - 5
		wait for 100 ms;
		sw_i <= "0110"; -- VII kombinacja - 6 
		wait for 100 ms;
		sw_i <= "0111"; -- VIII kombinacja - 7
		wait for 100 ms;
		sw_i <= "1000"; -- IX kombinacja - 8
		wait for 100 ms;
		sw_i <= "1001"; -- X kombinacja - 9 
		wait for 100 ms;
		sw_i <= "1010"; -- XI kombinacja - 10
		wait for 100 ms;
		sw_i <= "1011"; -- XII kombinacja - 11
		wait for 100 ms;
		sw_i <= "1100"; -- XIII kombinacja - 12
		wait for 100 ms;
		sw_i <= "1101"; -- XIV kombinacja - 13
		wait for 100 ms;
		sw_i <= "1110"; -- XV kombinacja - 14
		wait for 100 ms;
		sw_i <= "1111"; -- XVI kombinacja - 15
		wait for 100 ms;
      wait;
   END PROCESS;
END Behavioral;