var ezWebInstaller2_Options = "";
var ezWebInstaller2_InfoVars = "";

function AddOption(key, val)
{
	var temp = key;
	temp += "=";
	temp += val;
	temp += "\r\n";
	ezWebInstaller2_Options += temp;
}

function AddInfoVar(key, val)
{
	var temp = ("<" + key + ">");
	temp += val;
	temp += ("</" + key + ">\r\n");
	ezWebInstaller2_InfoVars += temp;
}

function GetSection()
{
	var OptionSection = "[Option]\r\n";
	var res = OptionSection;
	res += ezWebInstaller2_Options;

	var VarSection = "[Vars]\r\n";
	res += VarSection;

	res += "<INFO>\r\n";
	res += ezWebInstaller2_InfoVars;
	res += "</INFO>\r\n";

	return res;
}

function ReplaceCode(val)
{
	var res = val.replace(/&/g, "&amp;");
	res = res.replace(/\//g, "&slsh;");
	return res;
}

function object_patch(version)
{
	object = '';
	object += '<object id="inst" classid="clsid:6AC22F17-8789-4e95-884F-B5FA54EFC4BC" codebase="SMSDacomWebInstaller.cab#version='+version+'"></object>';
	document.write(object);
}