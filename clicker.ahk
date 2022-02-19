;made by aryan1400 or arian1400 or Aryan140001

;lowest time between every click and next click
lowest = 51 
;highest time between every click and next click
highest = 201



on = 0
cps := (1000/((lowest + highest)/2))-2

Numpad9::
if (on = 1){
 ontest = on
} else {
 ontest = off
}
MsgBox, 64, info, Clicker stats: %ontest%`n  Lowest: %lowest%`n  Highest: %highest%`n  Average cps: %cps%`n`nThis message disappears after 6 seconds, 6 
return
Numpad5::
if (on = 1) {
 on = 0 
} else {
 on = 1
}
return

$x::
if (on = 1) {
 Loop {
  Random, rand, lowest, highest
  if not GetKeyState("x", "P")
   break
  click
  Sleep rand
 }
} else {
 send x
}
return
