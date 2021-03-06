library ieee;
use ieee.std_logic_1164.all;
library dcnn;
use dcnn.config.all;

--Tri-states an n bit output based on the enable signal
entity TriState is 
	port(
		inp: in std_logic_vector(n_word-1 downto 0);  --Input signal
		en : in std_logic := '0';                --Buffer enable
		ot : out std_logic_vector(n_word-1 downto 0)  --Output signal
	);
end entity TriState;

architecture DataFlow of TriState is
begin
	ot <= inp when en = '1'
		else (others => 'Z');
end architecture DataFlow;
