;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname area) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Number -> Number
;; given lenght of one side of squre, produces the area of the square

;(define (area s) 0)

(check-expect (area 3) 9)
(check-expect (area 3.2) (* 3.2 3.2))

; (define (area s) (... s))

(define (area s) (* s s))





       

