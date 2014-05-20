<!-- Copyright 2004, Ralink Technology Corporation All Rights Reserved. -->
<html>
<head>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="-1">
<META http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="/lang/b28n.js"></script>
<link rel="stylesheet" href="/style/normal_ws.css" type="text/css">
<title>Wireless Distribution System</title>

<script language="JavaScript" type="text/javascript">
Butterlate.setTextDomain("wireless");
var langtype = "<% getLangType(); %>";
var wdsMode  = '<% getCfgZero(1, "WdsEnable"); %>';
var wdsList  = '<% getCfgGeneral(1, "WdsList"); %>';
var wdsPhyMode  = '<% getCfgZero(1, "WdsPhyMode"); %>';
var wdsEncrypType  = '<% getCfgGeneral(1, "WdsEncrypType"); %>';
var wdsEncrypKey0  = '<% getCfgGeneral(1, "Wds0Key"); %>';
var wdsEncrypKey1  = '<% getCfgGeneral(1, "Wds1Key"); %>';
var wdsEncrypKey2  = '<% getCfgGeneral(1, "Wds2Key"); %>';
var wdsEncrypKey3  = '<% getCfgGeneral(1, "Wds3Key"); %>';

function style_display_on()
{
	if (window.ActiveXObject)
	{ // IE
		return "block";
	}
	else if (window.XMLHttpRequest)
	{ // Mozilla, Safari,...
		return "table-row";
	}
}

function WdsSecurityOnChange(i)
{
	if (eval("document.wireless_wds.wds_encryp_type"+i).options.selectedIndex >= 1)
		eval("document.wireless_wds.wds_encryp_key"+i).disabled = false;
	else
		eval("document.wireless_wds.wds_encryp_key"+i).disabled = true;
}

