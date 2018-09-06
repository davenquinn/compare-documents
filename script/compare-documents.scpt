on run argv
  set baseDoc to (get item 1 of argv)
  set nextDoc to (get item 2 of argv)
  set outDoc to (get item 3 of argv)
  set author to (get item 4 of argv)
  set outName to (get item 5 of argv)
  tell application "Microsoft Word"
    activate
    set doc to (open file name baseDoc with read only and new)
    compare doc path nextDoc author name "International Bible Society"
    close doc
    set newDoc to (get active document)
    log outName
  end tell
end run
