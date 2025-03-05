#Include dependencies\includes\_INCLUDES_THREAD

global KeyDelayTimes := {}
global LastPressTime := {}
THREAD_WAIT(_TICK_UPDATE_WAIT*8)
LoadSettings()


; _____MAIN LOOP
Loop {
    if (_POEMEMORY.ERROR == "NONE") {
        if (CheckPoeWindow() == true) {

			;shows all current character buffs 1by1 with all available datasets
			for BUFFNAMETEST, BUFFDATA in _POEMEMORY.BUFFLIST {
			    Tooltip, % "BUFFNAME: " BUFFNAMETEST "`nDURATION: " BUFFDATA.DURATION "`nCHARGES: " BUFFDATA.CHARGES "`nUISTACK: " BUFFDATA.UISTACK , 20, 400
			    Sleep, 500
			}

        }
    }
    THREAD_WAIT(_TICK_UPDATE_CRITICAL)
}
