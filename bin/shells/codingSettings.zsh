# to not java .class when running java 
myclasslist () { reply=(${$(ls *.class)%.class}) }
compctl -K myclasslist java

compctl -g '*.java' javac
compctl -g '*.gz' + -g '*(-/)' gunzip gzcat

# *(-*) matches executable files
compctl -g '*(-*)' + -g '*(-/)' strip
compctl -g '*.ps *.eps' + -g '*(-/)' gs ghostview psnup psduplex ps2ascii
compctl -g '*.dvi' + -g '*(-/)' xdvi dvips

compctl -g '*.xpm *.xpm.gz' + -g '*(-/)' xpmroot sxpm pixmap xpmtoppm
compctl -g '*.fig' + -g '*(-/)' xfig
compctl -g '*(-/) .*(-/)' cd

# (^..) is a logical NOT operator
compctl -g '(^(*.o|*.class|*.jar|*.gz|*.gif|*.a|*.Z))' more less vi
compctl -g '*.html' + -g '*(-/)' appletviewer

# http://stackoverflow.com/questions/1128366/to-understand-typeset-for-pythonpath/1128392#1128392
typeset -U PYTHONPATH
