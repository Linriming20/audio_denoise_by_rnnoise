all: rnnoise_demo


CC := gcc
CFLAGS := -I./include
LDFLAGS := -lrnnoise -lm -L./lib


rnnoise_demo: rnnoise_demo.c
	$(CC) $^ $(CFLAGS) $(LDFLAGS) -o $@

clean:
	rm -rf rnnoise_demo out*
.PHONY := clean


