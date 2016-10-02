#lang racket
(for ([_ (in-range
           (string->number
             (read-line)))])
     (displayln "Hello World"))

;; Alternative solution
;(displayln
;  (string-join
;    (map (λ (_) "Hello World")
;         (stream->list
;           (in-range (string->number
;                       (read-line)))))
;    "\n"))
