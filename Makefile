#** -LICENSE-START-
#** Copyright (c) 2009 Blackmagic Design
#**
#** Permission is hereby granted, free of charge, to any person or organization
#** obtaining a copy of the software and accompanying documentation covered by
#** this license (the "Software") to use, reproduce, display, distribute,
#** execute, and transmit the Software, and to prepare derivative works of the
#** Software, and to permit third-parties to whom the Software is furnished to
#** do so, all subject to the following:
#**
#** The copyright notices in the Software and this entire statement, including
#** the above license grant, this restriction and the following disclaimer,
#** must be included in all copies of the Software, in whole or in part, and
#** all derivative works of the Software, unless such copies or derivative
#** works are solely in the form of machine-executable object code generated by
#** a source language processor.
#**
#** THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#** IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#** FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
#** SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
#** FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
#** ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#** DEALINGS IN THE SOFTWARE.
#** -LICENSE-END-
#ffmpeg-1.0.1
#lib_path=/home/chris/work/ffmpeg/refs/ffmpeg-1.0.1/lib
#include_path=/home/chris/work/ffmpeg/refs/ffmpeg-1.0.1/include

#ffmpeg-1.1.2
lib_path=/home/chris/work/ffmpeg/refs/ffmpeg-1.1.3/lib
include_path=/home/chris/work/ffmpeg/refs/ffmpeg-1.1.3/include

all:  
	gcc -D_CHRIS -g -pg -c capture.c	input_handle.c 	segment_yy.c segment_utils.c output_handle.c -I${include_path}
	gcc *.o -g -pg -D_CHRIS  -o capture -L${lib_path} -lavformat -lavcodec  -lavutil -lswscale -lswresample -lavdevice -lm -ldl -lz -lpthread -lx264  -lfaac -lrt -lasound

clean:
	rm -f capture
	rm *.o
