-- Mateusz Gabryel 181329 EiT 3
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use std.standard.all;

ENTITY top IS
    PORT ( sw_i : in STD_LOGIC_VECTOR (3 downto 0);
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
           );
END top;

ARCHITECTURE Behavioral OF top IS

BEGIN
    -- podanie 1 skutkuje wygaszeniem (AN3 -1, AN2 -1, AN1 -1)
    -- podanie 0 skutkuje dzialaniem (ANO -0)
    led7_an_o(3) <= '1';
    led7_an_o(2) <= '1';
    led7_an_o(1) <= '1';
    led7_an_o(0) <= '0';

PROCESS(sw_i)
variable a: integer:=0;
BEGIN

a:=0;
    for b in 0 to 3 loop
        if(sw_i(b)='1')then
            a:=a+1;
        END if;
    END loop;
    
   -- podanie 1 skutkuje wygaszeniem
   -- podanie 0 skutkuje dzialaniem
if   (a=0) then led7_seg_o <="00000011"; -- cyfra: 0
elsif(a=1) then led7_seg_o <="10011111"; -- cyfra: 1
elsif(a=2) then led7_seg_o <="00100101"; -- cyfra: 2
elsif(a=3) then led7_seg_o <="00001101"; -- cyfra: 3
           else led7_seg_o <="10011001"; -- cyfra: 4

END if;    
END PROCESS;
END Behavioral;