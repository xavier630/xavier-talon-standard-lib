app: evernote
os: mac
-
settings():
    # Necessary to stop commands like 'slap' getting jumbled
    key_wait = 9.0

# Text editing-related
(bold | embolden) [that]: key(cmd-b)
(italics | italicize) [that]: key(cmd-i)
(strike | strikethrough) [that]: key(cmd-ctrl-k)
underline [that]: key(cmd-ctrl-k)
(checkbox | checklist) [that]: key(cmd-shift-c)
[numbered] list [that]: key(cmd-shift-o)
(bullet | bulleted list) [that]: key(cmd-shift-u)
task: key(cmd-t)

# Insert Link from clipboard
([insert] | [attach]) (link | hyperlink):
    key(cmd-k)
    sleep(200ms)
    edit.paste()
    key(enter)

# Application-related
search: key(cmd-j)
notes: key(cmd-option-1)
notebooks: key(cmd-option-2)

