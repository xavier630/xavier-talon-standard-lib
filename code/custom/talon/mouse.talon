# Mouse
wheel in small | up small:
    user.mouse_scroll_repeat_down(2)
wheel out small | down small:
    user.mouse_scroll_repeat_up(2)

# Inverted as you need to scroll right to go left, up to go down, etc.
wheel in | up:
    user.mouse_scroll_repeat_down(4)
wheel out | down:
    user.mouse_scroll_repeat_up(4)
wheel left | left | scroll left:
    user.mouse_scroll_repeat_right(4)
wheel right | right | scroll right:
    user.mouse_scroll_repeat_left(4)


wheel in far | up far | wheel down far:
    user.mouse_scroll_repeat_down(8)
wheel out far | down far | wheel up far:
    user.mouse_scroll_repeat_up(8)

mid:
	mouse_click(2)
	# close the mouse grid
	user.grid_close()

delay touch:
    user.mouse_delay_click(5, 0, 0.75)

delay touch many:
    user.mouse_delay_click(25, 0, 0.75)

ridey | ridy:
    mouse_click(1)
    # close the mouse grid if open
    user.grid_close()
