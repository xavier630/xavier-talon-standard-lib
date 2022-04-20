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

# touch-copy
topy:
    mouse_click()
    sleep(20ms)
    edit.copy()

# touch-paste
taste:
    mouse_click()
    sleep(20ms)
    edit.paste()

comment:
    key('cmd-/')
clip:
	key(enter)
greet | greeting:
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
    insert(user.time_format("%Y-%m-%d"))
    key(enter)
    key(enter)
    insert('Links')
    key(enter)
    key(enter)
    insert('Profitability/NTA')
    key(enter)
    key(enter)
    insert('Risks/Questions')
    key(enter)
    key(enter)
    insert('Supporting Documentation')
    key(enter)
    key(enter)

pyspark col | pyspark column:
    insert("F.col('')")
    key(left)
    key(left)

console log:
    insert("console.log()")