function WdsModeOnChange()
{
	document.getElementById("div_wds_phy_mode").style.visibility = "hidden";
	document.getElementById("div_wds_phy_mode").style.display = "none";
	document.wireless_wds.wds_phy_mode.disabled = true;
	document.getElementById("div_wds_encryp_type0").style.visibility = "hidden";
	document.getElementById("div_wds_encryp_type0").style.display = "none";
	document.wireless_wds.wds_encryp_type0.disabled = true;
	//document.getElementById("div_wds_encryp_type1").style.visibility = "hidden";
	//document.getElementById("div_wds_encryp_type1").style.display = "none";
	//document.wireless_wds.wds_encryp_type1.disabled = true;
	//document.getElementById("div_wds_encryp_type2").style.visibility = "hidden";
	//document.getElementById("div_wds_encryp_type2").style.display = "none";
	//document.wireless_wds.wds_encryp_type2.disabled = true;
	//document.getElementById("div_wds_encryp_type3").style.visibility = "hidden";
	//document.getElementById("div_wds_encryp_type3").style.display = "none";
	//document.wireless_wds.wds_encryp_type3.disabled = true;
	document.getElementById("div_wds_encryp_key0").style.visibility = "hidden";
	document.getElementById("div_wds_encryp_key0").style.display = "none";
	document.wireless_wds.wds_encryp_key0.disabled = true;
	//document.getElementById("div_wds_encryp_key1").style.visibility = "hidden";
	//document.getElementById("div_wds_encryp_key1").style.display = "none";
	//document.wireless_wds.wds_encryp_key1.disabled = true;
	//document.getElementById("div_wds_encryp_key2").style.visibility = "hidden";
	//document.getElementById("div_wds_encryp_key2").style.display = "none";
	//document.wireless_wds.wds_encryp_key2.disabled = true;
	//document.getElementById("div_wds_encryp_key3").style.visibility = "hidden";
	//document.getElementById("div_wds_encryp_key3").style.display = "none";
	//document.wireless_wds.wds_encryp_key3.disabled = true;
	document.getElementById("wds_mac_list_1").style.visibility = "hidden";
	document.getElementById("wds_mac_list_1").style.display = "none";
	document.wireless_wds.wds_1.disabled = true;
	document.getElementById("wds_mac_list_2").style.visibility = "hidden";
	document.getElementById("wds_mac_list_2").style.display = "none";
	document.wireless_wds.wds_2.disabled = true;
	document.getElementById("wds_mac_list_3").style.visibility = "hidden";
	document.getElementById("wds_mac_list_3").style.display = "none";
	document.wireless_wds.wds_3.disabled = true;
	document.getElementById("wds_mac_list_4").style.visibility = "hidden";
	document.getElementById("wds_mac_list_4").style.display = "none";
	document.wireless_wds.wds_4.disabled = true;

	if (document.wireless_wds.wds_mode.options.selectedIndex >= 1) {
		document.getElementById("div_wds_phy_mode").style.visibility = "visible";
		document.getElementById("div_wds_phy_mode").style.display = style_display_on();
		document.wireless_wds.wds_phy_mode.disabled = false;
		document.getElementById("div_wds_encryp_type0").style.visibility = "visible";
		document.getElementById("div_wds_encryp_type0").style.display = style_display_on();
		document.wireless_wds.wds_encryp_type0.disabled = false;
		//document.getElementById("div_wds_encryp_type1").style.visibility = "visible";
		//document.getElementById("div_wds_encryp_type1").style.display = style_display_on();
		//document.wireless_wds.wds_encryp_type1.disabled = false;
		//document.getElementById("div_wds_encryp_type2").style.visibility = "visible";
		//document.getElementById("div_wds_encryp_type2").style.display = style_display_on();
		//document.wireless_wds.wds_encryp_type2.disabled = false;
		//document.getElementById("div_wds_encryp_type3").style.visibility = "visible";
		//document.getElementById("div_wds_encryp_type3").style.display = style_display_on();
		//document.wireless_wds.wds_encryp_type3.disabled = false;
		document.getElementById("div_wds_encryp_key0").style.visibility = "visible";
		document.getElementById("div_wds_encryp_key0").style.display = style_display_on();
		document.wireless_wds.wds_encryp_key0.disabled = false;
		//document.getElementById("div_wds_encryp_key1").style.visibility = "visible";
		//document.getElementById("div_wds_encryp_key1").style.display = style_display_on();
		//document.wireless_wds.wds_encryp_key1.disabled = false;
		//document.getElementById("div_wds_encryp_key2").style.visibility = "visible";
		//document.getElementById("div_wds_encryp_key2").style.display = style_display_on();
		//document.wireless_wds.wds_encryp_key2.disabled = false;
		//document.getElementById("div_wds_encryp_key3").style.visibility = "visible";
		//document.getElementById("div_wds_encryp_key3").style.display = style_display_on();
		//document.wireless_wds.wds_encryp_key3.disabled = false;
	}

	WdsSecurityOnChange(0);
	//WdsSecurityOnChange(1);
	//WdsSecurityOnChange(2);
	//WdsSecurityOnChange(3);

	if (document.wireless_wds.wds_mode.options.selectedIndex >= 2) {
		document.getElementById("wds_mac_list_1").style.visibility = "visible";
		document.getElementById("wds_mac_list_1").style.display = style_display_on();
		document.wireless_wds.wds_1.disabled = false;
		document.getElementById("wds_mac_list_2").style.visibility = "visible";
		document.getElementById("wds_mac_list_2").style.display = style_display_on();
		document.wireless_wds.wds_2.disabled = false;
		document.getElementById("wds_mac_list_3").style.visibility = "visible";
		document.getElementById("wds_mac_list_3").style.display = style_display_on();
		document.wireless_wds.wds_3.disabled = false;
		document.getElementById("wds_mac_list_4").style.visibility = "visible";
		document.getElementById("wds_mac_list_4").style.display = style_display_on();
		document.wireless_wds.wds_4.disabled = false;
	}
}

function initTranslation()
{
	var e = document.getElementById("basicWDSTitle");
	e.innerHTML = _("basic wds title");
	e = document.getElementById("basicWDSTitle1");
	e.innerHTML = _("basic wds title1");
	e = document.getElementById("basicWDSTitleSetting");
	e.innerHTML = _("basic wds title setting");
	e = document.getElementById("basicWDSMode");
	e.innerHTML = _("basic wds mode");
	e = document.getElementById("basicWDSDisable");
	e.innerHTML = _("wireless disable");
	e = document.getElementById("basicWDSPhyMode");
	e.innerHTML = _("basic wds phy mode");
	e = document.getElementById("basicWDSEncrypType");
	e.innerHTML = _("basic wds encryp type");
	e = document.getElementById("basicWDSEncrypKey");
	e.innerHTML = _("basic wds encryp key");
	e = document.getElementById("basicWDSAPMacAddr");
	e.innerHTML = _("basic wds ap macaddr");
	
	e = document.getElementById("wdsApply");
	e.value = _("wireless apply");
	e = document.getElementById("wdsCancel");
	e.value = _("wireless cancel");
}

