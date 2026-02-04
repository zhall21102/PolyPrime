library ieee;
use std.textio.all;
use ieee.math_real.all;

entity prime_check is
end prime_check;

architecture behaviour of prime_check is
begin
process
    variable l : line;
    variable num : integer;
    variable sqrt : integer;
begin
    write (l, String'("Enter a number"));
    writeline (output, l);
    readline (input, l);
    num := integer'value(l.all);
    deallocate(l);
    sqrt := integer(floor(ieee.math_real.sqrt(real(num))));
    for i in 2 to sqrt loop
        if num mod i = 0 then
            write (l, integer'image(num));
            write (l, String'(" is not prime: "));
            write (l, integer'image(i));
            write (l, String'("*"));
            write (l, integer'image(num / i));
            writeline (output, l);
            wait;
        end if;
    end loop;
            write (l, integer'image(num));
            write (l, String'(" is prime"));
            writeline (output, l);
    wait;
end process;
end behaviour;
