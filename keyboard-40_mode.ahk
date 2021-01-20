;; -*-mode: ahk; coding:utf-8-dos-*-"
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#singleinstance force

;; utf-8
FileEncoding, CP65001

;; 変換キーで「数字＋カーソル移動モード」の配列を呼び出す
;; 無変換キーで「記号モード」の配列を呼び出す
;; 
;; モードを解除するには、「使用中のモード」へと切り替えるキーを再度押すこと
;; プログラムを終了するには F12 を押す

;; ================================================================
;; モードの初期化
initialize_key_layout_mode()

;; モード変更時にモードの情報を表示する時間（ミリ秒）
RemoveToolTip_time := 1000
return

;; ============================================================
;; モード変更用のキー

;; 無変換->記号モード
sc07B::
  set_key_layout_mode("Sign")
return

;; 変換->数字+カーソル移動モード
sc079::
  set_key_layout_mode("Num")
return

;; Winキー
sc15B::
  set_key_layout_mode("Arrow")
return

;; ============================================================
;; F12 を押せばプログラムを終了する
F12::
  Suspend
return

;; ============================================================

;; #If - AutoHotkeyJp
;; http://sites.google.com/site/autohotkeyjp/reference/commands/-If

;; キーリスト - AutoHotkeyJp
;; http://sites.google.com/site/autohotkeyjp/reference/KeyList

;; ============================================================

;;================================================================================================================================
;; All
;;================================================================================================================================
; 左親指
LCtrl::Tab
sc038::Backspace

; 右親指
sc070::Enter ;カナ|ひら
RCtrl::Delete
Left::Esc

; 左キー
*Tab::Send, {Blind}{Alt Down}
*Tab Up::Send, {Blind}{Alt Up}
; *sc03A::Send, {Blind}{Ctrl Down}
; *sc03A Up::Send, {Blind}{Ctrl Up}

; 右キー
*@::Send, {Blind}{Alt Down}
*@ Up::Send, {Blind}{Alt Up}
*vkBA::Send, {Blind}{Ctrl Down}
*vkBA Up::Send, {Blind}{Ctrl Up}
*vkE2::Send, {Blind}{Shift Down}
*vkE2 Up::Send, {Blind}{Shift Up}

; 無効化
; 1::Return
; 2::Return
; 3::Return
; 4::Return
; 5::Return
; 6::Return
; 7::Return
; 8::Return
; 9::Return
; 0::Return
; F1::Return
; F2::Return
; F3::Return
; F4::Return
; F5::Return
; F6::Return
; F7::Return
; F8::Return
; F9::Return
; F10::Return
; F11::Return
; F12::Return
Up::Return
Right::Return
Down::Return
Enter::Return
Insert::Return
PrintScreen::Return
Capslock::Return
sc03a::Return
; Backspace::Return

