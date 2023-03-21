#lang racket
(require txexpr pollen/setup)
(provide (all-defined-out))

(module setup racket/base
  (provide (all-defined-out))
  (define poly-targets '(html tex pdf)))

(define first_name "Mohamed Amine")

(define last_name "LEGHERABA")

(define email "mlegheraba@protonmail.com")

(define number "0630829000")

(define age "27")

(define address "92 bis rue Rouget de Lisle")

(define city "Bezons")

(define country "France")

(define github_link "https://github.com/MohamedLEGH")

(define title "Doctorant en informatique")

(define subtitle "Sujets de recherche: apprentissage fédéré, blockchain, intelligence artificielle, réseaux pair à pair")

;(define (info) ;; need to append all of this
;	(get-age)
;	(get-address)
;	(get-number)
;	(get-email)
;	(get-github)
;	(get-languages)
;)

;  (case (current-poly-target)

(define (main_title . elements)
  (case (current-poly-target)
    [(tex) (apply string-append `("\\bfseries{\\huge{" ,@elements "}}"))]
    [else (txexpr 'h1 empty elements)]))
 
(define (second_title . elements)
  (case (current-poly-target)
    [(tex) (apply string-append `("\\large{" ,@elements "}"))]
    [else (txexpr 'h2 empty elements)]))

(define (combined_title title1 title2)
  (case (current-poly-target)
    [(tex) (string-append "\\title{" title1 "\\\\[0.50cm]" title2 "}")]
    [else (txexpr 'h1 empty title1)]))
 
