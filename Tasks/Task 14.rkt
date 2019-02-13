;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Task 14|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))

;; Festangestellter ist ein Mitarbeiter
;; (define-struct Festangestellter [Name Grundgehalt Arbeitsstunden-Monat])
;; wobei Name Grundgehalt Arbeitsstunden-Monat das sind was sie sind
(define-struct Festangestellter [Name Grundgehalt Arbeitsstunden-Monat])


;; Werksstundent ist ein Mitarbeiter
;; (define-struct Werksstundent [Name Stundenlohn Arbeitsstunden-Monat])
;; wobei Name Stundenlohn Arbeitsstunden-Monat das sind was sie sind
(define-struct Werksstundent [Name Stundenlohn Arbeitsstunden-Monat])

;;Sollstunden
(define Sollarbeitszeit-Festangestellter-Monat  160)

;;Vergütung Überstunden als Bruch
(define Vergütung-Überstunden 1.25)

;;Funktion Berechnung von Lohn Festangestellter
(define Bruttomonatslohn-Festangestellter (lambda [Festangestellter] (cond [(>(Festangestellter-Arbeitsstunden-Monat Festangestellter) Sollarbeitszeit-Festangestellter-Monat)
                                                                                                                                (+
                                                                                                                                 (*
                                                                                                                                  (*(/ (Festangestellter-Grundgehalt Festangestellter) Sollarbeitszeit-Festangestellter-Monat)Vergütung-Überstunden)
                                                                                                                                  (- (Festangestellter-Arbeitsstunden-Monat Festangestellter) Sollarbeitszeit-Festangestellter-Monat))
                                                                                                                                  (Festangestellter-Grundgehalt Festangestellter))]
                                                                                                                                     [else (Festangestellter-Grundgehalt Festangestellter)]))) 

;;Funktion Berechnung von Lohn Festangestellter
(define Bruttomonatslohn-Werksstundent (lambda [Werksstundent](*  (Werksstundent-Stundenlohn Werksstundent)(Werksstundent-Arbeitsstunden-Monat Werksstundent))))


;;Funktion Berechnung von Lohn Mitarbeiter
(define Bruttomonatslohn-Mitarbeiter (lambda [Arbeitnehmer-Verhältnis] 
                                                                          (cond [(Festangestellter? Arbeitnehmer-Verhältnis) (Bruttomonatslohn-Festangestellter Arbeitnehmer-Verhältnis)]                                                             
                                                                                  [(Werksstundent? Arbeitnehmer-Verhältnis) (Bruttomonatslohn-Werksstundent Arbeitnehmer-Verhältnis)]
                                                                                  [else "Wir haben keine Angestellten in diesem Angestelltenverhältniss"])
                                                                            ))

;;test
(check-expect (Bruttomonatslohn-Mitarbeiter (make-Festangestellter "Moritz" 1200 400)) 3450)
(check-expect (Bruttomonatslohn-Mitarbeiter (make-Festangestellter "Moritz" 1200 150)) 1200)
(check-expect (Bruttomonatslohn-Mitarbeiter (make-Festangestellter "Moritz" 1200 160)) 1200)
(check-expect (Bruttomonatslohn-Mitarbeiter (make-Werksstundent "Moritz" 12 150)) 1800)