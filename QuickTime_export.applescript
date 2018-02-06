(* QUICKTIME GPU EXPORT SELECTED FINDER ITEMS as 1080p *)

tell application "Finder"
	set finderSelection to get selection
end tell

repeat with finderItem in finderSelection
	set file_name to name of finderItem
	set outfileNoPermission to POSIX path of (finderItem as text) & "_quicktime.mp4"
	log outfileNoPermission
	
	--YOU DON'T HAVE PERMISSION ANYWHERE EXCEPT
	--/Users/$USER/Library/Containers/com.apple.QuickTimePlayerX/Data
	quicktimeExport(finderItem as text, file_name) of me
end repeat

-- WARNING WE OVERWRITE
on quicktimeExport(infile, outfile)
	tell application "QuickTime Player"
		set movie to open infile
		export movie in POSIX file outfile using settings preset "1080p"
	end tell
end quicktimeExport
