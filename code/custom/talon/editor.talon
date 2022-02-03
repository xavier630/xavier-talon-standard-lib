# Cursor actions
select | highlight:
    mouse_click()
	mouse_click()

line select:
	mouse_click()
    sleep(100ms)
	edit.select_line()

line (delete | wipe):
	mouse_click()
    sleep(100ms)
	edit.select_line()
    sleep(100ms)
    edit.delete()
    edit.delete()

# touch-paste
taste:
    mouse_click()
    sleep(50ms)
    edit.paste()


clip:
	key(enter)
hey:
    insert('Hey, ')
hey team:
    insert('Hey team, ')

# Email commands
email header:
    insert('Hey,')
    key(enter)
    key(enter)
email footer:
    key(enter)
    insert('Cheers,')
    key(enter)
    insert('Xavier')
email template | email full:
    insert('Hey,')
    key(enter)
    key(enter)
    key(enter)
    key(enter)
    insert('Cheers,')
    key(enter)
    insert('Xavier')
   	key(up)
   	key(up)
   	key(up)

stock [analysis] template:
    insert('Date: ')
    key(enter)
    key(enter)
    insert('Links')
    key(enter)
    key(enter)
    insert('Profitability/NTA')
    key(enter)
    key(enter)
    insert('Risks')
    key(enter)
    key(enter)
    insert('Supporting Documentation')
    key(enter)
    key(enter)