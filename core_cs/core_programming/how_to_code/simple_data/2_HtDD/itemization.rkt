;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname itemization) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Data definitons

;; Countdown is one of:
;;  - false
;;  - Natural[1, 10]
;;  - "complete"

;; intep.
;;   false           means countdonw has not yet started
;;   Natural[1, 10]  means countdown is running and how many seconds left
;;   "complete"      means countdonw is over


(define CD1 false)
(define CD2 10)   ;just started running
(define CD3 3)    ;almost over
(define CD4 "complete")


(define (fn-for-countdown c)
  (cond [(false? c) (...)]
        [(and (number? c) (<= 1 c) (<= c 10)) (... c)]
        [else (...)]))

;; Template rules used
;;   - one of: 3 cases
;;   - atomic distinct: false
;;   - atomic non-distinct: Natural[1, 10]
;;   - atomic distinct: "complete"


;; Functions

;; Countdonw -> Image
;; Produce nice image of current of countdown

(check-expect (countdown-to-image false) (square 0 "solid" "white"))
(check-expect (countdown-to-image 5) (text (number->string 5) 24 "black"))
(check-expect (countdown-to-image "complete") (text "Happy New Year!" 24 "red"))

; (define (countdown-to-image c) (square 0 "solid" "white")) ;stub


; <use template form CountDown>

(define (countdown-to-image c)
  (cond [(false? c) (square 0 "solid" "white")]
        [(and (number? c) (<= 1 c) (<= c 10)) (text (number->string c) 24 "black")]
        [else (text "Happy New Year!" 24 "red")]))