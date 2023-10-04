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
(define spaced_number "06 30 82 90 00")

(define age "28")

(define address "92 bis rue Rouget de Lisle")

(define city "Bezons")

(define country "France")

(define full_address (string-append address ", " city ", " country))

(define github_link "https://github.com/MohamedLEGH")

(define title "Doctorant en Informatique")

(define subtitle "Sujets de recherche: apprentissage fédéré, intelligence artificielle, réseaux pair à pair")

;(define (info) ;; need to append all of this
;	(get-age)
;	(get-address)
;	(get-number)
;	(get-email)
;	(get-github)
;	(get-languages)
;)

;  (case (current-poly-target)

(define (bf_text . elements)
  (case (current-poly-target)
    [(tex) (apply string-append `("\\textbf{" ,@elements "}"))]
    [else (txexpr 'b empty elements)]))

(define (main_title . elements)
  (case (current-poly-target)
    [(tex) (apply string-append `("\\huge{" ,@elements "}"))]
    [else (txexpr 'h1 empty elements)]))
 
(define (second_title . elements)
  (case (current-poly-target)
    [(tex) (apply string-append `("\\large{" ,@elements "}"))]
    [else (txexpr 'h2 empty elements)]))

(define (combined_title title1 title2)
  (case (current-poly-target)
    [(tex) (string-append "\\title{" title1 "\\\\[0.50cm]" title2 "}")]
    [else (txexpr 'h1 empty title1)]))
 
(define (main_name . elements)
  (case (current-poly-target)
    [(tex) (apply string-append `("\\Large{" ,@elements "}"))]
    [else (txexpr 'h1 empty elements)]))

(define (link href . elements)
  (case (current-poly-target)
    [(tex) (apply string-append `("\\href{" ,href "}" "{" ,@elements "}"))]
    [else `(a ((href ,href)) ,@elements)]))

(define (mail_link link_ref)
    (string-append "mailto:" link_ref))

(define (tel_link link_ref)
    (string-append "tel:" link_ref))

(define (image src . elements)
  (case (current-poly-target)
    [(tex) (apply string-append `("\\includegraphics[" ,@elements "]" "{" ,src "}"))]
    [else `(img ,src ,@elements)]))
