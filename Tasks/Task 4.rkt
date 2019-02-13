;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Task 4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;part a

(define volume-quader (lambda[a b c] (* a b c)))

;;part b
;; Keep in mind to use apporpiate units

(define timeTillCrash (lambda [distanceOfTrains velocityTrainOne velocityTrainTwo] (/ distanceOfTrains (+ velocityTrainOne velocityTrainTwo) )))

;;part c

(define totalRent (lambda [ amountStations](* 500(expt  2 (- amountStations 1)))))

"Runnning test"
(=(volume-quader 4 5 6) 120)
(=(timeTillCrash 1000 10 15) 40)
(=(totalRent 1) 500)