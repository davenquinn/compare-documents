# compare-documents

`compare-documents` is a command-line application that runs the "Compare" tool
in Microsoft Word against two documents. This should support user-friendly
diffs of Word documents using the
excellent track changes tool, while abstracting a fairly clunky
GUI interaction.

My purpose in creating this tool is to speed up the generation of changesets
from versioned plaintext (e.g. `git` revisions of scholarly markdown, processed
with `pandoc`) that are digestible to Microsoft Word users.


The CLI currently works only on Mac OS, using AppleScript automation. However,
I would be interested in pull requests integrating an alternative (likely
COM-based) backend for Windows, wrapped in the same API.

## Usage

```bash
compare-documents [OPTIONS...] base_doc changed_doc

OPTIONS
  --output/-o      Output merged file (if not specified, file is
                   left open in GUI.
  --keep-open/-k   If output file is written, keep it open
  --author/-a      Author for revisions (defaults to configured
                   value for Microsoft Word).

  base_doc         Path to base document for comparison
  changed_doc      Path to document with changes
```
