#!/bin/sh -e

FLAG="${XDG_RUNTIME_DIR:-/tmp}/handy_is_recording"

handy --toggle-transcription

if [ -f "$FLAG" ]; then
	rm -f "$FLAG"
	wl-find-cursor -d 200 -s 67 -c 0xaa2e9ef4
else
	touch "$FLAG"
	for i in 1 2; do
		wl-find-cursor -s 67 -d 200 -c 0xaaff4040
	done
fi

