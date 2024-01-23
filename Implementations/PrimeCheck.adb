with Ada.Text_IO;
with Ada.Numerics.Elementary_Functions;
procedure PrimeCheck is
num : Long_Integer;
div : Long_Integer;
begin
    Ada.Text_IO.Put_Line("Enter a number");
    --num := Long_Integer'Value(Ada.Text_IO.Get_Line);
    num := 2999622427590709;
    for i in 2 .. Long_Integer(Ada.Numerics.Elementary_Functions.sqrt(float(num))) + 1 loop
        if num mod i = 0 then
            div := num / i;
            Ada.Text_IO.Put_Line(num'Image & " is not prime: " & i'Image & "*" & div'Image);
            return;
        end if;
    end loop;
    Ada.Text_IO.Put_Line(num'Image & " is prime");
end PrimeCheck;