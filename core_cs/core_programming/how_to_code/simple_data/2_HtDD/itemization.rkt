;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname itemization) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
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