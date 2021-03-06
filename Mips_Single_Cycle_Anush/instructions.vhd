library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Instruction is 
port (
         PC: in std_logic_vector(31 downto 0);
         INST: out std_logic_vector(31 downto 0);
	 ck: in std_logic
	);
end Instruction;

architecture behav of Instruction is 
type inst_array is array(0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
signal inst_mem:inst_array := (
    X"8D150000",
    X"8D160004", 
    X"02B6782A",
    X"11E00002",
    X"02538822",
    X"08000007",
    X"AD11000C",
    X"00000000",
    X"00000000",
    X"00000000", 
    X"00000000",
    X"00000000", 
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",  
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000", 
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000",
    X"00000000", 
    X"00000000",
    X"00000000");

begin 

P1: process(pc, ck)
begin
	if ck = '0' and ck'event then
		INST <= inst_mem(conv_integer(PC(31 downto 2)));
	end if;
	
end process P1;
end behav;