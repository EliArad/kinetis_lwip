#include "lwip/opt.h"
#include "httpserver-netconn.h"
#include <stdio.h>
#include "lwip/netif.h"
#include "lwip/sys.h"
#include "lwip/arch.h"
#include "lwip/api.h"
#include "lwip/tcpip.h"
#include "netif/etharp.h"
#include "ethernetif.h"
#include "board.h"
#include <stdlib.h>
#include "http_parser.h"
#include <ctype.h>
#include "dictionary.h"
#include <setjmp.h>

#define try do{ jmp_buf ex_buf__; if( !setjmp(ex_buf__) ){
#define catch } else {
#define ETRY } }while(0)
#define throw longjmp(ex_buf__, 1)



void getShortName(char *longName, char *shortName)
{

	if (stricmp(longName, "index.html") == 0)
	{
		strcpy(shortName, "INDEX~1.HTM");
		return;
	}


	// i have a mixed in index.html and actual on disk
	if (stricmp(longName, "angular.js") == 0)
	{
		strcpy(shortName, "AN8E6C~1.JS");
		return;
	}
	if (stricmp(longName, "diagCtrl.js") == 0)
	{
		strcpy(shortName, "diagCtrl.js");
		return;
	}
	if (stricmp(longName, "header_ctrl.js") == 0)
	{
		strcpy(shortName, "HEADER~1.JS");
		return;
	}
	if (stricmp(longName, "jquery.min.js") == 0)
	{
		strcpy(shortName, "JQUERY~1.JS");
		return;
	}
	if (stricmp(longName, "main.js") == 0)
	{
		strcpy(shortName, "main.js");
		return;
	}
	if (stricmp(longName, "manual_ctrl.js") == 0)
	{
		strcpy(shortName, "MANUAL~1.JS");
		return;
	}
	if (stricmp(longName, "paCalibCtrl.js") == 0)
	{
		strcpy(shortName, "PACALI~1.JS");
		return;
	}
	if (stricmp(longName, "recipes_ctrl.js") == 0)
	{
		strcpy(shortName, "RECIPE~1.JS");
		return;
	}
	if (stricmp(longName, "settings_ctrl.js") == 0)
	{
		strcpy(shortName, "SETTIN~1.JS");
		return;
	}
	if (stricmp(longName, "technician_ctrl.js") == 0)
	{
		strcpy(shortName, "TECHNI~1.JS");
		return;
	}
	if (stricmp(longName, "time_picker.js") == 0)
	{
		strcpy(shortName, "TIME_P~1.JS");
		return;
	}
	if (stricmp(longName, "upgrade_ctrl.js") == 0)
	{
		strcpy(shortName, "UPGRAD~1.JS");
		return;
	}
	if (stricmp(longName, "workingModes_ctrl.js") == 0)
	{
		strcpy(shortName, "WORKIN~1.JS");
		return;
	}
	if (stricmp(longName, "angular-cookies.min.js") == 0)
	{
		strcpy(shortName, "AN23DE~1.JS");
		return;
	}
	if (stricmp(longName, "angular-file-upload-shim.min.js") == 0)
	{
		strcpy(shortName, "ANGULA~2.JS");
		return;
	}
	if (stricmp(longName, "angular-file-upload.min.js") == 0)
	{
		strcpy(shortName, "ANGULA~3.JS");
		return;
	}
	if (stricmp(longName, "angular-route.js") == 0)
	{
		strcpy(shortName, "ANGULA~1.JS");
		return;
	}

	if (stricmp(longName, "angular.min.js") == 0)
	{
		strcpy(shortName, "AN8E6C~1.JS");
		return;
	}
	if (stricmp(longName, "bootstrap.min.js") == 0)
	{
		strcpy(shortName, "BOOTST~1.JS");
		return;
	}
	if (stricmp(longName, "_ui-bootstrap-tpls-0.13.2.js") == 0)
	{
		strcpy(shortName, "_UI-BO~1.JS");
		return;
	}
	if (stricmp(longName, "Chart.js") == 0)
	{
		strcpy(shortName, "Chart.js");
		return;
	}
	if (stricmp(longName, "ng-table.js") == 0)
	{
		strcpy(shortName, "ng-table.js");
		return;
	}

	if (stricmp(longName, "oven_sm.js") == 0)
	{
		strcpy(shortName, "oven_sm.js");
		return;
	}

	if (stricmp(longName, "tech_sm.js") == 0)
	{
		strcpy(shortName, "tech_sm.js");
		return;
	}
	if (stricmp(longName, "vecton_sm.js") == 0)
	{
		strcpy(shortName, "VECTON~1.JS");
		return;
	}
	if (stricmp(longName, "angular-sanitize.min.js") == 0)
	{
		strcpy(shortName, "ANGULA~2.JS");
		return;
	}
	if (stricmp(longName, "angular-sanitize.min.js.map") == 0)
	{
		strcpy(shortName, "ANGULA~2.MAP");
		return;
	}
	if (stricmp(longName, "angular.min.js") == 0)
	{
		strcpy(shortName, "ANGULA~1.JS");
		return;
	}
	if (stricmp(longName, "bootstrap-decorator.js") == 0)
	{
		strcpy(shortName, "BOOTST~1.JS");
		return;
	}
	if (stricmp(longName, "bootstrap-decorator.min.js") == 0)
	{
		strcpy(shortName, "BOOTST~2.JS");
		return;
	}
	if (stricmp(longName, "ObjectPath.js") == 0)
	{
		strcpy(shortName, "OBJECT~1.JS");
		return;
	}
	if (stricmp(longName, "schema-form.js") == 0)
	{
		strcpy(shortName, "SCHEMA~1.JS");
		return;
	}
	if (stricmp(longName, "schema-form.min.js") == 0)
	{
		strcpy(shortName, "SCHEMA~2.JS");
		return;
	}
	if (stricmp(longName, "tv4.js") == 0)
	{
		strcpy(shortName, "tv4.js");
		return;
	}
	if (stricmp(longName, "three.min.js") == 0)
	{
		strcpy(shortName, "THREEM~1.JS");
		return;
	}
	if (stricmp(longName, "OrbitControls.js") == 0)
	{
		strcpy(shortName, "ORBITC~1.JS");
		return;
	}
	if (stricmp(longName, "gunzip.min.js") == 0)
	{
		strcpy(shortName, "GUNZIP~1.JS");
		return;
	}
	if (stricmp(longName, "util.js") == 0)
	{
		strcpy(shortName, "util.js");
		return;
	}
	if (stricmp(longName, "ContButtonDis.png") == 0)
	{
		strcpy(shortName, "CONTBU~1.PNG");
		return;
	}
	if (stricmp(longName, "ContButtonEna.png") == 0)
	{
		strcpy(shortName, "CONTBU~2.PNG");
		return;
	}
	if (stricmp(longName, "CriticalCirc.png") == 0)
	{
		strcpy(shortName, "CRITIC~1.PNG");
		return;
	}
	if (stricmp(longName, "delete.png") == 0)
	{
		strcpy(shortName, "delete.png");
		return;
	}
	if (stricmp(longName, "DoorClosedCirc.png") == 0)
	{
		strcpy(shortName, "DOORCL~1.PNG");
		return;
	}
	if (stricmp(longName, "DoorOpenCirc.png") == 0)
	{
		strcpy(shortName, "DOOROP~1.PNG");
		return;
	}
	if (stricmp(longName, "duplicate.png") == 0)
	{
		strcpy(shortName, "DUPLIC~1.PNG");
		return;
	}
	if (stricmp(longName, "edit.png") == 0)
	{
		strcpy(shortName, "edit.png");
		return;
	}
	if (stricmp(longName, "fail.png") == 0)
	{
		strcpy(shortName, "fail.png");
		return;
	}
	if (stricmp(longName, "led-off.png") == 0)
	{
		strcpy(shortName, "led-off.png");
		return;
	}
	if (stricmp(longName, "led-on.png") == 0)
	{
		strcpy(shortName, "led-on.png");
		return;
	}
	if (stricmp(longName, "logo.jpg") == 0)
	{
		strcpy(shortName, "logo.jpg");
		return;
	}
	if (stricmp(longName, "logo.png") == 0)
	{
		strcpy(shortName, "logo.png");
		return;
	}
	if (stricmp(longName, "MajorCirc.png") == 0)
	{
		strcpy(shortName, "MAJORC~1.PNG");
		return;
	}
	if (stricmp(longName, "MinorCirc.png") == 0)
	{
		strcpy(shortName, "MINORC~1.PNG");
		return;
	}
	if (stricmp(longName, "NoAlarmCirc.png") == 0)
	{
		strcpy(shortName, "NOALAR~1.PNG");
		return;
	}
	if (stricmp(longName, "OfflineCirc.png") == 0)
	{
		strcpy(shortName, "OFFLIN~1.PNG");
		return;
	}
	if (stricmp(longName, "OnlineCirc.png") == 0)
	{
		strcpy(shortName, "ONLINE~1.PNG");
		return;
	}
	if (stricmp(longName, "pass.png") == 0)
	{
		strcpy(shortName, "pass.png");
		return;
	}
	if (stricmp(longName, "pause.png") == 0)
	{
		strcpy(shortName, "pause.png");
		return;
	}
	if (stricmp(longName, "PauseButtonDis.png") == 0)
	{
		strcpy(shortName, "PAUSEB~2.PNG");
		return;
	}
	if (stricmp(longName, "PauseButtonEna.png") == 0)
	{
		strcpy(shortName, "PAUSEB~1.PNG");
		return;
	}
	if (stricmp(longName, "play.png") == 0)
	{
		strcpy(shortName, "play.png");
		return;
	}
	if (stricmp(longName, "StartButtonDis.png") == 0)
	{
		strcpy(shortName, "STARTB~2.PNG");
		return;
	}
	if (stricmp(longName, "StartButtonEna.png") == 0)
	{
		strcpy(shortName, "STARTB~1.PNG");
		return;
	}
	if (stricmp(longName, "stop.png") == 0)
	{
		strcpy(shortName, "stop.png");
		return;
	}
	if (stricmp(longName, "StopButtonDis.png") == 0)
	{
		strcpy(shortName, "STOPBU~2.PNG");
		return;
	}
	if (stricmp(longName, "StopButtonEna.png") == 0)
	{
		strcpy(shortName, "STOPBU~1.PNG");
		return;
	}
	if (stricmp(longName, "glyphicons-halflings-regular.eot") == 0)
	{
		strcpy(shortName, "GLYPHI~1.EOT");
		return;
	}
	if (stricmp(longName, "glyphicons-halflings-regular.svg") == 0)
	{
		strcpy(shortName,  "GLYPHI~1.SVG");
		return;
	}
	if (stricmp(longName, "glyphicons-halflings-regular.ttf") == 0)
	{
		strcpy(shortName, "GLYPHI~1.TTF");
		return;
	}
	if (stricmp(longName, "glyphicons-halflings-regular.woff") == 0)
	{
		strcpy(shortName, "GLYPHI~1.WOF");
		return;
	}
	if (stricmp(longName, "glyphicons-halflings-regular.woff2") == 0)
	{
		strcpy(shortName, "GLYPHI~2.WOF");
		return;
	}
	if (stricmp(longName, "diagnostics.html") == 0)
	{
		strcpy(shortName, "DIAGNO~1.HTM");
		return;
	}
	if (stricmp(longName, "manual.html") == 0)
	{
		strcpy(shortName, "MANUAL~1.HTM");
		return;
	}
	if (stricmp(longName, "paCalib.html") == 0)
	{
		strcpy(shortName, "PACALI~1.HTM");
		return;
	}
	if (stricmp(longName, "recipes.html") == 0)
	{
		strcpy(shortName, "RECIPE~1.HTM");
		return;
	}
	if (stricmp(longName, "settings.html") == 0)
	{
		strcpy(shortName, "SETTIN~1.HTM");
		return;
	}
	if (stricmp(longName, "tableDirective.html") == 0)
	{
		strcpy(shortName, "TABLED~1.HTM");
		return;
	}
	if (stricmp(longName, "technician.html") == 0)
	{
		strcpy(shortName, "TECHNI~1.HTM");
		return;
	}
	if (stricmp(longName, "upgrade.html") == 0)
	{
		strcpy(shortName, "UPGRAD~1.HTM");
		return;
	}
	if (stricmp(longName, "workingModes.html") == 0)
	{
		strcpy(shortName, "WORKIN~1.HTM");
		return;
	}
	if (stricmp(longName, "bootstrap.min.css") == 0)
	{
		strcpy(shortName, "BOOTST~2.CSS");
		return;
	}
	if (stricmp(longName, "bootstrap-theme.min.css") == 0)
	{
		strcpy(shortName, "BOOTST~1.CSS");
		return;
	}
	if (stricmp(longName, "diag.css") == 0)
	{
		strcpy(shortName, "diag.css");
		return;
	}
	if (stricmp(longName, "style.css") == 0)
	{
		strcpy(shortName, "style.css");
		return;
	}

}

