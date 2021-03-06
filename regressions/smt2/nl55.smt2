
; Copyright (c) 2015 Microsoft Corporation
(echo "ABSolver benchmark")
(set-option :produce-models true)
(declare-const a Int)
(declare-const b Int)
(declare-const c Int)
(declare-const d Int)
(declare-const e Int)
(declare-const f Int)
(assert 
  (and
   (or (not (= (- b e) 0))
       (not (= (- a d) 0))
       (not (= (- c f) 0))
       (not (= (- (* b c) a) 0))
       (= (- (* e f) d) 0))
   (or (not (= (- b e) 0))
       (not (= (- a d) 0))
       (not (= (- c f) 0))
       (= (- (* b c) a) 0)
       (not (= (- (* e f) d) 0)))
   (>= a 0)
   (>= b 0)
   (>= c 0)
   (>= d 0)
   (>= e 0)
   (>= f 0)
   ))
(check-sat)

(reset)
(set-logic QF_NIA)
(set-option :auto-config true)
(set-option :produce-models true)
(declare-const a Int)
(declare-const b Int)
(declare-const c Int)
(declare-const d Int)
(declare-const e Int)
(declare-const f Int)
(assert 
  (and
   (or (not (= (- b e) 0))
       (not (= (- a d) 0))
       (not (= (- c f) 0))
       (not (= (- (* b c) a) 0))
       (= (- (* e f) d) 0))
   (or (not (= (- b e) 0))
       (not (= (- a d) 0))
       (not (= (- c f) 0))
       (= (- (* b c) a) 0)
       (not (= (- (* e f) d) 0)))
   (>= a 0)
   (>= b 0)
   (>= c 0)
   (>= d 0)
   (>= e 0)
   (>= f 0)
   ))
(check-sat)


