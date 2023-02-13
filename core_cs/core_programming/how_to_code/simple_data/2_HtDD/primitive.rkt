;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname primitive) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Data definitions

;; CityName is String
;; interp. the name of a city

(define CN1 "Bostom")
(define CN2 "Vancouver")

(define (fn-for-city-name cn)
  (... cn))

;; Template rules used:
;;   atomic non-disinct: String


;; Functions:

;; CityName -> Boolean
;; Produce true if the given city is Hogsmede

(check-expect (best? "Boston") false)
(check-expect (best? "Hogsmede") true)

; (define (best? cn) false) ;stub

; took template from CityName

(define (best? cn)
  (string=? cn "Hogsmede"))

