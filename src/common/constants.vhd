library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library dcnn;

package Constants is
    constant MEM_Addr_NBits     : integer   := 16;
    constant MEM_Weights_Addr   : integer   := 1000;
end package;