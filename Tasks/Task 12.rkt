;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Task 12|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Aufgabe 1
;; time-since-midnight ist ein Wert
;; (time-since-midnight hours minutes seconds)
;; wobei hours stunden sind, minutes minuten und seconds sekunden beschreiben

(define-struct time-since-midnight [hours minutes seconds])

(define seconds-since-midnight (lambda [time-since-midnight] (+(* (time-since-midnight-hours time-since-midnight) 60 60)(* (time-since-midnight-minutes time-since-midnight) 60)(time-since-midnight-seconds time-since-midnight))))



(check-expect (seconds-since-midnight (make-time-since-midnight 3 40 12)) 13212)
(check-expect (seconds-since-midnight (make-time-since-midnight 0 0 1)) 1)


;;Aufgabe 2

;;pint ist ein Wert
;;(point x y)
;; wobei x die x koordiante und y die y Koordiante ist

(define-struct point [x y])


;;circle ist ein Wert
;;(circle radius centerPoint)
;; wobei radius der Radius ist und centerPoint der Mittelpunk des Kreises

(define-struct circle [radius point])


;;function distance from center
(define distance-between-points
    (lambda [a b]
      (sqrt
       (+ (sqr (+(point-x a)(point-x b)))
          (sqr (+(point-y a)(point-y b)))))))

;;function to check if a point is within a circle
(define check-if-in-circle (lambda [circle point-to-check] (<=
                                                            (distance-between-points (circle-point circle) point-to-check)
                                                            (circle-radius circle))))

;;test
(check-expect (check-if-in-circle (make-circle 2 (make-point 0 0))(make-point 1 0)) true)
(check-expect (check-if-in-circle (make-circle 2 (make-point 0 0))(make-point 1.5 0)) true)
(check-expect (check-if-in-circle (make-circle 2 (make-point 0 0))(make-point 2.1 0)) false)