(fn [n]
  (print
    (clojure.string/join "\n"
                         (map (fn [_] "Hello World")
                              (range n)))))
