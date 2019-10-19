Library IEEE;
USE IEEE.Std_logic_1164.all;

entity r_edge_d_flip_flop_sync is
port(
q:out std_logic;
d:in std_logic;
sync:in std_logic;
clk:in std_logic
);
end r_edge_d_flip_flop_sync;

architecture yigithan of r_edge_d_flip_flop_sync is
begin
process(clk)
begin 
if (rising_edge(clk)) then
if (sync='1') then
q<='0';
else
q<=d;
end if;
end if;
end process;
end yigithan;

