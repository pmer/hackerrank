#lang racket
(displayln
  (string-join
    (map (λ (_) "Hello World")
         (stream->list
           (in-range (string->number
                       (read-line)))))
    "\n"))
