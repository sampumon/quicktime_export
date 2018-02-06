Batch export with QuickTime Player
==================================

1. select video files in Finder
2. run applescript
3. find your exports in `/Users/$USER/Library/Containers/com.apple.QuickTimePlayerX/Data` [Thanks for the sandbox Apple]

QuickTime Player does GPU encode. `avconvert` does not, neither does Finder > Encode Selected Video Files.
