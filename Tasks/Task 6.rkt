;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Task 6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Formula to calculate the profit of a cineman ownerfor one movie

(define profit (lambda [visitors] (- (* visitors 500)(+ 2000(* visitors 50)))))


"Running Test"
(=(profit 10) 2500)  ;;=> true
(=(profit 1) -1550)  ;;=> true