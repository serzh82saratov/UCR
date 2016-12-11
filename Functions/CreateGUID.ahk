; By jNizM - https://autohotkey.com/boards/viewtopic.php?f=6&t=4732&p=87497#p87497
CreateGUID(){
	VarSetCapacity(foo_guid, 16, 0)
	if !(DllCall("ole32.dll\CoCreateGuid", "Ptr", &foo_guid))
	{
		VarSetCapacity(tmp_guid, 38 * 2 + 1)
		DllCall("ole32.dll\StringFromGUID2", "Ptr", &foo_guid, "Ptr", &tmp_guid, "Int", 38 + 1)
		fin_guid := StrGet(&tmp_guid, "UTF-16")
	}
	return SubStr(fin_guid, 2, 36)
}
