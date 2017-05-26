# Merge files
echo 'Merging PDF files...'
awk '$0="../files/"$0' files.txt | xargs -J % pdftk % cat output merged.pdf;

# Bookmarks
echo 'Adding bookmarks...'
python bookmarks.py bookmarks.csv > bookmarks.txt;
pdftk merged.pdf update_info bookmarks.txt output final.pdf;

# Compress (if needed)
# mv final.pdf temp.pdf;
# pdftk temp.pdf output final.pdf compress;
# rm temp.pdf;

# Finalize and cleanup
rm merged.pdf;
rm bookmarks.txt;
mv final.pdf DeepLearningBook.pdf
echo '----------'
echo 'Finished: DeepLearningBook.pdf'
