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

    def mouse_scroll_repeat_right(number_of_times: int):
        """Scrolls up N times"""
        self.mouse_scroll_repeat(number_of_times, self.mouse_scroll_right)

    def mouse_scroll_repeat_left(number_of_times: int):
        """Scrolls up N times"""
        self.mouse_scroll_repeat(number_of_times, self.mouse_scroll_left)

    def mouse_scroll_repeat(number_of_times: int, scroll_function: any):
        """Scrolls N times"""
        for i in range(number_of_times):
            scroll_function()
            scroll_function()
            time.sleep(0.25)

    def open_list_of_sites(site_string: str):
        """Opens a list of sites in Chrome. Takes a newline-delimited string of sites since talonscript doesn't support
        lists """
        sites = site_string.strip().split('\n')

        app_name = get_app('Google Chrome').focus()
        time.sleep(0.5)

        actions.browser.go_blank()
        for index, site in enumerate(sites):
            actions.browser.go(site)
            if index != (len(sites) - 1):
                actions.app.tab_open()
            time.sleep(0.65)



def get_app(name: str) -> ui.App:
    print(ui.apps())
    for app in ui.apps():
        if name.lower() in app.name.lower():
            return app
    raise RuntimeError("App not found")





