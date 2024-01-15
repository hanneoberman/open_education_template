@ECHO off
ECHO Compiling index and syllabus...
ECHO Ensure you have the R packages dplyr and readxl installed!
START /B /WAIT quarto render syllabus.qmd --to html --quiet & ^
START /B /WAIT quarto render syllabus.qmd --to pdf --quiet & ^
START /B /WAIT quarto render index.qmd --quiet
ECHO all done, cleaning up.
TIMEOUT /T 3