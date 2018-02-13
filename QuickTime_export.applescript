(* QUICKTIME GPU EXPORT SELECTED FINDER ITEMS as 1080p *)

tell application "Finder"
	set finderSelection to get selection
end tell

repeat with finderItem in finderSelection
	set outfile to POSIX path of (finderItem as text) & "_quicktime.mp4"
	log outfile
	quicktimeExport(finderItem, outfile as POSIX file) of me
end repeat

-- WARNING WE OVERWRITE
on quicktimeExport(infile, outfile)
	tell application "QuickTime Player"
		set movie to open infile
		delay 1 -- wait for open to actuate
		-- LOL movie is not defined. document 1 is the last opened.
		export document 1 in outfile using settings preset "1080p"
	end tell
end quicktimeExport
