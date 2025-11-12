mkdir transcoded; for i in *.mp4; do ffmpeg -i "$i" -vcodec libsvtav1 -q:v 2 -acodec pcm_s16be -q:a 0 -f mp4 "transcoded/${i%.*}.mp4"; done
