# Cursor actions
select | highlight:
    mouse_click()
	mouse_click()

line select:
	mouse_click()
	actions.edit.select_line()

line (delete | wipe):
	mouse_click()
    sleep(100ms)
	edit.select_line()
    sleep(100ms)
    edit.delete()
    edit.delete()

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