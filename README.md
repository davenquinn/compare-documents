# compare-documents

`compare-documents` is a command-line application that runs the "Compare" tool in Microsoft Word against two
documents specified at the command line. This is envisioned to transparently
support diffs of Word documents using the excellent track changes tool, while simplifying this
fairly clunky interaction. It should speed up and automate academic publishing workflows based
around `pandoc` and the universe of plain-text writing tools.

The CLI currently works only on Mac OS, using AppleScript automation. However, I would
be interested in pull requests integrating an alternative (likely COM-based) backend for Windows,
wrapped in the same API.