function initValue()
{
	var wdslistArray;
	var wdsEncTypeArray;

	initTranslation();

	wdsMode = 1*wdsMode;
	if (wdsMode == 0)
		document.wireless_wds.wds_mode.options.selectedIndex = 0;
	else if (wdsMode == 4)
		document.wireless_wds.wds_mode.options.selectedIndex = 1;
	else if (wdsMode == 2)
		document.wireless_wds.wds_mode.options.selectedIndex = 2;
	else if (wdsMode == 3)
		document.wireless_wds.wds_mode.options.selectedIndex = 3;

	if (wdsPhyMode.indexOf("CCK") >= 0 || wdsPhyMode.indexOf("cck") >= 0)
		document.wireless_wds.wds_phy_mode.options.selectedIndex = 0;
	else if (wdsPhyMode.indexOf("OFDM") >= 0 || wdsPhyMode.indexOf("ofdm") >= 0)
		document.wireless_wds.wds_phy_mode.options.selectedIndex = 1;
	else if (wdsPhyMode.indexOf("HTMIX") >= 0 || wdsPhyMode.indexOf("htmix") >= 0)
		document.wireless_wds.wds_phy_mode.options.selectedIndex = 2;
	/*
	else if (wdsPhyMode.indexOf("GREENFIELD") >= 0 || wdsPhyMode.indexOf("greenfield") >= 0)
		document.wireless_wds.wds_phy_mode.options.selectedIndex = 3;
	*/

	if (wdsEncrypType != "") {
		wdsEncTypeArray = wdsEncrypType.split(";");
		for (i = 1; i <= wdsEncTypeArray.length; i++) {
			k = i - 1;
			if (wdsEncTypeArray[k] == "NONE" || wdsEncTypeArray[k] == "none")
				eval("document.wireless_wds.wds_encryp_type"+k).options.selectedIndex = 0;
			else if (wdsEncTypeArray[k] == "WEP" || wdsEncTypeArray[k] == "wep")
				eval("document.wireless_wds.wds_encryp_type"+k).options.selectedIndex = 1;
			else if (wdsEncTypeArray[k] == "TKIP" || wdsEncTypeArray[k] == "tkip")
				eval("document.wireless_wds.wds_encryp_type"+k).options.selectedIndex = 2;
			else if (wdsEncTypeArray[k] == "AES" || wdsEncTypeArray[k] == "aes")
				eval("document.wireless_wds.wds_encryp_type"+k).options.selectedIndex = 3;
		}
	}

	WdsModeOnChange();

	document.wireless_wds.wds_encryp_key0.value = wdsEncrypKey0;
	//document.wireless_wds.wds_encryp_key1.value = wdsEncrypKey1;
	//document.wireless_wds.wds_encryp_key2.value = wdsEncrypKey2;
	//document.wireless_wds.wds_encryp_key3.value = wdsEncrypKey3;

	if (wdsList != "") {
		wdslistArray = wdsList.split(";");
		for (i = 1; i <= wdslistArray.length; i++)
			eval("document.wireless_wds.wds_"+i).value = wdslistArray[i - 1];
	}
}

function CheckEncKey(i)
{
	var key;
	key = eval("document.wireless_wds.wds_encryp_key"+i).value;

	if (eval("document.wireless_wds.wds_encryp_type"+i).options.selectedIndex == 1) {
		if (key.length == 10 || key.length == 26) {
			var re = /[A-Fa-f0-9]{10,26}/;
			if (!re.test(key)) {
				if(langtype=="zhcn")
    	  alert("WDS"+i+"密码应该是10/26十六进制密码或5/13的ASCII密码");
    	  else
				alert("WDS"+i+"Key should be a 10/26 hexdecimal or a 5/13 ascii");
				eval("document.wireless_wds.wds_encryp_key"+i).focus();
				eval("document.wireless_wds.wds_encryp_key"+i).select();
				return false;
			}
			else
				return true;
		}
		else if (key.length == 5 || key.length == 13) {
			return true;
		}
		else {
		if(langtype=="zhcn")
    	  alert("WDS"+i+"密码应该是10/26十六进制密码或5/13的ASCII密码");
    	  else
			alert("WDS"+i+"Key should be a 10/26 hexdecimal or a 5/13 ascii");
			eval("document.wireless_wds.wds_encryp_key"+i).focus();
			eval("document.wireless_wds.wds_encryp_key"+i).select();
			return false;
		}
	}
	else if (eval("document.wireless_wds.wds_encryp_type"+i).options.selectedIndex == 2 ||
			eval("document.wireless_wds.wds_encryp_type"+i).options.selectedIndex == 3)
	{
		if (key.length < 8 || key.length > 64) {
			if(langtype=="zhcn")
    	  alert("WDS"+i+"密码应该是8-64位的");
    	  else
			alert("WDS"+i+"Key should be with length 8~64");
			eval("document.wireless_wds.wds_encryp_key"+i).focus();
			eval("document.wireless_wds.wds_encryp_key"+i).select();
			return false;
		}
		if (key.length == 64) {
			var re = /[A-Fa-f0-9]{64}/;
			if (!re.test(key)) {
				if(langtype=="zhcn")
    	  alert("WDS"+i+"密码应该是64位十六进制密码");
    	  else
				alert("WDS"+i+"Key should be a 64 hexdecimal");
				eval("document.wireless_wds.wds_encryp_key"+i).focus();
				eval("document.wireless_wds.wds_encryp_key"+i).select();
				return false;
			}
			else
				return true;
		}
		else
			return true;
	}
	return true;
}

