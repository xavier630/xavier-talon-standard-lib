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
    def mouse_scroll_repeat_down(number_of_times: int):
        """Scrolls down N times"""
        self.mouse_scroll_repeat(number_of_times, self.mouse_scroll_down)

    def mouse_scroll_repeat_up(number_of_times: int):
        """Scrolls up N times"""
        self.mouse_scroll_repeat(number_of_times, self.mouse_scroll_up)

    def mouse_scroll_repeat(number_of_times: int, scroll_function: any):
        """Scrolls N times"""
        for i in range(number_of_times):
            scroll_function()
            scroll_function()
            time.sleep(0.25)




