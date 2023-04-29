import pyautogui

XD = ["o","a","i","e","f","r","g","h","o","i","u","e","a","h","r","g","b","m","u"]

pyautogui.hotkey("alt", "tab")

while True:
    for i in range(0, len(XD)):
        pyautogui.press(XD[i])
        if i % 2 == 0:
            pyautogui.hotkey("alt", "tab")
