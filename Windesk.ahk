#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 鼠标手势
rbutton::    
  minGap  = 40 ; 设定的识别阈值，大于此阈值，说明在某方向上有移动
  middleGap = 600
  mousegetpos xpos1,ypos1
  Keywait, RButton, U
  mousegetpos xpos2, ypos2
  
  if (abs(xpos1-xpos2) < minGap and abs(ypos1-ypos2)<minGap) ; nothing 没有运动，直接输出rbutton 
  send, {rbutton}
  
  else if (xpos1-xpos2 > minGap and xpos1-xpos2 < middleGap) ; left  win多桌面向右
   send, {ctrl down}{lwin down}{right}{lwin up}{ctrl up}
   
  else if (xpos2-xpos1 > minGap and xpos2-xpos1 < middleGap) ; right win多桌面向左
   send, {ctrl down}{lwin down}{left}{lwin up}{ctrl up}
   
  else if (xpos1-xpos2 > middleGap) ; left  连续向右俩桌面
   send, {ctrl down}{lwin down}{right}{right}{lwin up}{ctrl up}
   
  else if (xpos2-xpos1 > middleGap) ; right 连续向左俩桌面
   send, {ctrl down}{lwin down}{left}{left}{lwin up}{ctrl up}
   
   
  ;else if (abs(xpos1-xpos2)< minGap and (ypos1-ypos2)>minGap) ; up 最大化窗口， win+up
  ; send, {ctrl down}{lwin down}{right}{right}{lwin up}{ctrl up}
   
  ;else if (abs(xpos1-xpos2)< minGap and (ypos2-ypos1)>minGap) ; down 显示桌面， win+d
  ; send, {ctrl down}{lwin down}{left}{left}{lwin up}{ctrl up}
   
   
   
  ;else if (ypos2-ypos1 > minGap and (xpos1-xpos2) > minGap) ; down and left , ctrl+shift+T
  ;  send, ^+t
  ;else if (ypos2-ypos1 > minGap and (xpos2-xpos1) > minGap) ; down and right, ctrl+w
  ;  send, ^w
  ;else if (ypos1-ypos2 > minGap and (xpos2-xpos1) > minGap) ; up and right alt+f4
  ; send, !{F4}
  ;else if (ypos1-ypos2 > minGap and (xpos1-xpos2) > minGap) ; up and left nothing
  ; send, {rbutton}
  else  
    send, {rbutton}
  return