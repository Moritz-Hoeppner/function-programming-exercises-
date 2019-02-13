;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Task 3 |) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define a (lambda[n](+(* n n) 1)))

(define b (lambda [n] ((+(* 0.5 (* n n))3))))

(define c (lambda [n] (- 2 (/ 1 n))))