function CheckValue()
{
	var all_wds_list;
	var all_wds_enc_type;

	//all_wds_enc_type = document.wireless_wds.wds_encryp_type0.value+";"+
		//document.wireless_wds.wds_encryp_type1.value+";"+
		//document.wireless_wds.wds_encryp_type2.value+";"+
		//document.wireless_wds.wds_encryp_type3.value;
	all_wds_enc_type = document.wireless_wds.wds_encryp_type0.value;	
	document.wireless_wds.wds_encryp_type.value = all_wds_enc_type;

	//if (!CheckEncKey(0) || !CheckEncKey(1) || !CheckEncKey(2) || !CheckEncKey(3))
	if (!CheckEncKey(0))
		return false;

	all_wds_list = '';
	if (document.wireless_wds.wds_mode.options.selectedIndex >= 2)
	{
		var re = /[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}/;
		for (i = 1; i <= 4; i++)
		{
			if (eval("document.wireless_wds.wds_"+i).value == "")
				continue;
			if (!re.test(eval("document.wireless_wds.wds_"+i).value)) {
				if(langtype=="zhcn")
    	  alert("WDS的AP站点的MAC地址出错(XX:XX:XX:XX:XX:XX)");
    	  else
				alert("Please fill WDS remote AP MAC Address in correct format! (XX:XX:XX:XX:XX:XX)");
				eval("document.wireless_wds.wds_"+i).focus();
				eval("document.wireless_wds.wds_"+i).select();
				return false;
			}
			else {
				all_wds_list += eval("document.wireless_wds.wds_"+i).value;
				all_wds_list += ';';
			}
		}
		if (all_wds_list == "")
		{
			if(langtype=="zhcn")
    	  alert("WDS无线AP的MAC地址这空");
    	  else
			alert("WDS remote AP MAC Address are empty !!!");
			document.wireless_wds.wds_1.focus();
			document.wireless_wds.wds_1.select(); 
			return false;
		}
		else
		{
			document.wireless_wds.wds_list.value = all_wds_list;
			document.wireless_wds.wds_1.disabled = true;
			document.wireless_wds.wds_2.disabled = true;
			document.wireless_wds.wds_3.disabled = true;
			document.wireless_wds.wds_4.disabled = true;
		}
	}

	return true;
}
</script>
</head>


<body onLoad="initValue()">
<table class="body"><tr><td>

<h1 id="basicWDSTitle1">Wireless Distribution System</h1>
<p id="basicWDSTitleSetting">Wireless Distribution System Settings</p>

<form method=post name=wireless_wds action="/goform/wirelessWds" onSubmit="return CheckValue()">
<table width="540" border="0" cellspacing="1" cellpadding="3" bordercolor="#9BABBD">
  <tr>
    <td id="basicWDSTitle" colspan="2"  class="title">Wireless Distribution System(WDS)</td>
  </tr>
  <tr>
    <td id="basicWDSMode" class="head">WDS Mode</td>
    <td class="content">
      <select name="wds_mode" id="wds_mode" size="1" onchange="WdsModeOnChange()">
	<option value=0 id="basicWDSDisable">Disable</option>
	<option value=4>Lazy Mode</option>
	<option value=2>Bridge Mode</option>
	<option value=3>Repeater Mode</option>
      </select>
    </td>
  </tr>
  <tr id="div_wds_phy_mode" name="div_wds_phy_mode"> 
    <td id="basicWDSPhyMode" class="head">Phy Mode</td>
    <td class="content">
      <select name="wds_phy_mode" id="wds_phy_mode" size="1">
	<option value="CCK;CCK;CCK;CCK">CCK</option>
	<option value="OFDM;OFDM;OFDM;OFDM">OFDM</option>
	<option value="HTMIX;HTMIX;HTMIX;HTMIX">HTMIX</option>
	<!--
	<option value="GREENFIELD;GREENFIELD;GREENFIELD;GREENFIELD">GREENFIELD</option>
	-->
      </select>
    </td>
  </tr>

  <tr id="div_wds_encryp_type0" name="div_wds_encryp_type0">
    <td id="basicWDSEncrypType" class="head">EncrypType</td>
    <td class="content">
      <select name="wds_encryp_type0" id="wds_encryp_type0" size="1" onchange="WdsSecurityOnChange(0)">
	<option value="NONE">NONE</option>
	<option value="WEP">WEP</option>
	<option value="TKIP">TKIP</option>
	<option value="AES">AES</option>
      </select>
    </td>
  </tr>
  <tr id="div_wds_encryp_key0" name="div_wds_encryp_key0">
    <td id="basicWDSEncrypKey" class="head">Encryp Key</td>
    <td class="content"><input type=text name=wds_encryp_key0 size=28 maxlength=64 value=""></td>
  </tr>

