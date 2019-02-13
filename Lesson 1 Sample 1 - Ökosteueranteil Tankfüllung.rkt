;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Lesson 1 Sample 1 - Ökosteueranteil Tankfüllung|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Bestimmung des Ökosteuer einer Tankfüllung berechnen
;; Gegeben ist der
;; Preis für die Tankfüllung: 4500 ct,
;; Preis pro Liter: 150 ct,
;; Ökosteueranteil: 7 cent/liter

(*(/ 4500 150)7)

;; Variablen Deklaration
(define preis-tankfüllung 4500)
(define preis-pro-liter 150)
(* (/ preis-tankfüllung preis-pro-liter)7)

;; Rund /- Eckige /- Geschweifte Klammern dürfen in Racket austauschend genutzt werden

;; deklaration einer Lambdafunktion die nicht aufgerufen wird

;; lambda steht für eine Funktion in Racket die Funtionen erzeugt
;; Schwarz makiert da die Funktion nie aufgerufen wird
(lambda [preis-tankfüllung preis-pro-liter]
(* (/ preis-tankfüllung preis-pro-liter)7))

;;deklaration einer Lambdafunktion die direkt aufgerufen wird
((lambda [preis-tankfüllung preis-pro-liter]
(* (/ preis-tankfüllung preis-pro-liter)7)) 4500 150)

;;define zur nutzung zum benennen von Funktionen, Variabelen 
(define steuer-berechnen (lambda [preis-tankfüllung preis-pro-liter]
(* (/ preis-tankfüllung preis-pro-liter)7)))

(steuer-berechnen 4500 150)