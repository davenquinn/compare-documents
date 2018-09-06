on run argv
  set baseDoc to (get item 1 of argv)
  set nextDoc to (get item 2 of argv)
  set outFile to (get item 3 of argv)
  set authorName to (get item 4 of argv)
  set outName to (get item 5 of argv)
  set keepOpen to (get item 6 of argv)


  tell application "Microsoft Word"
    activate
    set doc to (open file name (POSIX file baseDoc) with read only and new)

    -- Run the comparison
    if authorName equals "\\0" then
      compare doc path (POSIX file nextDoc)
    else
      compare doc path (POSIX file nextDoc) author name authorName
    end if

    close doc
    set newDoc to (get active document)
    if not outFile equals "\\0" then
      set fname to (POSIX file outFile as text)
      log fname
      save as newDoc file name (POSIX file outFile)
      --if not keepOpen equals 1 then
        --close newDoc
      --end if
    end if
  end tell
end run
