;*******************************************************
; Want a clear path for learning AutoHotkey; Take a look at our AutoHotkey Udemy courses.  They're structured in a way to make learning AHK EASY
; Right now you can  get a coupon code here: https://the-Automator.com/Learn
;************************************************************
IniRead, API_Token ,Auth.ini,API, Token

F3::
	clipboard := ""
	Sleep 100
	Send ^c
	ClipWait, 1
	my_Text := clipboard
	my_Text := "rephrase professionally `n" . my_Text
	my_Text := UrlEncode(my_Text)
;~	MsgBox % my_Text
   
;~  Endpoint:="http://api.openweathermap.org/data/2.5/weather" ; Review https://duckduckgo.com/api for documentation
Endpoint:="http://localhost:8080/ai/simple" ; Review https://duckduckgo.com/api for documentation
;~  QueryString:=QueryString_Builder({"zip":"75019,us","APPID":API_Token})
;~  QueryString:=QueryString_Builder({"lat":"32.9915376","lon":"-96.9799073","APPID":API_Token})
;~  QueryString:=QueryString_Builder({"mode":"xml","cnt":"16","units":"imperial","id":"4683217","APPID":API_Token})
QueryString:=QueryString_Builder({"message": my_Text})

;******API call************************
HTTP := ComObjCreate("WinHttp.WinHttpRequest.5.1") ;Create COM Object
HTTP.Open("GET", Endpoint . QueryString) ;GET & POST are most frequent, Make sure you UPPERCASE
HTTP.Send()
Response_Data:= HTTP.ResponseText ;Save the text that is returned
clipboard := Response_Data
Send ^v
;~MsgBox % Response_Data

QueryString_Builder(x){
	for a,b in x
		String.=(A_Index=1?"?":"&") a "=" b
	return String
}

UrlEncode( String )
{
	OldFormat := A_FormatInteger
	SetFormat, Integer, H

	Loop, Parse, String
	{
		if A_LoopField is alnum
		{
			Out .= A_LoopField
			continue
		}
		Hex := SubStr( Asc( A_LoopField ), 3 )
		Out .= "%" . ( StrLen( Hex ) = 1 ? "0" . Hex : Hex )
	}

	SetFormat, Integer, %OldFormat%

	return Out
}