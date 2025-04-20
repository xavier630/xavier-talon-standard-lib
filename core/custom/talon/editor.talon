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
    user.create_section(user.time_format("%Y-%m-%d"))
    user.create_section_with_list('Links')
    user.create_section_with_list('Profitability, NTA, sum of future cashflows')
    user.create_section_with_list('Risks/Questions')
    user.create_section_with_list('Change in stocks on issue')
    user.create_section_with_list('Supporting Documentation')

pyspark col | pyspark column:
    insert("F.col('')")
    key(left)
    key(left)

console log:
    insert("console.log()")

reverse list | reverse lines:
    user.reverse_lines()

times:
    insert(" * ")

month: insert(user.time_format_utc("%B %Y"))


### Holding keys - ideally these would be generic, but Talon has a hard time detecting them if you make the letter generic
# Todo switch to python func which takes a letter, and a number of ms runs all three commands
hold w:
    key("w:down")
    sleep(10000ms)
    key("w:up")

hold w long:
    key("w:down")
    sleep(20000ms)
    key("w:up")

release w:
    key("w:up")

hold s:
    key("s:down")
    sleep(10000ms)
    key("s:up")

hold s long:
    key("s:down")
    sleep(20000ms)
    key("s:up")

release s:
    key("s:up")
### End holding keys


