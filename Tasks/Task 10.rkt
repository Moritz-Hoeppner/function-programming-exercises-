;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Task 10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;defining constants
(define taxBracketI 5000)
(define taxBracketII 10000)
(define taxBracketIII 100000)

(define taxRateI 15)
(define taxRateII 29)
(define taxRateIII 64)

;;function to calcualte income before tax
(define nettoeinkommen (lambda[hourlyWage hoursWorked] (totalIncomeAfterTax(* hourlyWage hoursWorked))))

;;function total income after Tax
(define totalIncomeAfterTax (lambda [income] (- income (taxForIncome income))))

;; returns the tax for a certain taxbracket

 (define taxbracket
       (lambda [income]
          (cond
            [(< income 5000)  0]
            [(< income 10000)  15]
            [(< income 100000)  29]
            [else  64])))

(define taxbracketPercentage (lambda
                                 [income]
                               (/(taxbracket income)100)))

(define taxForIncome (lambda [income]  (cond
            [(< income 5000)  0]
            [(< income 10000)  (* (taxbracketPercentage income) (- income 5000))]
            [(< income 100000) (+(* (taxbracketPercentage income) (- income 10000))750)]
            [else  (+(* (taxbracketPercentage income) (- income 100000))26850)])))


(= (nettoeinkommen 1 5001) 5000.85)
(= (nettoeinkommen 1 10001) 9250.71)
(= (nettoeinkommen 1 100001) 73150.36)