;;================================================================================================================================
;; Sign
;;================================================================================================================================
#if get_key_layout_mode("Sign")
; Default
; 1行目
  q::
    send,{!}
    return
  w::
    send,{@}
    return
  e::
    send,{#}
    return
  r::
    send,{$}
    return
  t::
    send,{`%}
    return
  y::
    send,{^}
    return
  u::
    send,{&}
    return
  i::
    send,{*}
    return
  o::
    send,{|}
    return
  p::
    send,{\}
    return
; 2行目
  a::
    send,{?}
    return
  s::
    send,{<}
    return
  d::
    send,{(}
    return
  f::
    send,{{}
    return
  g::
    send,{[}
    return
  h::
    send,{]}
    return
  j::
    send,{}}
    return
  k::
    send,{)}
    return
  l::
    send,{>}
    return
  `;::
    send,{:}
    return
; 3行目
  z::
    send,{vkF3sc029}
    return
  x::
    send,{`}
    return
  c::
    send,{'}
    return
  v::
    send,{"}
    return
  b::
    send,{~}
    return
  n::
    send,{=}
    return
  m::
    send,{/}
    return
  vkBC::
    send,{,}
    return
  .::
    send,{.}
    return
  /::
    send,{_}
    return
; Ctrl========================================================================
; 1行目
  ^q::
    send,^{!}
    return
  ^w::
    send,^{@}
    return
  ^e::
    send,^{#}
    return
  ^r::
    send,^{$}
    return
  ^t::
    send,^{`%}
    return
  ^y::
    send,^{^}
    return
  ^u::
    send,^{&}
    return
  ^i::
    send,^{*}
    return
  ^o::
    send,^{|}
    return
  ^p::
    send,^{\}
    return
; 2行目
  ^a::
    send,^{?}
    return
  ^s::
    send,^{<}
    return
  ^d::
    send,^{(}
    return
  ^f::
    send,^{{}
    return
  ^g::
    send,^{[}
    return
  ^h::
    send,^{]}
    return
  ^j::
    send,^{}}
    return
  ^k::
    send,^{)}
    return
  ^l::
    send,^{>}
    return
  ^`;::
    send,^{:}
    return
; 3行目
  ^x::
    send,^{`}
    return
  ^c::
    send,^{'}
    return
  ^v::
    send,^{"}
    return
  ^b::
    send,^{~}
    return
  ^n::
    send,^{=}
    return
  ^m::
    send,^{/}
    return
  ^vkBC::
    send,^{,}
    return
  ^.::
    send,^{.}
    return
  ^/::
    send,^{_}
    return
; Shift========================================================================
; 1行目
  +q::
    send,+{!}
    return
  +w::
    send,+{@}
    return
  +e::
    send,+{#}
    return
  +r::
    send,+{$}
    return
  +t::
    send,+{`%}
    return
  +y::
    send,+{+}
    return
  +u::
    send,+{&}
    return
  +i::
    send,+{*}
    return
  +o::
    send,+{|}
    return
  +p::
    send,+{\}
    return
; 2行目
  +a::
    send,+{?}
    return
  +s::
    send,+{<}
    return
  +d::
    send,+{(}
    return
  +f::
    send,+{{}
    return
  +g::
    send,+{[}
    return
  +h::
    send,+{]}
    return
  +j::
    send,+{}}
    return
  +k::
    send,+{)}
    return
  +l::
    send,+{>}
    return
  +`;::
    send,+{:}
    return
; 3行目
  +x::
    send,+{`}
    return
  +c::
    send,+{'}
    return
  +v::
    send,+{"}
    return
  +b::
    send,+{~}
    return
  +n::
    send,+{=}
    return
  +m::
    send,+{/}
    return
  +vkBC::
    send,+{,}
    return
  +.::
    send,+{.}
    return
  +/::
    send,+{_}
    return
; Alt========================================================================
; 1行目
  !q::
    send,!{!}
    return
  !w::
    send,!{@}
    return
  !e::
    send,!{#}
    return
  !r::
    send,!{$}
    return
  !t::
    send,!{`%}
    return
  !y::
    send,!{!}
    return
  !u::
    send,!{&}
    return
  !i::
    send,!{*}
    return
  !o::
    send,!{|}
    return
  !p::
    send,!{\}
    return
; 2行目
  !a::
    send,!{?}
    return
  !s::
    send,!{<}
    return
  !d::
    send,!{(}
    return
  !f::
    send,!{{}
    return
  !g::
    send,!{[}
    return
  !h::
    send,!{]}
    return
  !j::
    send,!{}}
    return
  !k::
    send,!{)}
    return
  !l::
    send,!{>}
    return
  !`;::
    send,!{:}
    return
; 3行目
  !x::
    send,!{`}
    return
  !c::
    send,!{'}
    return
  !v::
    send,!{"}
    return
  !b::
    send,!{~}
    return
  !n::
    send,!{=}
    return
  !m::
    send,!{/}
    return
  !vkBC::
    send,!{,}
    return
  !.::
    send,!{.}
    return
  !/::
    send,!{_}
    return
#if

;;================================================================================================================================
;; Num
;;================================================================================================================================
#if get_key_layout_mode("Num")
; Default
  ; 1行目
  q::
    send,`%
    return
  w::
    send,{F9}
    return
  e::
    send,{F10}
    return
  r::
    send,{F11}
    return
  t::
    send,{F12}
    return
  y::
    send,-
    return
  u::
    send,7
    return
  i::
    send,8
    return
  o::
    send,9
    return
  p::
    send,/
    return
  ; 2行目
  a::
    send,{=}
    return
  s::
    send,{F5}
    return
  d::
    send,{F6}
    return
  f::
    send,{F7}
    return
  g::
    send,{F8}
    return
  h::
    send,{+}
    return
  j::
    send,4
    return
  k::
    send,5
    return
  l::
    send,6
    return
  `;::
    send,*
    return
  ; 3行目
  z::
    return
  x::
    send,{F1}
    return
  c::
    send,{F2}
    return
  v::
    send,{F3}
    return
  b::
    send,{F4}
    return
  n::
    send,0
    return
  m::
    send,1
    return
  vkBC::
    send,2
    return
  .::
    send,3
    return
  /::
    send,.
    return
; Ctrl========================================================================
  ; 1行目
  ^q::
    send,^`%
    return
  ^w::
    send,^{F9}
    return
  ^e::
    send,^{F10}
    return
  ^r::
    send,^{F11}
    return
  ^t::
    send,^{F12}
    return
  ^y::
    send,^-
    return
  ^u::
    send,^7
    return
  ^i::
    send,^8
    return
  ^o::
    send,^9
    return
  ^p::
    send,^/
    return
  ; 2行目
  ^a::
    send,^{=}
    return
  ^s::
    send,^{F5}
    return
  ^d::
    send,^{F6}
    return
  ^f::
    send,^{F7}
    return
  ^g::
    send,^{F8}
    return
  ^h::
    send,^{+}
    return
  ^j::
    send,^4
    return
  ^k::
    send,^5
    return
  ^l::
    send,^6
    return
  ^`;::
    send,^*
    return
  ; 3行目
  ^z::
    return
  ^x::
    send,^{F1}
    return
  ^c::
    send,^{F2}
    return
  ^v::
    send,^{F3}
    return
  ^b::
    send,^{F4}
    return
  ^n::
    send,^0
    return
  ^m::
    send,^1
    return
  ^vkBC::
    send,^2
    return
  ^.::
    send,^3
    return
  ^/::
    send,^.
    return
; Shift========================================================================
  ; 1行目
  +q::
    send,+`%
    return
  +w::
    send,+{F9}
    return
  +e::
    send,+{F10}
    return
  +r::
    send,+{F11}
    return
  +t::
    send,+{F12}
    return
  +y::
    send,+-
    return
  +u::
    send,+7
    return
  +i::
    send,+8
    return
  +o::
    send,+9
    return
  +p::
    send,+/
    return
  ; 2行目
  +a::
    send,+{=}
    return
  +s::
    send,+{F5}
    return
  +d::
    send,+{F6}
    return
  +f::
    send,+{F7}
    return
  +g::
    send,+{F8}
    return
  +h::
    send,+{+}
    return
  +j::
    send,+4
    return
  +k::
    send,+5
    return
  +l::
    send,+6
    return
  +`;::
    send,+*
    return
  ; 3行目
  +z::
    return
  +x::
    send,+{F1}
    return
  +c::
    send,+{F2}
    return
  +v::
    send,+{F3}
    return
  +b::
    send,+{F4}
    return
  +n::
    send,+0
    return
  +m::
    send,+1
    return
  +vkBC::
    send,+2
    return
  +.::
    send,+3
    return
  +/::
    send,+.
    return
; Alt========================================================================
  ; 1行目
  !q::
    send,!`%
    return
  !w::
    send,!{F9}
    return
  !e::
    send,!{F10}
    return
  !r::
    send,!{F11}
    return
  !t::
    send,!{F12}
    return
  !y::
    send,!-
    return
  !u::
    send,!7
    return
  !i::
    send,!8
    return
  !o::
    send,!9
    return
  !p::
    send,!/
    return
  ; 2行目
  !a::
    send,!{=}
    return
  !s::
    send,!{F5}
    return
  !d::
    send,!{F6}
    return
  !f::
    send,!{F7}
    return
  !g::
    send,!{F8}
    return
  !h::
    send,!{+}
    return
  !j::
    send,!4
    return
  !k::
    send,!5
    return
  !l::
    send,!6
    return
  !`;::
    send,!*
    return
  ; 3行目
  !z::
    return
  !x::
    send,!{F1}
    return
  !c::
    send,!{F2}
    return
  !v::
    send,!{F3}
    return
  !b::
    send,!{F4}
    return
  !n::
    send,!0
    return
  !m::
    send,!1
    return
  !vkBC::
    send,!2
    return
  !.::
    send,!3
    return
  !/::
    send,!.
    return
#if
;;================================================================================================================================
;; Arrow
;;================================================================================================================================
#if get_key_layout_mode("Arrow")
  ; 1行目
  q::
    return
  w::
    return
  e::
    send,{Up}
    return
  ^e::
    send,^{Up}
    return
  +e::
    send,+{Up}
    return
  r::
    return
  t::
    return
  y::
    return
  u::
    return
  i::
    send,{PgUp}
    return
  ^i::
    send,^{PgUp}
    return
  +i::
    send,+{PgUp}
    return
  o::
    return
  p::
    return
  ; 2行目
  a::
    return
  s::
    send,{Left}
    return
  ^s::
    send,^{Left}
    return
  +s::
    send,+{Left}
    return
  d::
    send,{Down}
    return
  ^d::
    send,^{Down}
    return
  +d::
    send,+{Down}
    return
  f::
    send,{Right}
    return
  ^f::
    send,^{Right}
    return
  +f::
    send,+{Right}
    return
  g::
    return
  h::
    return
  j::
    send,{Home}
    return
  ^j::
    send,^{Home}
    return
  +j::
    send,+{Home}
    return
  k::
    send,{PgDn}
    return
  ^k::
    send,^{PgDn}
    return
  +k::
    send,+{PgDn}
    return
  l::
    send,{End}
    return
  `;::
    return
  ; 3行目
  z::
    return
  x::
    return
  c::
    return
  v::
    return
  b::
    return
  n::
    return
  m::
    return
  vkBC::
    return
  .::
    return
  /::
    return
#if

get_num_for_key_layout_mode(str){
  return % (str = "Num") ? 1 
      : (str = "Sign") ? 2 
      : (str = "Arrow") ? 3
      : 0
}

get_str_for_key_layout_mode(num){
  return % (num = 1) ? "Num"
      : (num = 2) ? "Sign"
      : (num = 3) ? "Arrow"
      : "Normal"
}

initialize_key_layout_mode(){
  global
  key_layout_mode := 0
}

set_key_layout_mode(str){
  global key_layout_mode
  global RemoveToolTip_time
    
  ret := get_num_for_key_layout_mode(str)
  ;; toggle
  key_layout_mode := (key_layout_mode = ret) ? 0 : ret
  
  if (0 < ret) {
    ToolTip, % "-> " get_str_for_key_layout_mode(key_layout_mode)
    SetTimer, RemoveToolTip, %RemoveToolTip_time%
  }

  return key_layout_mode
}

get_key_layout_mode(str){
  global key_layout_mode
  
  ret := get_num_for_key_layout_mode(str)
  
  return % (ret = key_layout_mode) ? True : False
}

RemoveToolTip:
  SetTimer, RemoveToolTip, Off
  ToolTip
return