#(load "./instruments.scm")
#(set-instrument-names!
    '(
        ; (flute "Flute" "Fl")
        ; (oboe "Oboe" "Ob")
        ; (clarinet "Clarinet in A" "Cl" "Clarinet")
        (horn "Horn in F" "Hn" "Horn")
        (bassoon "Bassoon" "Bn")
    ))

#(set-default-paper-size "b4")

Common_Main_Indent = 29
Common_Short_Indent = 4

% Returns music expression, removing content tagged with 'score
Common_Part =
    #(define-music-function
        (music)
        (ly:music?)
        #{ \removeWithTag #'score $music #})

% Returns a named staff, removing content tagged with 'part, and any cues
Common_Score_Staff =
    #(define-music-function
        (inst music)
        (symbol? ly:music?)
        #{
            \new Staff \with {
                instrumentName = #(instrument-name inst 'full)
                shortInstrumentName = #(instrument-name inst 'short)
            } \removeWithTag #'part { \killCues $music }
        #})