<!--
  <tr id="div_wds_encryp_type1" name="div_wds_encryp_type1">
    <td id="basicWDSEncrypType">EncrypType</td>
    <td>
      <select name="wds_encryp_type1" id="wds_encryp_type1" size="1" onchange="WdsSecurityOnChange(1)">
	<option value="NONE">NONE</option>
	<option value="WEP">WEP</option>
	<option value="TKIP">TKIP</option>
	<option value="AES">AES</option>
      </select>
    <td>
  </tr>
  <tr id="div_wds_encryp_key1" name="div_wds_encryp_key1">
    <td id="basicWDSEncrypKey">Encryp Key</td>
    <td><input type=text name=wds_encryp_key1 size=28 maxlength=64 value=""></td>
  </tr>

  <tr id="div_wds_encryp_type2" name="div_wds_encryp_type2">
    <td id="basicWDSEncrypType">EncrypType</td>
    <td>
      <select name="wds_encryp_type2" id="wds_encryp_type2" size="1" onchange="WdsSecurityOnChange(2)">
	<option value="NONE">NONE</option>
	<option value="WEP">WEP</option>
	<option value="TKIP">TKIP</option>
	<option value="AES">AES</option>
      </select>
    <td>
  </tr>
  <tr id="div_wds_encryp_key2" name="div_wds_encryp_key2">
    <td id="basicWDSEncrypKey">Encryp Key</td>
    <td><input type=text name=wds_encryp_key2 size=28 maxlength=64 value=""></td>
  </tr>

  <tr id="div_wds_encryp_type3" name="div_wds_encryp_type3">
    <td id="basicWDSEncrypType">EncrypType</td>
    <td>
      <select name="wds_encryp_type3" id="wds_encryp_type3" size="1" onchange="WdsSecurityOnChange(3)">
	<option value="NONE">NONE</option>
	<option value="WEP">WEP</option>
	<option value="TKIP">TKIP</option>
	<option value="AES">AES</option>
      </select>
    <td>
  </tr>
  <tr id="div_wds_encryp_key3" name="div_wds_encryp_key3">
    <td id="basicWDSEncrypKey">Encryp Key</td>
    <td><input type=text name=wds_encryp_key3 size=28 maxlength=64 value=""></td>
  </tr>
  -->
  
  <input type="hidden" name="wds_encryp_type" value="">

  <tr id="wds_mac_list_1" name="wds_mac_list_1">
    <td id="basicWDSAPMacAddr" class="head">AP MAC Address</td>
    <td class="content"><input type=text name=wds_1 size=20 maxlength=17 value=""></td>
  </tr>
  <tr id="wds_mac_list_2" name="wds_mac_list_2">
    <td id="basicWDSAPMacAddr" class="head">AP MAC Address</td>
    <td class="content"><input type=text name=wds_2 size=20 maxlength=17 value=""></td>
  </tr>
  <tr id="wds_mac_list_3" name="wds_mac_list_3">
    <td id="basicWDSAPMacAddr" class="head">AP MAC Address</td>
    <td class="content"><input type=text name=wds_3 size=20 maxlength=17 value=""></td>
  </tr>
  <tr id="wds_mac_list_4" name="wds_mac_list_4">
    <td id="basicWDSAPMacAddr" class="head">AP MAC Address</td>
    <td class="content"><input type=text name=wds_4 size=20 maxlength=17 value=""></td>
  </tr>
  <input type="hidden" name="wds_list" value="">
  <tr align="center">
    <td colspan="2" class="content">
    	<input type=submit style="{width:120px;}" value="Apply" id="wdsApply"> &nbsp; &nbsp;
      <input type=reset  style="{width:120px;}" value="Cancel" id="wdsCancel" onClick="window.location.reload()">
    </td>
  </tr>
</table>
</form>

</td></tr></table>
</body>
</html>

