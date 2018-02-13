Batch export with QuickTime Player
==================================

1. select video files in Finder
2. run `QuickTime_export.applescript`
3. find your exports in `~/Library/Containers/com.apple.QuickTimePlayerX/Data` [thanks for the sandbox Apple]

QuickTime Player does GPU encode. `avconvert` does not, neither does Finder > Encode Selected Video Files.