void lfn2sfn_install(char *fileName)
{


	/*
	install("index.html", "INDEX~1.HTM");
	install("diagCtrl.js", "diagCtrl.js");
	install("header_ctrl.js", "HEADER~1.JS");
	install("jquery.min.js", "JQUERY~1.JS");
	install("main.js", "main.js");
	install("manual_ctrl.js", "MANUAL~1.JS");
	install("paCalibCtrl.js", "PACALI~1.JS");
	install("recipes_ctrl.js", "RECIPE~1.JS");
	install("settings_ctrl.js", "SETTIN~1.JS");
	install("technician_ctrl.js", "TECHNI~1.JS");
	install("time_picker.js", "TIME_P~1.JS");
	install("upgrade_ctrl.js", "UPGRAD~1.JS");
	install("workingModes_ctrl.js", "WORKIN~1.JS");
	install("angular - cookies.min.js", "AN23DE~1.JS");
	install("angular - file - upload - shim.min.js", "ANGULA~2.JS");
	install("angular - file - upload.min.js", "ANGULA~3.JS");
	install("angular - route.js", "ANGULA~1.JS");
	install("angular.min.js", "AN8E6C~1.JS");
	install("bootstrap.min.js", "BOOTST~1.JS");
	install("_ui - bootstrap - tpls - 0.13.2.js", "_UI - BO~1.JS");
	install("Chart.js", "Chart.js");
	install("ng - table.js", "ng - table.js");
	install("oven_sm.js", "oven_sm.js");
	install("tech_sm.js", "tech_sm.js");
	install("vecton_sm.js", "VECTON~1.JS");
	install("angular - sanitize.min.js", "ANGULA~2.JS");
	install("angular - sanitize.min.js.map", "ANGULA~2.MAP");
	install("angular.min.js	", "ANGULA~1.JS");
	install("bootstrap - decorator.js", "BOOTST~1.JS");
	install("bootstrap - decorator.min.js", "BOOTST~2.JS");
	install("ObjectPath.js", "OBJECT~1.JS");
	install("schema - form.js", "SCHEMA~1.JS");
	install("schema - form.min.js", "SCHEMA~2.JS");
	install("tv4.js", "tv4.js");
	install("three.min.js", "THREEM~1.JS");
	install("OrbitControls.js", "ORBITC~1.JS");
	install("gunzip.min.js", "GUNZIP~1.JS");
	install("util.js", "util.js");
	install("ContButtonDis.png", "CONTBU~1.PNG");
	install("ContButtonEna.png", "CONTBU~2.PNG");
	install("CriticalCirc.png", "CRITIC~1.PNG");
	install("delete.png","delete.png");
	install("DoorClosedCirc.png", "DOORCL~1.PNG");
	install("DoorOpenCirc.png", "DOOROP~1.PNG");
	install("duplicate.png", "DUPLIC~1.PNG");
	install("edit.png", "edit.png");
	install("fail.png", "fail.png");
	install("led - off.png", "led - off.png");
	install("led - on.png", "led - on.png");
	install("logo.jpg", "logo.jpg");
	install("logo.png", "logo.png");
	install("MajorCirc.png", "MAJORC~1.PNG");
	install("MinorCirc.png", "MINORC~1.PNG");
	install("NoAlarmCirc.png", "NOALAR~1.PNG");
	install("OfflineCirc.png", "OFFLIN~1.PNG");
	install("OnlineCirc.png", "ONLINE~1.PNG");
	install("pass.png", "pass.png");
	install("pause.png", "pause.png");
	install("PauseButtonDis.png", "PAUSEB~2.PNG");
	install("PauseButtonEna.png", "PAUSEB~1.PNG");
	install("play.png", "play.png");
	install("StartButtonDis.png", "STARTB~2.PNG");
	install("StartButtonEna.png", "STARTB~1.PNG");
	install("stop.png", "stop.png");
	install("StopButtonDis.png", "STOPBU~2.PNG");
	install("StopButtonEna.png", "STOPBU~1.PNG");
	install("glyphicons - halflings - regular.eot", "GLYPHI~1.EOT");
	install("glyphicons - halflings - regular.svg", "GLYPHI~1.SVG");
	install("glyphicons - halflings - regular.ttf", "GLYPHI~1.TTF");
	install("glyphicons - halflings - regular.woff", "GLYPHI~1.WOF");
	install("glyphicons - halflings - regular.woff2", "GLYPHI~2.WOF");
	install("diagnostics.html", "DIAGNO~1.HTM");
	install("manual.html", "MANUAL~1.HTM");
	install("paCalib.html", "PACALI~1.HTM");
	install("recipes.html", "RECIPE~1.HTM");
	install("settings.html", "SETTIN~1.HTM");
	install("tableDirective.html", "TABLED~1.HTM");
	install("technician.html", "TECHNI~1.HTM");
	install("upgrade.html", "UPGRAD~1.HTM");
	install("workingModes.html", "WORKIN~1.HTM");
	install("bootstrap.min.css", "BOOTST~2.CSS");
	install("bootstrap-theme.min.css", "BOOTST~1.CSS");
	install("diag.css", "diag.css");
	install("style.css", "style.css");
	 */



}
