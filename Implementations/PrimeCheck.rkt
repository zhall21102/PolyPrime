#lang racket
(display "Enter a number\n")
(define num (read-line (current-input-port) 'any))
(set! num (string->number num))
(for ([ i (in-range 2 (sqrt num))])
    (when (= (modulo num i) 0)
        ((display num) (display " is not prime: ") (display i) (display "*") (display (/ num i)) (exit))
    )
)
(display num) (display " is prime")