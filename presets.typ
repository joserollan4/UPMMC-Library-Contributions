

// presets

#let exam(
  course: "",
  exam: "",
  sem: "",
  sy: "",
  content
) = {
  import "@preview/swank-tex:0.1.0": *
  import "@preview/cetz:0.2.1"
  set text(font: "New Computer Modern")
  set page(
    margin: (top: 60pt, bottom: 60pt, left: 50pt, right: 50pt),
    paper: "a4",
  )
  set text(size: 13pt)
  set align(top)
  
  set page(background: rotate(30deg,
    text(100pt, fill: rgb("DDDDDD"))[
      *UPMMC* \
      *Library*
    ]
  ))

  grid(columns: (75%,25%), [
  === #course 
#exam
], [
  #align(right)[=== #sem]
  #align(right)[#sy]

])
line(length: 100%)


set text(size: 12pt)
set enum(numbering: "1.")
set par(justify: true)

set math.vec(delim: "[")
set math.mat(delim: "[")

  [#content]
}

#let ender = {
  align(center)[
    \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
  ]
}

#let items(
  type: "1.",
  content
) = {
    set enum(numbering: type)

    content
  
}

#let itemsa(
  content
) = {
    set enum(numbering: "(a)")

    content
}

#let itemsi(
  content
) = {
    set enum(numbering: "i.")

    content
}

#let hfill = h(1fr)

#let hrule = line(length: 100%)


// Objects

#let boxed(content) = block(stroke: 0.5pt, inset: 0.5em)[$display(#content)$]


#let def(x) = box(width: 100%, stroke: 1pt, inset: 1em, radius: 0.5em)[
  *#underline[Definition:]* #x
]

#let thm(n, x) = box(width: 100%, stroke: 1pt, inset: 1em, radius: 0.5em)[
  *#underline[Theorem #n:]* #x
]

#let cor(n, x) = box(width: 100%, stroke: 1pt, inset: 1em, radius: 0.5em)[
  *#underline[Corollary #n:]* #x
]

#let lemma(n, x) = box(width: 100%, stroke: 1pt, inset: 1em, radius: 0.5em)[
  *#underline[Lemma #n:]* #x
]

#let recall(x) = block(width: 100%)[
    #set align(center)
    #box(width: 80%, stroke: (dash: "dashed"), inset: 1em, radius: 0.2em)[ #set align(left)
      *#underline[Recall:]* #x
    ]
]

#let proof(x) = box(width: 100%, stroke: 0.75pt, inset: 1em, radius: 0.5em)[
  #underline[_Proof_:] #x
]

#let cont(x) = box(width: 100%, stroke: 0.75pt, inset: 1em, radius: 0.5em)[
  #x
]

#let points(x) = [#hfill #if x == 1 [_(#x point)_] else [_(#x points)_]]

#let pts(x) = [#points(x)]



// Functions 

#let num_eq(content, params) = math.equation(
  block: true,
  numbering: (param) => "(" + str(params) + ")",
  content
)

#let answer(x) = block(stroke: 0.75pt, radius: 5pt, inset: 10pt, width: 100%)[#x]

#let blank(n) = {
  for i in range(n) [\_]
}

// General Math

#let contra = $arrow.zigzag$
#let null = $cancel(circle)$
#let varphi = $phi.alt$
#let infty = $infinity$
#let neq = $eq.not$
#let subs = $subset.eq$
#let  nsub = $subset.eq.not$

#let sups = $supset.eq$
#let disp(x) = $display(#x)$
#let alp = $alpha$
#let gamma = $gamma$
#let eps = $epsilon$
#let vareps = $epsilon.alt$
#let sp = $space$
#let sp6 = $space.sixth$
#let sp4 = $space.quad$
#let power = $cal(P)$
#let sym = $approx$

#let gif(x) = $lr(bracket.double.l #x bracket.double.r)$
#let int = $integral$


// Set Theory
#let domby = $prec.eq$

#let domi = $succ.eq$

// Real Analysis

#let an = $a_n$
#let bn = $b_n$
#let cn = $c_n$

#let series(x) = $display(sum_(n=#x)^infinity)$ 

#let series1 = $display(sum_(n=1)^infinity)$ 

#let series0 = $display(sum_(n=0)^infinity)$ 

#let pseries(p) = $display(sum_(n=1)^infinity 1/(n^#p))$ 

#let hseries = $display(sum_(n=1)^infinity 1/n)$ 

#let seq(x) = ${#x}_(n=1)^infty$

#let limtoinf = $display(lim_(n -> infty))$

#let limsuptoinf = $display((lim sup)_(n -> infty))$

#let (a1, a2, a3, a0, an) = ($a_1$, $a_2$, $a_3$, $a_0$, $a_n$)

