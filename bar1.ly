\version "2.18.2"
\include "english.ly"

#(set-default-paper-size "a6")
#(set-global-staff-size 25.2)

melody = \relative c' {
  \override Staff.NoteHead.style = #'baroque

  \clef bass
  \key c \major
  \time 4/2
  r\breve | r | r |  % 4
  r\breve | g1. g2 | g f d f |  % 7
  f a1 g2 ~ | g f e1 | d a'2 d, |  % 10
  a'1 r2 d, | a'4 c2 c,4.\stemUp d8[ e c] \stemNeutral d2 | r4 d a' d4. c8 b2 g4 |  %13
  b2. d2 g,4 r d' | b2 a1 d,2 | d'2. d,4 e2 c |  % 16
  r2 a' c1 | r2 f,2. f2 a4 ~ | a d, a' d2 c8[ b] a2 |  % 19
  r2 c4 c,2 g' d4 | r d' d2. d,4 g d | d1 r |  % 22
  g2 c r4 f, a2 | r4 d,2 d'4 d1 | r\breve |  % 25
  r\breve | r | r |  %28
  r\breve | r | r |  %31
  r\breve | r | r |  %34
  r\breve | r | r |  %37
  r\breve | r | r |  %40
  r2 g, g4 b b2 | r4 g c, g'2 c4 r2 | c2. g4 g1 |  % 43
  r2 g g1 | r2 g g4. a8 b4. c8 | d2. b4 b1 |  % 46
  r\breve | r | r |  % 49
  r\breve | r | r |  % 52
  r\breve | r | r |  % 55
  r\breve | r | r |  % 58
  r\breve | r | r |  % 61
  r\breve | r | r |  % 64
  r\breve | r1 g | g1. g2 |  % 67
  g1 r | r\breve | r1 g |  % 70
  g2 g c,4 e2 g4 | g c2 c4 c1 | r2 c,4 c2 c4 r a' ~ |  % 73
  a4 a a2 r1 | b4. b8 b2 r g | g2. g4 g2 g |  % 76
  d'1 g,2 r | r\breve | r |  % 79
  r\breve | r | r2 a d, f |  % 82
  g2 g a1 | g2 f e1 | d r |  % 85
  r2 a' a d, | d r r d | d1. g2 |  % 88
  g2 r r1 | r\breve | r\breve |  % 91
  r2 c2. c4 a2 | a a r1 | r2 g g g |  % 94
  r2 g g g | g g r1 | r\breve |  % 97
  r\breve | r | r |  % 100
  r1 r2 e4 g ~ | g d r2 d4 g2 c,4 | f2 c r r4 c4 |  % 103
  f4 f c2 f r | r1 d4 a'4. e8 a4 | a2 r2 r4 a c c |  % 106
  b2 e,4 g2 d4 r g | g e2 g4. f8 e4 r g ~ | g c, g'2 r e ~ |  % 109
  e e e1 ~ | e r | r\breve |  % 112
  r\breve | r | r |  % 115
  r\breve | r | r |  % 118
  r1 r2 g | g d g1 | a b |  % 121
  a r | g2. fs8 e d2 b | b\breve |  % 124
  r1 r2 c | c4 f2 a f4 f2 | c'1 a2 c |  % 127
  r2 f, f4 bf2 d4 ~ | d d bf4. a8 g4 d2 g4 | r2 r4 f f2 r4 g ~ |  % 130
  g8[ c,] e4 r2 r4 d4 d2 | r2 d' b b | g d r1 |  % 133
  r2 d4 g2 e e4 | e4. f8 g2 r4 c2 c4 | r4 b2 g4 g2 r4 g ~ |  % 136
  g4 d'4. g,8 b4. c8 d4 d, g ~ | g8[ a] b2 g4 g1 | g\breve | 

  \bar "|."

}

text = \lyricmode {
  Spem in a -- li -- um nun --
  auam ha - - bu i, ha -- bu --
  i, spem in a -- li - um nun -- quam ha - - -
  - bu -- i spem in a -- li -- um nun -- quam, -
  nun -- quam ha -- bu -- i spem in a -- li um
  num -- quam ha -- bu -- i, spem in a -- li -- um
  nun -- quam nun -- quam ha -- bu -- i

  prae -- ter in te, De - - us Is -- ra -- el,
  in te, De -- us - - - Is -- ra -- el:

  et o -- mni --
  a et
  o -- mni -- a pec -- ca -- ta ho -- mi -- num, pec -- ca -- ta ho --
  mi -- num, ho -- mi -- num in tri -- bu -- la -- ti --
  o -- ne,
  in tri -- bu --
  la -- ti -- o -- ne di -- mit
  % should have -- here
  tis,
  di mit - tis di mit -
  tis.
  Do -- mi -- ne De -- us, Cre -- a -- tor
  cae -- li et ter -- rae.

  Cra -- a -- tor cae -- li et ter -- rae, cae --
  li et ter -- rae, Cre -- a - - tor cae -- li et
  ter - rae, - Cre -- a -- tor cae - li et ter -- rae, re --
  spi -- ce

  hu -- mi -- li -- ta -- tem no --
  stram, re - - - spi -- ce

  hu -- mi -- li -- ta - tem no - stram,
  re -- spi -- ce hu -- mi - li -- ta - tem no -- stram, no --
  stram no -- stram, re - spi -- ce -
  hu -- mi - li -- ta - tem no -- stram, re -- spi -- ce hu --
  mi - - - - li ta - tem no -- stram.
}

