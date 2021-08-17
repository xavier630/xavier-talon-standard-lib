find it:
    edit.find()

next one:
    edit.find_next()

go word left:
    edit.word_left()

go word right:
    edit.word_right()

go left:
    edit.left()

go right:
    edit.right()

go up:
    edit.up()

go down:
    edit.down()

go line start:
    edit.line_start()

go line end:
    edit.line_end()
    
go bottom:
    edit.file_end()
    
go top:
    edit.file_start()

go page down:
    edit.page_down()

go page up:
    edit.page_up()

# selecting
select line:
    edit.select_line()

select all:
    edit.select_all()

select left:
    edit.extend_left()

select right:
    edit.extend_right()

select up:
    edit.extend_line_up()

select down:
    edit.extend_line_down()

select word:
    edit.select_word()

select word left:
    edit.extend_word_left()

select word right:
    edit.extend_word_right()

select line start:
    edit.extend_line_start()

select line end:
    edit.extend_line_end()

select top:
    edit.extend_file_start()

select bottom:
    edit.extend_file_end()

# editing
indent [more]:
    edit.indent_more()

(indent less | out dent):
    edit.indent_less()

# deleting
(wipe | delete) line:
    edit.delete_line()

(wipe | delete) left:
    key(backspace)

(wipe | delete) right:
    key(delete)

(wipe | delete) up:
    edit.extend_line_up()
    edit.delete()

(wipe | delete) down:
    edit.extend_line_down()
    edit.delete()

(wipe | delete) word:
    edit.delete_word()

(wipe | delete) word left:
    edit.extend_word_left()
    edit.delete()

(wipe | delete) word right:
    edit.extend_word_right()
    edit.delete()

(wipe | delete) line start:
    edit.extend_line_start()
    edit.delete()

(wipe | delete) line end:
    edit.extend_line_end()
    edit.delete()

(wipe | delete) top:
    edit.extend_file_start()
    edit.delete()

(wipe | delete) bottom:
    edit.extend_file_end()
    edit.delete()

(wipe | delete) all:
    edit.select_all()
    edit.delete()

# copying TODO validate they work like 'select_left' and once done, use as a template for cut
copy line:
    edit.select_line()
    edit.copy()

copy left:
    edit.select_left()
    edit.copy()

copy right:
    edit.select_right()
    edit.copy()

copy up:
    edit.extend_line_up()
    edit.copy()

copy down:
    edit.extend_line_down()
    edit.copy()

# Workaround to be able to select the current word
copy word:
    edit.left() #  In case we're on the rightmost pos already - should be safe even if you're on the left-most pos
    edit.word_right()
    edit.extend_word_left()
    edit.copy()

copy word left:
    edit.extend_word_left()
    edit.copy()

copy word right:
    edit.extend_word_right()
    edit.copy()

copy line start:
    edit.extend_line_start()
    edit.copy()

copy line end:
    edit.extend_line_end()
    edit.copy()

copy top:
    edit.extend_file_start()
    edit.copy()

copy bottom:
    edit.extend_file_end()
    edit.copy()

copy all:
    edit.select_all()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()
#to do: do we want these variants
# cut left:
#      edit.select_all()
#      edit.cut()
# cut right:
#      edit.select_all()
#      edit.cut()
# cut up:
#      edit.select_all()
#     edit.cut()
# cut down:
#     edit.select_all()
#     edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut word left:
    edit.extend_word_left()
    edit.cut()

cut word right:
    edit.extend_word_right()
    edit.cut()

cut line:
    edit.select_line()
    edit.cut()
