rm -rf *.pdf
rm -rf *.svg
rm -rf *.png

for i in *.tex; do
    pdflatex $i > /dev/null;
    filename="${i%.*}";
    pdf2svg ${filename}.pdf ${filename}.svg;
done