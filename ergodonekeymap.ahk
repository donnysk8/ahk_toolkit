;$NumpadEnter::'
;$Enter::'
;$Numpad4::+
;$Numpad5::=
;$Numpad6::'
;$Numpad1::|
;$Numpad2::_
;$Numpad9::"
;$F7::F11
;$NumLock::F7
;/ & a::+
;/ & s::=
;/ & d::-
;/ & f::\
;/ & [::]
;/ & 0::F11
;/ & Backspace::F12
;` & [::]
;$`::CapsLock
;$/::/
;$`::`
;$Launch_App2::-
;!9::-
;!0::=
;!Backspace::*
;$F1::'

; 斜线功能区

/ & a::+
/ & s::=
/ & d::-
/ & f::\
/ & z::'
/ & x::"
/ & c::[
/ & v::]
/ & g::|
/ & b::_
/ & 0::F11
/ & Backspace::F12
$/::/

; 句号功能区
. & e::Up
. & s::Left
. & d::Down
. & f::Right
. & t::<#Tab
. & c::^c
. & v::^v
. & x::^x
. & b::#v
. & Del::Backspace
$.::.

; 逗号功能区
, & z::Home
, & x::End
, & c::+Home
, & v::+End
, & e::+Up
, & s::+Left
, & d::+Down
, & f::+Right
, & q::^#Left
, & t::^#Right

$,::,

; 分号功能区
`; & g::WheelUp
`; & b::WheelDown

CoordMode, Mouse, Window

`; & e::
MouseGetPos, X,Y
MouseMove, X, Y-10
return
 
`; & d::
MouseGetPos, X,Y
MouseMove, X, Y+10
return

`; & s::
MouseGetPos, X,Y
MouseMove, X-10, Y
return

`; & f::
MouseGetPos, X,Y
MouseMove, X+10, Y
return

`; & t::RButton
`; & q::LButton
`; & r::MButton

$;::;

; 小回车功能区

CoordMode, Mouse, Window

NumpadEnter & e::
MouseGetPos, X,Y
MouseClickDrag, Left, X, Y, X, Y-10
return
 
NumpadEnter & d::
MouseGetPos, X,Y
MouseClickDrag, Left, X, Y, X, Y+10
return

NumpadEnter & s::
MouseGetPos, X,Y
MouseClickDrag, Left, X, Y, X-10, Y
return

NumpadEnter & f::
MouseGetPos, X,Y
MouseClickDrag, Left, X, Y, X+10, Y
return

$NumpadEnter::NumpadEnter