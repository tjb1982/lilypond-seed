\include "./common.ly"

music = {
    \repeat unfold 25 { a8 b c' d' e' f' | g' a' a g f e | d c b, a,4. }
}

First_Movement_Horn_Music = \new Voice {
    <<
    \Lattice
    \music
    >>
}
