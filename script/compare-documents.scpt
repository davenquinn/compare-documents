on run argv
  set baseDoc to "/Users/Daven/Projects/Tools/compare-documents/test/genesis1_kingjames.docx"
  set nextDoc to "/Users/Daven/Projects/Tools/compare-documents/test/genesis1_newinternational.docx"
  tell application "Microsoft Word"
    activate
    set doc to (open file name baseDoc with read only and new)
    log doc
    compare doc path nextDoc author name "International Bible Society"
    close doc
    set newDoc to (get active document)
    name of newDoc
  end tell
end run