#let (b1, b2, b3, b0, bn) = ($b_1$, $b_2$, $b_3$, $b_0$, $b_n$)


#let (c1, c2, c3, c0, cn) = ($c_1$, $c_2$, $c_3$, $c_0$, $c_n$)

#let (x1, x2, x3, x0, xn) = ($x_1$, $x_2$, $x_3$, $x_0$, $x_n$)

#let (X1, X2, X3, X0, Xn) = ($X_1$, $X_2$, $X_3$, $X_0$, $X_n$)

#let (Y1, Y2, Y3, Y0, Yn) = ($Y_1$, $Y_2$, $Y_3$, $Y_0$, $Y_n$)

#let (y1, y2, y3, y0, yn) = ($y_1$, $y_2$, $y_3$, $y_0$, $y_n$)

#let (z1, z2, z3, z0, zn) = ($z_1$, $z_2$, $z_3$, $z_0$, $z_n$)





// Differential Equations


#let dd = $dif$
#let dx = $dd x$
#let dy = $dd y$
#let dt = $dd t$
#let ddx = $display(dd/(dd x))$
#let ddt = $display(dd/(dd t))$
#let dydx = $display((dd y)/(dd x))$
#let dxdt = $display((dd x)/(dd t))$
#let dydt = $display((dd y)/(dd t))$
#let deriv(y, x) = $display((dd #y)/(dd #x))$



// Real Analysis

#let pderiv(y, x) = $disp(frac(partial #y, partial #x))$


// Linear Algebra

#set math.vec(delim: "[")

#set math.mat(delim: "[")

#let MM(n, m, S) = $cal(M)_(#n times #m) (#S)$

#let MMM(n, S) = $cal(M)_(#n) (#S)$

#let inverse(x) = $#x^(-1)$

#let adj = $op("adj")$

#let detmat = math.mat.with(delim: "|")




// Abtract Algebra

#let GL = $op("GL")$

#let SL = $op("SL")$

#let GL2R = $GL(2, RR)$

#let SL2R = $SL(2, RR)$

#let group(x, y) = $lr(angle.l #x, #y angle.r)$

#let ring(x, y, z) = $lr(angle.l #x, #y, #z angle.r)$

#let irr = $op("irr")$

#let GF = $op("GF")$

#let Gal = $op("Gal")$



#let ideal(x) = $lr(angle.l #x angle.r)$

#let iso = $tilde.equiv$

#let cyc(..x) = $display(mat(#x.pos(), delim: "("))$

#let span(..x) = $display(lr(angle.l #x.pos().join(", ") angle.r))$

#let normal = $lt.tri.eq$

#let Aut = $op("Aut", limits: #true)$

#let gal(E, F) = $Aut_F E$ // Galois Group

#let Ker = $op("Ker")$



// Topology

#let homeo = $tilde.equiv$

#let topo = $cal(T)$

#let basis = $cal(B)$

#let dunion = $union.sq$ // disjoin union

#let Union = $display(union.big)$

#let Sect = $display(sect.big)$

#let Cl = $op("Cl")$

#let cl(x) = $overline(#x)$

#let cl(x) = $overline(#x)$

#let Int = $op("Int")$

#let Bd = $op("Bd")$

#let cover = $cal(C)$




// Complex Analysis

#let conj(x) = $overline(#x)$

#let Res = $op("Res")$

#let Re = $op("Re")$

#let Im = $op("Im")$

#let bd = $partial$

#let z0 = $z_0$

#let suminf = $disp(sum_(n=-infty)^infty)$

#let Log = $op("Log")$

#let uniform = $arrows$

#let dz = $d z $

#let contint = $disp(integral.cont)$

#let intccw = $disp(integral.cont.ccw)$



// Mathematical Statistics
#let Var = $op("Var")$
#let Cov = $op("Cov")$
#let Poi = $op("Poi")$
#let Bi = $op("Bi")$


// Actuarial Science

#let angl(x) =  $overline(#x|)$
#let over(x) = $ limits(#x)^(#line(start: (-0.1em,-0.18em),end: (0.97em,-0.18em), stroke: 0.06em) #h(0em) \ #v(-1em) ) $

#let angln =  $over(n|)$
#let ddot(x) = $dot.double(#x)$
#let a = $dot.double(a)$
#let ddot(x) = $dot.double(#x)$
#let addot = $ddot(a)$
#let sddot = $ddot(s)$



// Statistics and Probability

#let mean(x) = $overline(#x)$

#let meanx = $overline(X)$

#let var = $sigma^2$

#let Exp = $op("Exp")$



// Projective Geometry

#let lines = $Lambda$




// Number Theory

#let lcm = $op("lcm")$
#let pmod(m) = $sp (mod #m)$
#let ord = $op("ord", limits: #true)$

