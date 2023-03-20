(print (car '((a) (b c) d)))
; (A)
(print (cdr '((a) (b c) d)))
; (b c) d
(print (caddr '(a (b c) d)))
; D
(print (caaddr '((a b) (c d) (e f))))
; E
(print (last ' (a b c d)))
(print (nth '0' (a b c d)))
(print (nthcdr '2' (a b c)))
(print (subst '(a a a) 'a' (a b c)))
(print (cons 'e1' e2))
(print (cons '5' (a b c)))

;; Problema 1
(print (cadddr '(a b c d)))
(print (caaddr '(a (b c) (d e))))
(print (caar (cddadr '(a (b c (d e))))))
(print (car (cadddr '((a) (b) (c) (d) (e)))))
(print (caaar (cadddr '(a (b) ((c)) (((d))) ((((e))))))))
(print (cadr '((((A) B) C) D)))

;; Problema 2
(print (length '(subst 'azi' maine (reverse '(frumoaza zi o este maine)))))

;; Problema 3
(print "Problema 3")
(setq lista '(a b c (d e)))
(print lista)
(setq M 'max)
(print M)
(cons M lista)
(print lista)
(cons lista M)
(print lista)
;(append (list M) (last (cdr lista)))
;(list ' M (cadr lista))
;(append 'lista (list M (last lista)))
;(list (car lista) (cadr lista) (caddr lista) M)

;; Problema 4 ??
(print "Problema 4")
; ((((A) (B) (C)) . B) (E D C) D)
(setq p4_lista_initiala '((A) (B) (C) (D) (E)))
(setq simbol_a (caar p4_lista_initiala)) ; A
(setq simbol_b (caadr p4_lista_initiala)) ; B
(setq simbol_c (caaddr p4_lista_initiala)) ; C
(setq simbol_d (car (cadddr p4_lista_initiala))) ; D
(setq simbol_e (caar (cddddr p4_lista_initiala))) ; E
(setq ls1 (append (list (list (list simbol_a))) (list (list simbol_b) (list simbol_c))))
(setq ls2 (append (list simbol_e) (list simbol_d) (list simbol_c)))
(setq new_ls1 (cons (cons ls1 simbol_b) (cons ls2 (list simbol_d))))
(print ls1)
(print ls2)
(print new_ls1)
;(print (cons (simbol_a) '(c d)))
;(print format '(cons (~A) '(a b c)))
;(print simbol_d)

;; Problema 5
(print "Problema 5")
(setq l1 '((((A) (B)) C) (D) (EF G)))
(print l1)
(print (append (cadr l1) (list (car (nth '1 l1))) (last l1)))
;(print ((cons (nth '3 l1) (nthcdr '2 l1))))
; nth '3 l1 este NIL
; nthcdr '2 l1 este (EF G)

;; Problema 6
(print "Problema 6")
(setq E '(x y ((z) u)) F (last E) G (caar F))
(print (caaddr E))
;(Z)
(setq X '12 Y '14 Z '22 E (- (+ x y) z))
(print (- (+ x y) z))
;4
(setq M (MIN 1 -4 23 56 1) P (* M 10) X (EXPT P 2))
(print (expt p 2))
;1600

;; Problema 7
(print "Problema 7") 
;; (A B C D)
;;Folosind functia SUBST impreuna cu alte functii, obtineti din lista initiala lista:
;; (D B C A)
;;Folosind functia REVERSE impreuna cu alte functii, obtineti din lista initiala, lista:
;; (D A B C)
(setq lista_7 '(A B C D))
(print lista_7)
(setq ls_a (car lista_7))
(setq ls_d (cadddr lista_7))
(setq ls_partial (subst ls_a 'D lista_7))
(setq ls_full (subst  ls_a 'D (cdr lista_7)))
(print (append (list ls_d) ls_full))
;(print lista7_a)

;; reverse
(print "Reverse")
(setq lista_reverse (reverse '(A B C D)))
(print lista_reverse)

(setq listr_d (car lista_reverse))
(setq listr_c (cadr lista_reverse))
(setq listr_a (cadddr lista_reverse))
(setq listr_rc (subst listr_c 'A (cddr lista_reverse)))
(setq listrc_pa2 (append (list listr_a) listr_rc))
(setq listrc_pa22 (append (list listr_d) listrc_pa2))
(print listrc_pa22)

