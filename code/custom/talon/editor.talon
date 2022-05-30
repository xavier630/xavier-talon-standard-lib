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
    key(cmd-b)
    insert('Date: ')
    insert(user.time_format("%Y-%m-%d"))
    key(cmd-b)
    key(enter)
    key(enter)

    key(cmd-b)
    insert('Links')
    key(cmd-b)
    key(enter)
    key(enter)

    key(cmd-b)
    insert('Profitability, NTA, sum of future cashflows')
    key(cmd-b)
    key(enter)
    key(enter)

    key(cmd-b)
    insert('Risks/Questions')
    key(cmd-b)
    key(enter)
    key(enter)

    key(cmd-b)
    insert('Change in stocks on issue')
    key(cmd-b)
    key(enter)
    key(enter)

    key(cmd-b)
    insert('Supporting Documentation')
    key(cmd-b)
    key(enter)
    key(enter)

pyspark col | pyspark column:
    insert("F.col('')")
    key(left)
    key(left)

console log:
    insert("console.log()")

reverse list | reverse lines:
    user.reverse_lines()