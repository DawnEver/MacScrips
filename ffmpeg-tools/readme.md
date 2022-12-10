# ffmpeg-tools
tools based on ffmpeg

## requirements
ffmpeg == 5.1

[Download ffmpeg](https://ffmpeg.org/download.html)

# List
## getAudio
as title.

## video2gif

1. open Terminal and change work directory to *./video2gif*

2. edit *./video2gif/timetable.txt* ,each video clip with a line `[begin time],[last time]`.
    you can add '#' ahead to skip a line

3. run `video2gif [videoPath] ("[ffmpeg params]")` and wait,open folder *./output* for results.

    you can run script with ffmpeg params in **""** 
    
    **e.g.**
    `sh video2gif test.mp4` # using default params
    
    `sh video2gif test.mp4  "-f gif -s 640x480 -r 5"`

## addCaptions
- *addCaptions* to add captions
- *easysrt* tool to format srt file
[todo]auto add breakpoint even captions