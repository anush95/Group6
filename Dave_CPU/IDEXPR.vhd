library ieee;
use ieee.std_logic_1164.all;

entity IDEXPR is
port(clk, RegDst_in, ALUSrc_in, Branch_in, MemRead_in, MemWrite_in, RegWrite_in, MemToReg_in :in std_logic;
     ALUOp_in: in std_logic_vector(1 downto 0);
     Address_in, Instruction_in, ReadData1_in, ReadData2_in:in std_logic_vector(31 downto 0);
     RegDst_out, ALUSrc_out, Branch_out, MemRead_out, MemWrite_out, RegWrite_out, MemToReg_out: out std_logic;
     ALUOp_out: out std_logic_vector(1 downto 0);
     Address_out, Instruction_out, ReadData1_out, ReadData2_out: out std_logic_vector(31 downto 0));
end IDEXPR;
-- Did not use Provided Entity Description due to it not matching up with Control Output
architecture beh of IDEXPR is
  signal RegDst, ALUSrc, Branch, MemRead, MemWrite, RegWrite, MemToReg: std_logic := '0';
  signal ALUOp: std_logic_vector(1 downto 0) := "00";
  signal Address, Instruction, ReadData1, ReadData2: std_logic_vector(31 downto 0) := X"00000000";
begin
  RegDst_out <= RegDst;
  ALUSrc_out <= ALUSrc;
  Branch_out <= Branch;
  MemRead_out <= MemRead;
  MemWrite_out <= MemWrite;
  RegWrite_out <= RegWrite;
  MemToReg_out <= MemToReg;
  ALUOp_out <= ALUOp;
  Address_out <= Address;
  Instruction_out <= Instruction;
  ReadData1_out <= ReadData1;
  ReadData2_out <= ReadData2;
process(clk)
begin
  if rising_edge(clk) then
    RegDst <= RegDst_in;
    ALUSrc <= ALUSrc_in;
    Branch <= Branch_in;
    MemRead <= MemRead_in;
    MemWrite <= MemWrite_in;
    RegWrite <= RegWrite_in;
    MemToReg <= MemToReg_in;
    ALUOp <= ALUOp_in;
    Address <= Address_in;
    Instruction <= Instruction_in;
    ReadData1 <= ReadData1_in;
    ReadData2 <= ReadData2_in;
  end if;
end process;
end beh;