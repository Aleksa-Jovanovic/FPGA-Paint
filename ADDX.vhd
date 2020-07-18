library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADDX is

	generic
	(
		size : natural := 16
	);

	port 
	(
		A	: in  std_logic_vector(size-1 downto 0);
		B	: in std_logic_vector(size-1 downto 0);
		C	: out std_logic_vector(size-1 downto 0)

	);

end entity;

architecture rtl of ADDX is
begin

	process (A,B)
	begin
		C <= std_logic_vector(unsigned(A) + unsigned(B));
		
	end process;
end rtl;
