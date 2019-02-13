;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Task 5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;calculating the total rent for the train station
dependent on the amount of train stations a player owns
(define totalRent (lambda [ amountStations](* 500(expt  2 (- amountStations 1)))))