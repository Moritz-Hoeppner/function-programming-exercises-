;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Task 8|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;function to calcualte the Volume of a cylinder

(define volumeCylinder (lambda [height radius] (* pi height (expt radius 2))))

;;function to cacluate the surface area of a cylinder
(define surfaceAreaCyclinder (lambda [height radius] (+(* 2 pi radius height)(* 2 pi (expt radius 2)))))

;;function to calculate The Shell Surface
(define shellSurface (lambda [height radius] (* 2 pi radius height)))

;;function calculate the outer radius
(define outerRadius(lambda [innerRadius wallThickness] (+ innerRadius wallThickness))) 

;; function to calculat the are of a circle
(define circleArea (lambda [radius] (* pi (expt radius 2))))

;;function to caluclate the area of sides of a pipe
(define sidesPipe (lambda [radius wallThickness] (*(- (circleArea(outerRadius radius wallThickness)) (circleArea radius))2)))

;;function to cacluate the surface area of a pipe
(define surfaceAreaPipe (lambda [innerRadius wallThickness length] (
                                                                    +(shellSurface innerRadius length)
                                                                     (shellSurface (outerRadius innerRadius wallThickness) length)
                                                                     (sidesPipe innerRadius wallThickness))))

;;test
(=(round(shellSurface 1 2)) 13)

(=(round(sidesPipe 1 2) 12)