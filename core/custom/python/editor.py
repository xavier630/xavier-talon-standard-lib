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

key = actions.key
self = actions.self

mod = Module()

@mod.action_class
class Editor:
    def create_section(title: str):
        """Creates a section"""
        key('cmd-b')
        actions.insert(title)
        key('cmd-b')
        key('enter')
        key('enter')

    def create_section_with_list(title: str):
        """Creates a section"""
        key('cmd-b')
        actions.insert(title)
        key('cmd-b')
        key('enter')
        key('*')
        key(' ')
        key(' ')
        key('enter')
        key('enter')
        key('enter')



