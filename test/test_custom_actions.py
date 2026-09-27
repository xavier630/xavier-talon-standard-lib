import importlib
from unittest.mock import MagicMock, call

import talon

if hasattr(talon, "test_mode"):
    from talon import actions

    def setup_function():
        actions.reset_test_actions()

    def test_custom_actions_module_registers_mouse_delay_click():
        import core.custom.python.actions as custom_actions

        importlib.reload(custom_actions)

        assert talon.actions.user.mouse_delay_click is custom_actions.Actions.mouse_delay_click

    def test_mouse_delay_click_preserves_click_loop_behavior():
        import core.custom.python.actions as custom_actions

        mouse_click = MagicMock()
        sleep = MagicMock()
        actions.register_test_action("", "mouse_click", mouse_click)
        custom_actions.time.sleep = sleep

        custom_actions.Actions.mouse_delay_click(3, 2, 0.75)

        assert mouse_click.call_args_list == [call(2), call(2), call(2)]
        assert sleep.call_args_list == [call(0.75), call(0.75), call(0.75)]
