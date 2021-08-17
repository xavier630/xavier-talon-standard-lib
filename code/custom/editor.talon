# Cursor actions
select | highlight:
    mouse_click()
	mouse_click()

line select:
	mouse_click()
	actions.edit.select_line()

line delete:
	mouse_click()
    sleep(100ms)
	edit.select_line()
    sleep(100ms)
    edit.delete()
    edit.delete()


reverse list | reverse lines:
    user.reverse_lines()