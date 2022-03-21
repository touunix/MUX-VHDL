# ENG MUX VHDL
###### Description
The circuit serves as a counter of the ones set at the input. Based on the entered 4-bit word, it displays information on the 7-segment display on the FPGA board, the number of "ones" in the input word.

- In a situation when the entered word does not contain any "one", the system signals it on the seven-segment display with the displayed digit "0".
- In a situation when the entered word contains one "one", the system signals it on the seven-segment display with the displayed digit "1".
- In a situation when the entered word contains two "ones", the system signals it on the seven-segment display with the displayed digit "2".
- In a situation when the entered word contains three "ones", the system signals it on the seven-segment display with the displayed digit "3".
- In a situation when the entered word contains four "ones", the system signals it on the seven-segment display with the displayed digit "4".

In the simulation of the system, the switches are initialized to OFF and then switched to ON every 100 ms so that all 16 possible combinations are tested.

The activation of individual segments of the display is done by giving a low state "0" to the output AN0 - AN3. Activating individual segments of a single display is done by giving a low state "0" on the A-G outputs.

###### Simulation results
<img src="https://user-images.githubusercontent.com/79804729/159079415-c9fa2804-d107-4c8f-83cd-00dce574048c.png" width="90%"></img>

###### Verification results
<img src="https://user-images.githubusercontent.com/79804729/159367268-e122129e-63a5-4da2-9af9-8186ed28dd20.gif" width="90%"></img> 

###### Files description
- top.vhd - main VHDL design file with the operation algorithm
- tb.vhd - testbench file
- iup2.xdc - file with constraints for the **Nexys-A7 board (FPGA xc7a100tcsg324-1)**

# PL Układ kombinacyjny VHDL
###### Opis
Układ po zaprogramowaniu, służy jako licznik jedynek ustawionych na wejściu. Na podstawie wprowadzonego słowa 4-bitowego, wyświetla informacje, na siedmiosegmentowym wyświetlaczu znajdującego się na płytce FPGA, liczbie „jedynek” w słowie wejściowym.
- W sytuacji gdy wprowadzone słowo nie zawiera żadnej „jedynki”, układ sygnalizuje to na wyświetlaczu siedmiosegmentowym za pomocą wyświetlanej cyfry „0”.
- W sytuacji gdy wprowadzone słowo zawiera jedną „jedynkę”, układ sygnalizuje to na wyświetlaczu siedmiosegmentowym za pomocą wyświetlanej cyfry „1”.
- W sytuacji gdy wprowadzone słowo zawiera dwie „jedynki”, układ sygnalizuje to na wyświetlaczu siedmiosegmentowym za pomocą wyświetlanej cyfry „2”.
- W sytuacji gdy wprowadzone słowo zawiera trzy „jedynki”, układ sygnalizuje to na wyświetlaczu siedmiosegmentowym za pomocą wyświetlanej cyfry „3”.
- W sytuacji gdy wprowadzone słowo zawiera cztery „jedynki”, układ sygnalizuje to na wyświetlaczu siedmiosegmentowym za pomocą wyświetlanej cyfry „4”.

W przeprowadzonej symulacji układu przełączniki są zainicjalizowane na OFF, a następnie co 100 ms przełączane na ON, tak aby zostały wypróbowane wszystkie 16 możliwych kombinacji.

Aktywowanie poszczególnych segmentów wyświetlacza odbywa się poprzez podanie stanu niskiego „0” na wyjściach AN0 - AN3. Aktywowanie poszczególnych segmentów pojedynczego wyświetlacza odbywa się poprzez podanie stanu niskiego „0” na wyjściach A-G.

###### Wyniki symulacji
<img src="https://user-images.githubusercontent.com/79804729/159079415-c9fa2804-d107-4c8f-83cd-00dce574048c.png" width="90%"></img>

###### Wyniki weryfikacji
<img src="https://user-images.githubusercontent.com/79804729/159367268-e122129e-63a5-4da2-9af9-8186ed28dd20.gif" width="90%"></img>

###### Opis plików
- top.vhd - główny plik projektu VHDL z algorytmem działania
- tb.vhd - plik testbench
- iup2.xdc - plik z ograniczeniami projektowymi dla płytki **Nexys-A7 (układ FPGA xc7a100tcsg324-1)**
