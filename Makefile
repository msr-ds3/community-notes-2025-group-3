#Final report
all: final_report.html

#Download Notes
Data/notes-00000.zip: 
	bash 01_download_notes_data.sh

#Formate Notes
Data/notes.tsv: Data/notes-00000.zip
	bash 02_format_notes.sh

#Download Ratings 
Ratings := Data/ratings-00000.zip Data/ratings-00001.zip Data/ratings-00002.zip Data/ratings-00003.zip Data/ratings-00004.zip Data/ratings-00005.zip Data/ratings-00006.zip Data/ratings-00007.zip Data/ratings-00008.zip Data/ratings-00009.zip Data/ratings-00010.zip Data/ratings-00011.zip Data/ratings-00012.zip Data/ratings-00013.zip Data/ratings-00014.zip Data/ratings-00015.zip Data/ratings-00016.zip Data/ratings-00017.zip Data/ratings-00018.zip Data/ratings-00019.zip

$(Ratings):
	bash 03_download_ratings_data.sh $@
 
Data/ratings.tsv: $(Ratings) 
	bash 04_format_ratings.sh

final_report.html: Data/notes.tsv Data/ratings.tsv Replication.Rmd
	Rscript -e "rmarkdown::render('Replication.Rmd')"
