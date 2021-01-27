\include "./common.ly"
\include "horn.ly"
\include "bassoon.ly"


first_movement_score_layout = \layout {
    indent = \Common_Main_Indent
    short-indent = \Common_Short_Indent
    \numericTimeSignature
}

first_movement_score_header = \header {
    title = "I."
    instrument = ""
    composer = ""
    subtitle = ""
}

horn_staff = \Common_Score_Staff
    #'horn
    \First_Movement_Horn_Music
bassoon_staff = \Common_Score_Staff
    #'bassoon
    \First_Movement_Bassoon_Music

First_Movement_Score_Transposing_Score = \score {
    \first_movement_score_header
    \first_movement_score_layout

    \new StaffGroup <<
        \transpose c g \horn_staff
        \bassoon_staff
    >>
}

First_Movement_Score_Sounding_Score = \score {
    \first_movement_score_header
    \first_movement_score_layout

    \new StaffGroup <<
        \horn_staff
        \bassoon_staff
    >>
}


First_Movement_Score_Horn_Part = \score {
    \first_movement_score_header
    \Common_Part \transpose c g \First_Movement_Horn_Music
}
First_Movement_Score_Bassoon_Part = \score {
    \first_movement_score_header
    \Common_Part \First_Movement_Bassoon_Music
}
