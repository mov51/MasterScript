instance1 = mov51 ;sets the names of each instance in use, soft coding for future prrofing
instance2 = mov52
instance3 = mov53
instance4 = mov54
page = 1
SetKeyDelay, 15, 20
SetTitleMatchMode 3
#SingleInstance Force
#WinActivateForce
CoordMode, Mouse, Client

;Crafting Click
#Include %A_ScriptDir%\Modules\OneClickCrafting.ahk
#Include %A_ScriptDir%\Modules\VillagerTrade.ahk

;coreInspecy
#Include %A_ScriptDir%\Modules\CoreInspect\Pagination.ahk
#Include %A_ScriptDir%\Modules\CoreInspect\Base.ahk

;Window switch
;------------------------

#Include %A_ScriptDir%\Modules\WindowManager\WindowSwitch.ahk

;Window name
;------------------------

#Include %A_ScriptDir%\Modules\WindowManager\WindowName.ahk

;Gamemode Switch
;------------------------

#Include %A_ScriptDir%\Modules\Numpad\GameModes.ahk

#Include %A_ScriptDir%\Modules\Numpad\QoL.ahk

;List Homes
;------------------------

#Include %A_ScriptDir%\Modules\GUI\homes\HomeGui.ahk
#Include %A_ScriptDir%\Modules\GUI\Scripts\ScriptsGUI.ahk

;Maintence

^!r::
reload

GuiClose: ;when gui closes
Gui, destroy ;destroy
return

Chat(message, window){
  if WinActive(window){
    ControlSend, , t, %window%
    sleep 150 ;waits for chat GUI to beready
    ControlSend, , {text}%message%, %window%
    sleep 150 ;waits for minecraft to finish displaying the text
    ControlSend, , {Enter}, %window%
  }
  Return
}

ChatNoCheck(message, window){
  ControlSend, , t, %window%
  sleep 150 ;waits for chat GUI to beready
  ControlSend, , {text}%message%, %window%
  sleep 150 ;waits for minecraft to finish displaying the text
  ControlSend, , {Enter}, %window%
  Return
}
