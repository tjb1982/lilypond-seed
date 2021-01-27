\include "./common.ly"

music = {
    \clef "bass"
    \transpose a cis' \repeat unfold 25 { a,8 b, c d e f | g a a, g, f, e, | d, c, b,, a,,4. }
}

First_Movement_Bassoon_Music = \new Voice {
    <<
    \Lattice
    \music
    >>
}