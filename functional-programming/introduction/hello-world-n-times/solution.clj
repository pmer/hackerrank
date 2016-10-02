(fn [n]
  (print
    (clojure.string/join "\n"
                         (repeat n "Hello World"))))

;; Alternative solution
;(fn [n]
;  (doall
;    (for [x (repeat n "Hello World")]
;         (println x))))
