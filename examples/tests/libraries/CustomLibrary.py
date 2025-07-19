from FlaUILibrary.flaui.automation.uia3 import UIA3Automation

class CustomLibrary:
    def __init__(self):
        self._automation = UIA3Automation()
        self._desktop = self._automation.GetDesktop()
        self._cf = self._automation.ConditionFactory

    def verify_welcome_label_contains_username(self, expected_username):
        # Use ConditionFactory to search by AutomationId
        label = self._desktop.FindFirstDescendant(self._cf.ByAutomationId("lblWelcome"))

        if label is None:
            raise AssertionError("Welcome label not found.")

        actual_text = label.Name

        if expected_username not in actual_text:
            raise AssertionError(
                f"Expected username '{expected_username}' not found in welcome message: '{actual_text}'"
            )

        print(f"Verified: Welcome message contains username '{expected_username}'.")
