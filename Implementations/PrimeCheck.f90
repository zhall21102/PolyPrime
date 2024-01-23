program hello
integer(kind = 16) :: num, i
implicit = No
print *, 'Enter a number'
!read *, num
num = 2999622427590709
do i = 2, int(sqrt(real(num)) + 1)
    if (modulo(num,i) == 0) then
        WRITE(*,  '( I0, " is not prime: ", I0, "*", I0 )' )  num, i, num/i
        return
    end if
end do

print  '( I0, " is prime!" )', num
end program hello