tenref = \relative c' {
  \override Staff.NoteHead.style = #'baroque

  \clef treble
  \key c \major
  \time 4/2
  r1 d'1 ~ | d2 d d d | a c c e ~ |
  e4 d d1 c2
}

bassref = \relative c' {
  \override Staff.NoteHead.style = #'baroque

  \clef treble
  \key c \major
  \time 4/2
  g'1. g2 | g g d f | f a1 g2 |
  f1 <<e g>>

  \clef bass \stemNeutral
  g,1. g2 | g d1 d2 |
  d2 d a c ~ | c d a a | d1 d ~ |
  d2 d d d | a c1 g2 | d' d g,1 ~ | %13
  g\breve | g2 d'1 d2 | d d a c | %16
  c2 d a a | d1 d ~ d2 d d d | %19
  a2 c1 g2 | d' d g,1 | g2 g2. g4 d'2 | %22
  e1 d | g, g2 g | c2. c4 f,1 ~ | %25
  f bf' | a2 f g g | c,1 c2 c | %28
  f1 d2 d | d d g,1 | g2 g c1 | %31
  a2 a a a | e'4 c e2 d f | e2. e4 a,1 | %34
  e'1 a, | g'2 g a a, | a a d1 | %37
  c2 c d2. d4 | g,2 g c c | g1 f'2 f | %40
  g2 g, g g | c1. g2 | c1 c ~ | %43
  c g | g\breve ~ | g | %46
  d'2 e d d ~ | d a c c | g g4 g d'2 c | %49
  b4 g2. d'2 e | d d1 a2 | c c g d' | %52
  d2 f c g | bf' f1 c2 ~ | c g b a | %55
  c1 g2 d' ~ | d f c g' | bf f1 c2 ~ | %58
  c2 g b a | c1 g | d'2 c b4 g2. | % 61
  d'2 e d d ~ | d a c c | g1 d'2 c | %64
  d4 d g,2 d'1 | g,\breve | e'2 c c1 ~ | %67
  c1 c'2 c | a f c'2. c4 | g1 g, | %70
  c1. c2 | c\breve | c2 c a f | %73
  a1 c | g r2 g | g g c c | %76
  d1 c2 b | a2. b4 c2 d | g,1 c2 c | %79
  d2 f c e | d a e'1 | a, d2 d | %82
  g,2 b a2. a4 | c2 f,4 f a1 | d2 d g1 | %85
  c,2 a d1 | g,2 g d'1 | g,\breve | %88
  c2 g2. g4 b2 | c b g' g | c, a2. a4 c2 | %91
  d2 a a' a | d, a2. a4 c2 | d g, c g | %94
  c2 g c g | c g c4 a e'2 | d a d a | %97
  d2 a d a | d a d a | d a' d, a | %100
  b4 g c2 g c | g c g c | d c f c | %103
  f,2 c' d a | d a' d, a | d a' d, a | %106
  b4 g c2 g c | g4 c2 g4 c2 g | c1 r2 a ~ |%109
  a2 a a1 ~ | a a'2 a | c e, a g | %112
  a1 e | e2 e a g | a1 e | %115
  e2 e a2. g4 | f2 e d1 | a'2 d, d d | %118
  g2. f4 e2 c4 d | d2 b c g | d'2. c4 b4. a8 g2 | %121
  d'1 r | g,1. g2 | g\breve | %124
  d'2 d1 f,2 | f f a f | f1 f'2 f, | %127
  f2 f bf1 ~ | bf2 g1 bf2 | d1. g,2 | %130
  c2 c d1 | g, d'2 g, | g g c1 | %133
  c2 g c c | c\breve | g\breve ~ | %136
  g\breve ~ | g\breve ~ | g\breve |
}




\header {
  title = "Spem in alium"
  subtitle = "Baritone I"
  tagline = ""
}

\score{
  <<

    \new Staff \with {
      \consists "Ambitus_engraver"
    } {
      \new Voice = "one" {
	\melody
      }
    }
    \new Lyrics \lyricsto "one" \text

    \new Staff
    \with {
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)    
    }
    <<
      
      %{
      \new Voice = "breaker" {
	\time 4/2
	\repeat unfold 46 {
	  s\breve \noBreak
	  s\breve \noBreak
	  s\breve \break
	}
      }
      %}

      \new Voice = "tenref" {
	\stemUp \tieUp
	\tenref
      }
      \new Voice = "bassref" {
	\stemDown
	\bassref
      }
    >>
  >>
  \layout {
    indent = 0\mm
  }
  \midi { }
}