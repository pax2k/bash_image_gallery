#!/bin/bash
FILES=img/*

echo "<!DOCTYPE html>"
echo "<html lang='en-us'>"
echo "<head>"
echo "	<meta charset='utf-8'>"
echo "	<title>Images</title>"
echo "	<meta name='viewport' content='width=device-width, initial-scale=1'>"
echo "	<link rel='shortcut icon' href='../framework/fav.png'>"
echo "	<link rel='stylesheet' href='../css/screen.css'>"
echo "	<link rel='stylesheet' href='../css/lightbox.css'>"
echo "</head>"
echo ""
echo "<body>"
echo "	<section>"
echo "		<div class='container'>"
echo "			<div class='image-row'>"
echo "				<div class='image-set'>"

for f in $FILES
do
	if [[ "$f" == *jpg ]] || [[ "$f" == *png ]]
        then
        echo "<a class='example-image-link' href='${f:4}' data-lightbox='example-set' data-title=''><img class='example-image' src='${f:4}' alt=''/></a>"
    fi
done

echo "				</div>"
echo "			</div>"
echo "		</div>"
echo " </section>"
echo " <script src='../js/jquery-1.11.0.min.js'></script>"
echo " <script src='../js/lightbox.min.js'></script>"
echo " </body>"
echo " </html>"


