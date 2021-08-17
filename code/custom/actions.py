import os
import time
from typing import Callable

import pathlib
import subprocess

from talon import (
    Module,
    actions,
    app,
    clip,
    cron,
    ctrl,
    imgui,
    noise,
    ui,
)
from talon_plugins import eye_mouse, eye_zoom_mouse
from talon_plugins.eye_mouse import config, toggle_camera_overlay, toggle_control

key = actions.key
self = actions.self

mod = Module()

# Sample setting reading
setting_mouse_enable_pop_click = mod.setting(
    "mouse_enable_pop_click",
    type=int,
    default=0,
    desc="Enable pop to click when control mouse is enabled.",
)

@mod.action_class
class Actions:
    def reverse_lines():
        """ Reverse the order of the currently selected lines."""
        actions.edit.extend_line_start()
        actions.edit.extend_line_end()

        text = actions.edit.selected_text()
        lines = text.split('\n')
        lines.reverse()
        actions.insert('\n'.join(lines))




