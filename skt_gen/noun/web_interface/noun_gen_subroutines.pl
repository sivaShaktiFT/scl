#!/usr/bin/env perl

#  Copyright (C) 2010-2025 Amba Kulkarni (ambapradeep@gmail.com)
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either
#  version 2 of the License, or (at your option) any later
#  version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

use utf8;
require "../../paths.pl";
my $DataPATH = "$GlblVar::CGIDIR/$GlblVar::SCL_CGI";
require "$DataPATH/cgi_interface.pl";
#require "$GlblVar::CGIDIR/$GlblVar::SCL_CGI/converters/convert2WX_subroutines.pl";


#
#### List of all pUraNa words
#
$pUraNa{"agrima"} = 1;
$pUraNa{"agrimA"} = 1;
$pUraNa{"arbuxawama"} = 1;
$pUraNa{"arbuxawamA"} = 1;
$pUraNa{"aRtacawvAriMSa"} = 1;
$pUraNa{"aRtacawvAriMSA"} = 1;
$pUraNa{"aRtAcawvAriMSa"} = 1;
$pUraNa{"aRtAcawvAriMSA"} = 1;
$pUraNa{"aRtacawvAriMSawwama"} = 1;
$pUraNa{"aRtacawvAriMSawwamA"} = 1;
$pUraNa{"aRtAcawvAriMSawwama"} = 1;
$pUraNa{"aRtAcawvAriMSawwamA"} = 1;
$pUraNa{"aRtama"} = 1;
$pUraNa{"aRtamI"} = 1;
$pUraNa{"aRtanavawa"} = 1;
$pUraNa{"aRtanavawA"} = 1;
$pUraNa{"aRtAnavawa"} = 1;
$pUraNa{"aRtAnavawA"} = 1;
$pUraNa{"aRtanavawiwama"} = 1;
$pUraNa{"aRtanavawiwamA"} = 1;
$pUraNa{"aRtAnavawiwama"} = 1;
$pUraNa{"aRtAnavawiwamA"} = 1;
$pUraNa{"aRtapaFcASa"} = 1;
$pUraNa{"aRtapaFcASA"} = 1;
$pUraNa{"aRtApaFcASa"} = 1;
$pUraNa{"aRtApaFcASA"} = 1;
$pUraNa{"aRtapaFcASawwama"} = 1;
$pUraNa{"aRtapaFcASawwamA"} = 1;
$pUraNa{"aRtApaFcASawwama"} = 1;
$pUraNa{"aRtApaFcASawwamA"} = 1;
$pUraNa{"aRtaRaRta"} = 1;
$pUraNa{"aRtaRaRtA"} = 1;
$pUraNa{"aRtARaRta"} = 1;
$pUraNa{"aRtARaRtA"} = 1;
$pUraNa{"aRtaRaRtiwama"} = 1;
$pUraNa{"aRtaRaRtiwamA"} = 1;
$pUraNa{"aRtARaRtiwama"} = 1;
$pUraNa{"aRtARaRtiwamA"} = 1;
$pUraNa{"aRtasapwawa"} = 1;
$pUraNa{"aRtasapwawA"} = 1;
$pUraNa{"aRtAsapwawa"} = 1;
$pUraNa{"aRtAsapwawA"} = 1;
$pUraNa{"aRtasapwawiwama"} = 1;
$pUraNa{"aRtasapwawiwamA"} = 1;
$pUraNa{"aRtAsapwawiwama"} = 1;
$pUraNa{"aRtAsapwawiwamA"} = 1;
$pUraNa{"aRtASIwa"} = 1;
$pUraNa{"aRtASIwA"} = 1;
$pUraNa{"aRtASIwiwama"} = 1;
$pUraNa{"aRtASIwiwamA"} = 1;
$pUraNa{"aRtAviMSa"} = 1;
$pUraNa{"aRtAviMSA"} = 1;
$pUraNa{"aRtAviMSawiwama"} = 1;
$pUraNa{"aRtAviMSawiwamA"} = 1;
$pUraNa{"aRtAwriMSa"} = 1;
$pUraNa{"aRtAwriMSA"} = 1;
$pUraNa{"aRtAwriMSawwama"} = 1;
$pUraNa{"aRtAwriMSawwamA"} = 1;
$pUraNa{"aRtAxaSa"} = 1;
$pUraNa{"aRtAxaSI"} = 1;
$pUraNa{"aSIwa"} = 1;
$pUraNa{"aSIwA"} = 1;
$pUraNa{"aSIwiwama"} = 1;
$pUraNa{"aSIwiwamA"} = 1;
$pUraNa{"ayuwawama"} = 1;
$pUraNa{"ayuwawamA"} = 1;
$pUraNa{"cawuHpaFcASA"} = 1;
$pUraNa{"cawuHpaFcASawwama"} = 1;
$pUraNa{"cawuHpaFcASawwamA"} = 1;
$pUraNa{"cawuHRaRta"} = 1;
$pUraNa{"cawuHRaRtA"} = 1;
$pUraNa{"cawuHRaRtiwama"} = 1;
$pUraNa{"cawuHRaRtiwamA"} = 1;
$pUraNa{"cawuHsapwawa"} = 1;
$pUraNa{"cawuHsapwawA"} = 1;
$pUraNa{"cawuHsapwawiwama"} = 1;
$pUraNa{"cawuHsapwawiwamA"} = 1;
$pUraNa{"cawuraSIwa"} = 1;
$pUraNa{"cawuraSIwA"} = 1;
$pUraNa{"cawuraSIwiwama"} = 1;
$pUraNa{"cawuraSIwiwamA"} = 1;
$pUraNa{"cawurnavawa"} = 1;
$pUraNa{"cawurnavawA"} = 1;
$pUraNa{"cawurnavawiwama"} = 1;
$pUraNa{"cawurnavawiwamA"} = 1;
$pUraNa{"cawuRpaFcASa"} = 1;
$pUraNa{"cawurviMSa"} = 1;
$pUraNa{"cawurviMSA"} = 1;
$pUraNa{"cawurviMSawiwama"} = 1;
$pUraNa{"cawurviMSawiwamA"} = 1;
$pUraNa{"cawurWa"} = 1;
$pUraNa{"cawurxaSa"} = 1;
$pUraNa{"cawurxaSI"} = 1;
$pUraNa{"cawuScawvAriMSa"} = 1;
$pUraNa{"cawuScawvAriMSA"} = 1;
$pUraNa{"cawuScawvAriMSawwama"} = 1;
$pUraNa{"cawuScawvAriMSawwamA"} = 1;
$pUraNa{"cawuswriMSa"} = 1;
$pUraNa{"cawuswriMSA"} = 1;
$pUraNa{"cawuswriMSawwama"} = 1;
$pUraNa{"cawuswriMSawwamA"} = 1;
$pUraNa{"cawvAriMSa"} = 1;
$pUraNa{"cawvAriMSA"} = 1;
$pUraNa{"cawvAriMSawwama"} = 1;
$pUraNa{"cawvAriMSawwamA"} = 1;
$pUraNa{"ekacawvAriMSa"} = 1;
$pUraNa{"ekacawvAriMSA"} = 1;
$pUraNa{"ekacawvAriMSawwama"} = 1;
$pUraNa{"ekacawvAriMSawwamA"} = 1;
$pUraNa{"ekanavawa"} = 1;
$pUraNa{"ekanavawA"} = 1;
$pUraNa{"ekanavawiwama"} = 1;
$pUraNa{"ekanavawiwamA"} = 1;
$pUraNa{"ekapaFcASa"} = 1;
$pUraNa{"ekapaFcASA"} = 1;
$pUraNa{"ekapaFcASawwama"} = 1;
$pUraNa{"ekapaFcASawwamA"} = 1;
$pUraNa{"ekaRaRta"} = 1;
$pUraNa{"ekaRaRtA"} = 1;
$pUraNa{"ekaRaRtiwama"} = 1;
$pUraNa{"ekaRaRtiwamA"} = 1;
$pUraNa{"ekasapwawa"} = 1;
$pUraNa{"ekasapwawA"} = 1;
$pUraNa{"ekasapwawiwama"} = 1;
$pUraNa{"ekasapwawiwamA"} = 1;
$pUraNa{"ekASIwa"} = 1;
$pUraNa{"ekASIwA"} = 1;
$pUraNa{"ekASIwiwama"} = 1;
$pUraNa{"ekASIwiwamA"} = 1;
$pUraNa{"ekaviMSa"} = 1;
$pUraNa{"ekaviMSA"} = 1;
$pUraNa{"ekaviMSawiwama"} = 1;
$pUraNa{"ekaviMSawiwamA"} = 1;
$pUraNa{"ekawriMSa"} = 1;
$pUraNa{"ekawriMSA"} = 1;
$pUraNa{"ekawriMSawwama"} = 1;
$pUraNa{"ekawriMSawwamA"} = 1;
$pUraNa{"ekAxaSa"} = 1;
$pUraNa{"ekAxaSI"} = 1;
$pUraNa{"ekonacawvAriMSa"} = 1;
$pUraNa{"ekonacawvAriMSA"} = 1;
$pUraNa{"ekonacawvAriMSawwama"} = 1;
$pUraNa{"ekonacawvAriMSawwamA"} = 1;
$pUraNa{"ekonanavawa"} = 1;
$pUraNa{"ekonanavawA"} = 1;
$pUraNa{"ekonanavawiwama"} = 1;
$pUraNa{"ekonanavawiwamA"} = 1;
$pUraNa{"ekonapaFcASa"} = 1;
$pUraNa{"ekonapaFcASA"} = 1;
$pUraNa{"ekonapaFcASawwama"} = 1;
$pUraNa{"ekonapaFcASawwamA"} = 1;
$pUraNa{"ekonaRaRta"} = 1;
$pUraNa{"ekonaRaRtiwama"} = 1;
$pUraNa{"ekonaRaRtiwamA"} = 1;
$pUraNa{"ekonasapwawa"} = 1;
$pUraNa{"ekonasapwawA"} = 1;
$pUraNa{"ekonasapwawiwama"} = 1;
$pUraNa{"ekonasapwawiwamA"} = 1;
$pUraNa{"ekonaSawawama"} = 1;
$pUraNa{"ekonaSawawamA"} = 1;
$pUraNa{"ekonASIwa"} = 1;
$pUraNa{"ekonASIwA"} = 1;
$pUraNa{"ekonASIwiwama"} = 1;
$pUraNa{"ekonASIwiwamA"} = 1;
$pUraNa{"ekonaviMSawiwama"} = 1;
$pUraNa{"ekonaviMSawiwamA"} = 1;
$pUraNa{"ekonawriMSa"} = 1;
$pUraNa{"ekonawriMSawwama"} = 1;
$pUraNa{"ekonawriMSawwamA"} = 1;
$pUraNa{"IlawamA"} = 1;
$pUraNa{"iyuwawamA"} = 1;
$pUraNa{"Karvawama"} = 1;
$pUraNa{"KarvawamA"} = 1;
$pUraNa{"kotiwama"} = 1;
$pUraNa{"kotiwamA"} = 1;
$pUraNa{"lakRawama"} = 1;
$pUraNa{"lakRawamA"} = 1;
$pUraNa{"mahASaMKawama"} = 1;
$pUraNa{"mahASaMKawamA"} = 1;
$pUraNa{"navacawvAriMSa"} = 1;
$pUraNa{"navacawvAriMSA"} = 1;
$pUraNa{"navacawvAriMSawwama"} = 1;
$pUraNa{"navacawvAriMSawwamA"} = 1;
$pUraNa{"navama"} = 1;
$pUraNa{"navamI"} = 1;
$pUraNa{"navanavawa"} = 1;
$pUraNa{"navanavawA"} = 1;
$pUraNa{"navanavawiwama"} = 1;
$pUraNa{"navanavawiwamA"} = 1;
$pUraNa{"navapaFcASa"} = 1;
$pUraNa{"navapaFcASA"} = 1;
$pUraNa{"navapaFcASawwama"} = 1;
$pUraNa{"navapaFcASawwamA"} = 1;
$pUraNa{"navaRaRta"} = 1;
$pUraNa{"navaRaRtA"} = 1;
$pUraNa{"navaRaRtiwama"} = 1;
$pUraNa{"navaRaRtiwamA"} = 1;
$pUraNa{"navasapwawa"} = 1;
$pUraNa{"navasapwawA"} = 1;
$pUraNa{"navasapwawiwama"} = 1;
$pUraNa{"navasapwawiwamA"} = 1;
$pUraNa{"navASIwa"} = 1;
$pUraNa{"navASIwA"} = 1;
$pUraNa{"navASIwiwama"} = 1;
$pUraNa{"navASIwiwamA"} = 1;
$pUraNa{"navaviMSa"} = 1;
$pUraNa{"navaviMSA"} = 1;
$pUraNa{"navaviMSawiwama"} = 1;
$pUraNa{"navaviMSawiwamA"} = 1;
$pUraNa{"navawa"} = 1;
$pUraNa{"navawA"} = 1;
$pUraNa{"navawiwama"} = 1;
$pUraNa{"navawiwamA"} = 1;
$pUraNa{"navawriMSa"} = 1;
$pUraNa{"navawriMSA"} = 1;
$pUraNa{"navawriMSawwama"} = 1;
$pUraNa{"navawriMSawwamA"} = 1;
$pUraNa{"navaxaSa"} = 1;
$pUraNa{"navaxaSI"} = 1;
$pUraNa{"nIlawama"} = 1;
$pUraNa{"niyuwawama"} = 1;
$pUraNa{"paFcacawvAriMSa"} = 1;
$pUraNa{"paFcacawvAriMSA"} = 1;
$pUraNa{"paFcacawvAriMSawwama"} = 1;
$pUraNa{"paFcacawvAriMSawwamA"} = 1;
$pUraNa{"paFcama"} = 1;
$pUraNa{"paFcamI"} = 1;
$pUraNa{"paFcanavawa"} = 1;
$pUraNa{"paFcanavawA"} = 1;
$pUraNa{"paFcanavawiwama"} = 1;
$pUraNa{"paFcanavawiwamA"} = 1;
$pUraNa{"paFcapaFcASa"} = 1;
$pUraNa{"paFcapaFcASA"} = 1;
$pUraNa{"paFcapaFcASawwama"} = 1;
$pUraNa{"paFcapaFcASawwamA"} = 1;
$pUraNa{"paFcaRaRta"} = 1;
$pUraNa{"paFcaRaRtA"} = 1;
$pUraNa{"paFcaRaRtiwama"} = 1;
$pUraNa{"paFcaRaRtiwamA"} = 1;
$pUraNa{"paFcASa"} = 1;
$pUraNa{"paFcASA"} = 1;
$pUraNa{"paFcasapwawa"} = 1;
$pUraNa{"paFcasapwawA"} = 1;
$pUraNa{"paFcasapwawiwama"} = 1;
$pUraNa{"paFcasapwawiwamA"} = 1;
$pUraNa{"paFcASawwama"} = 1;
$pUraNa{"paFcASawwamA"} = 1;
$pUraNa{"paFcASIwa"} = 1;
$pUraNa{"paFcASIwA"} = 1;
$pUraNa{"paFcASIwiwama"} = 1;
$pUraNa{"paFcASIwiwamA"} = 1;
$pUraNa{"paFcaviMSa"} = 1;
$pUraNa{"paFcaviMSA"} = 1;
$pUraNa{"paFcaviMSawiwama"} = 1;
$pUraNa{"paFcaviMSawiwamA"} = 1;
$pUraNa{"paFcawriMSa"} = 1;
$pUraNa{"paFcawriMSA"} = 1;
$pUraNa{"paFcawriMSawwama"} = 1;
$pUraNa{"paFcawriMSawwamA"} = 1;
$pUraNa{"paFcaxaSa"} = 1;
$pUraNa{"paFcaxaSI"} = 1;
$pUraNa{"paxmawama"} = 1;
$pUraNa{"paxmawamA"} = 1;
$pUraNa{"praWama"} = 1;
$pUraNa{"praWamA"} = 1;
$pUraNa{"prayuwawama"} = 1;
$pUraNa{"prayuwawamA"} = 1;
$pUraNa{"RadaSIwa"} = 1;
$pUraNa{"RadaSIwA"} = 1;
$pUraNa{"RadaSIwiwama"} = 1;
$pUraNa{"RadaSIwiwamA"} = 1;
$pUraNa{"RadviMSa"} = 1;
$pUraNa{"RadviMSA"} = 1;
$pUraNa{"RadviMSawiwama"} = 1;
$pUraNa{"RadviMSawiwamA"} = 1;
$pUraNa{"RaNNavawa"} = 1;
$pUraNa{"RaNNavawA"} = 1;
$pUraNa{"RaNNavawiwama"} = 1;
$pUraNa{"RaNNavawiwamA"} = 1;
$pUraNa{"RaRta"} = 1;
$pUraNa{"RaRTa"} = 1;
$pUraNa{"RaRTI"} = 1;
$pUraNa{"RaRtiwama"} = 1;
$pUraNa{"RaRtiwamA"} = 1;
$pUraNa{"RatcawvAriMSa"} = 1;
$pUraNa{"RatcawvAriMSA"} = 1;
$pUraNa{"RatcawvAriMSawwama"} = 1;
$pUraNa{"RatcawvAriMSawwamA"} = 1;
$pUraNa{"RatpaFcASa"} = 1;
$pUraNa{"RatpaFcASA"} = 1;
$pUraNa{"RatpaFcASawwama"} = 1;
$pUraNa{"RatpaFcASawwamA"} = 1;
$pUraNa{"RatRaRta"} = 1;
$pUraNa{"RatRaRtA"} = 1;
$pUraNa{"RatRaRtiwama"} = 1;
$pUraNa{"RatRaRtiwamA"} = 1;
$pUraNa{"Ratsapwawa"} = 1;
$pUraNa{"RatsapwawA"} = 1;
$pUraNa{"Ratsapwawiwama"} = 1;
$pUraNa{"RatsapwawiwamA"} = 1;
$pUraNa{"RatwriMSa"} = 1;
$pUraNa{"RatwriMSA"} = 1;
$pUraNa{"RatwriMSawwama"} = 1;
$pUraNa{"RatwriMSawwamA"} = 1;
$pUraNa{"RodaSa"} = 1;
$pUraNa{"RodaSI"} = 1;
$pUraNa{"sahasrawama"} = 1;
$pUraNa{"sahasrawamA"} = 1;
$pUraNa{"SaMKawama"} = 1;
$pUraNa{"SaMKawamA"} = 1;
$pUraNa{"sapwacawvAriMSa"} = 1;
$pUraNa{"sapwacawvAriMSA"} = 1;
$pUraNa{"sapwacawvAriMSawwama"} = 1;
$pUraNa{"sapwacawvAriMSawwamA"} = 1;
$pUraNa{"sapwama"} = 1;
$pUraNa{"sapwamI"} = 1;
$pUraNa{"sapwanavawa"} = 1;
$pUraNa{"sapwanavawA"} = 1;
$pUraNa{"sapwanavawiwama"} = 1;
$pUraNa{"sapwanavawiwamA"} = 1;
$pUraNa{"sapwapaFcASa"} = 1;
$pUraNa{"sapwapaFcASA"} = 1;
$pUraNa{"sapwapaFcASawwama"} = 1;
$pUraNa{"sapwapaFcASawwamA"} = 1;
$pUraNa{"sapwaRaRta"} = 1;
$pUraNa{"sapwaRaRtA"} = 1;
$pUraNa{"sapwaRaRtiwama"} = 1;
$pUraNa{"sapwaRaRtiwamA"} = 1;
$pUraNa{"sapwasapwawa"} = 1;
$pUraNa{"sapwasapwawA"} = 1;
$pUraNa{"sapwasapwawiwama"} = 1;
$pUraNa{"sapwasapwawiwamA"} = 1;
$pUraNa{"sapwASIwa"} = 1;
$pUraNa{"sapwASIwA"} = 1;
$pUraNa{"sapwASIwiwama"} = 1;
$pUraNa{"sapwASIwiwamA"} = 1;
$pUraNa{"sapwaviMSa"} = 1;
$pUraNa{"sapwaviMSA"} = 1;
$pUraNa{"sapwaviMSawiwama"} = 1;
$pUraNa{"sapwaviMSawiwamA"} = 1;
$pUraNa{"sapwawa"} = 1;
$pUraNa{"sapwawA"} = 1;
$pUraNa{"sapwawiwama"} = 1;
$pUraNa{"sapwawiwamA"} = 1;
$pUraNa{"sapwawriMSa"} = 1;
$pUraNa{"sapwawriMSA"} = 1;
$pUraNa{"sapwawriMSawwama"} = 1;
$pUraNa{"sapwawriMSawwamA"} = 1;
$pUraNa{"sapwaxaSa"} = 1;
$pUraNa{"sapwaxaSI"} = 1;
$pUraNa{"Sawawama"} = 1;
$pUraNa{"SawawamA"} = 1;
$pUraNa{"viMSa"} = 1;
$pUraNa{"viMSA"} = 1;
$pUraNa{"viMSawiwama"} = 1;
$pUraNa{"viMSawiwamA"} = 1;
$pUraNa{"wqwIya"} = 1;
$pUraNa{"wrayaHpaFcASa"} = 1;
$pUraNa{"wrayaHpaFcASA"} = 1;
$pUraNa{"wrayaHpaFcASawwama"} = 1;
$pUraNa{"wrayaHpaFcASawwamA"} = 1;
$pUraNa{"wrayaHRaRta"} = 1;
$pUraNa{"wrayaHRaRtA"} = 1;
$pUraNa{"wrayaHRaRtiwama"} = 1;
$pUraNa{"wrayaHRaRtiwamA"} = 1;
$pUraNa{"wrayaHsapwawa"} = 1;
$pUraNa{"wrayaHsapwawA"} = 1;
$pUraNa{"wrayaHsapwawiwama"} = 1;
$pUraNa{"wrayaHsapwawiwamA"} = 1;
$pUraNa{"wrayaScawvAriMSa"} = 1;
$pUraNa{"wrayaScawvAriMSA"} = 1;
$pUraNa{"wrayaScawvAriMSawwama"} = 1;
$pUraNa{"wrayaScawvAriMSawwamA"} = 1;
$pUraNa{"wrayaswriMSa"} = 1;
$pUraNa{"wrayaswriMSA"} = 1;
$pUraNa{"wrayaswriMSawwama"} = 1;
$pUraNa{"wrayaswriMSawwamA"} = 1;
$pUraNa{"wrayonavawa"} = 1;
$pUraNa{"wrayonavawA"} = 1;
$pUraNa{"wrayonavawiwama"} = 1;
$pUraNa{"wrayonavawiwamA"} = 1;
$pUraNa{"wrayoviMSa"} = 1;
$pUraNa{"wrayoviMSA"} = 1;
$pUraNa{"wrayoviMSawiwama"} = 1;
$pUraNa{"wrayoviMSawiwamA"} = 1;
$pUraNa{"wrayoxaSa"} = 1;
$pUraNa{"wrayoxaSI"} = 1;
$pUraNa{"wricawvAriMSa"} = 1;
$pUraNa{"wricawvAriMSA"} = 1;
$pUraNa{"wricawvAriMSawwama"} = 1;
$pUraNa{"wricawvAriMSawwamA"} = 1;
$pUraNa{"wriMSa"} = 1;
$pUraNa{"wriMSA"} = 1;
$pUraNa{"wriMSawwama"} = 1;
$pUraNa{"wriMSawwamA"} = 1;
$pUraNa{"wrinavawa"} = 1;
$pUraNa{"wrinavawA"} = 1;
$pUraNa{"wrinavawiwama"} = 1;
$pUraNa{"wrinavawiwamA"} = 1;
$pUraNa{"wripaFcASa"} = 1;
$pUraNa{"wripaFcASA"} = 1;
$pUraNa{"wripaFcASawwama"} = 1;
$pUraNa{"wripaFcASawwamA"} = 1;
$pUraNa{"wriRaRta"} = 1;
$pUraNa{"wriRaRtA"} = 1;
$pUraNa{"wriRaRtiwama"} = 1;
$pUraNa{"wriRaRtiwamA"} = 1;
$pUraNa{"wrisapwawa"} = 1;
$pUraNa{"wrisapwawA"} = 1;
$pUraNa{"wrisapwawiwama"} = 1;
$pUraNa{"wrisapwawiwamA"} = 1;
$pUraNa{"wryaSIwa"} = 1;
$pUraNa{"wryaSIwA"} = 1;
$pUraNa{"wryaSIwiwama"} = 1;
$pUraNa{"wryaSIwiwamA"} = 1;
$pUraNa{"wurya"} = 1;
$pUraNa{"xaSaKarvawama"} = 1;
$pUraNa{"xaSaKarvawamA"} = 1;
$pUraNa{"xaSakotiwama"} = 1;
$pUraNa{"xaSakotiwamA"} = 1;
$pUraNa{"xaSama"} = 1;
$pUraNa{"xaSamI"} = 1;
$pUraNa{"xaSanIlawama"} = 1;
$pUraNa{"xaSanIlawamA"} = 1;
$pUraNa{"xaSapaxmawama"} = 1;
$pUraNa{"xaSapaxmawamA"} = 1;
$pUraNa{"xaSArbuxawama"} = 1;
$pUraNa{"xaSArbuxawamA"} = 1;
$pUraNa{"xaSaSaMKawama"} = 1;
$pUraNa{"xaSaSaMKawamA"} = 1;
$pUraNa{"xvAcawvAriMSa"} = 1;
$pUraNa{"xvAcawvAriMSA"} = 1;
$pUraNa{"xvAcawvAriMSawwama"} = 1;
$pUraNa{"xvAcawvAriMSawwamA"} = 1;
$pUraNa{"xvAnavawa"} = 1;
$pUraNa{"xvAnavawA"} = 1;
$pUraNa{"xvAnavawiwama"} = 1;
$pUraNa{"xvAnavawiwamA"} = 1;
$pUraNa{"xvApaFcASa"} = 1;
$pUraNa{"xvApaFcASA"} = 1;
$pUraNa{"xvApaFcASawwama"} = 1;
$pUraNa{"xvApaFcASawwamA"} = 1;
$pUraNa{"xvARaRta"} = 1;
$pUraNa{"xvARaRtA"} = 1;
$pUraNa{"xvARaRtiwama"} = 1;
$pUraNa{"xvARaRtiwamA"} = 1;
$pUraNa{"xvAsapwawa"} = 1;
$pUraNa{"xvAsapwawA"} = 1;
$pUraNa{"xvAsapwawiwama"} = 1;
$pUraNa{"xvAsapwawiwamA"} = 1;
$pUraNa{"xvAviMSa"} = 1;
$pUraNa{"xvAviMSA"} = 1;
$pUraNa{"xvAviMSawiwama"} = 1;
$pUraNa{"xvAviMSawiwamA"} = 1;
$pUraNa{"xvAwriMSa"} = 1;
$pUraNa{"xvAwriMSA"} = 1;
$pUraNa{"xvAwriMSawwama"} = 1;
$pUraNa{"xvAwriMSawwamA"} = 1;
$pUraNa{"xvAxaSa"} = 1;
$pUraNa{"xvAxaSI"} = 1;
$pUraNa{"xvicawvAriMSa"} = 1;
$pUraNa{"xvicawvAriMSA"} = 1;
$pUraNa{"xvicawvAriMSawwama"} = 1;
$pUraNa{"xvicawvAriMSawwamA"} = 1;
$pUraNa{"xvinavawa"} = 1;
$pUraNa{"xvinavawA"} = 1;
$pUraNa{"xvinavawiwama"} = 1;
$pUraNa{"xvinavawiwamA"} = 1;
$pUraNa{"xvipaFcASa"} = 1;
$pUraNa{"xvipaFcASA"} = 1;
$pUraNa{"xvipaFcASawwama"} = 1;
$pUraNa{"xvipaFcASawwamA"} = 1;
$pUraNa{"xviRaRta"} = 1;
$pUraNa{"xviRaRtA"} = 1;
$pUraNa{"xviRaRtiwama"} = 1;
$pUraNa{"xviRaRtiwamA"} = 1;
$pUraNa{"xvisapwawa"} = 1;
$pUraNa{"xvisapwawA"} = 1;
$pUraNa{"xvisapwawiwama"} = 1;
$pUraNa{"xvisapwawiwamA"} = 1;
$pUraNa{"xviwIya"} = 1;
$pUraNa{"xvyaSIwa"} = 1;
$pUraNa{"xvyaSIwA"} = 1;
$pUraNa{"xvyaSIwiwama"} = 1;
$pUraNa{"xvyaSIwiwamA"} = 1;

#
# List of all sarvanAma words
#

$sarvanAma{"asmax"} = 1;
$sarvanAma{"yuRmax"} = 1;
$sarvanAma{"anwara"} = 1;
$sarvanAma{"anwarA"} = 1;
$sarvanAma{"anya"} = 1;
$sarvanAma{"anyA"} = 1;
$sarvanAma{"anyawama"} = 1;
$sarvanAma{"anyawamA"} = 1;
$sarvanAma{"anyawara"} = 1;
$sarvanAma{"anyawarA"} = 1;
$sarvanAma{"apara"} = 1;
$sarvanAma{"aparA"} = 1;
$sarvanAma{"aRtawaya"} = 1;
$sarvanAma{"aRtAwaya"} = 1;
$sarvanAma{"avara"} = 1;
$sarvanAma{"avarA"} = 1;
$sarvanAma{"aXara"} = 1;
$sarvanAma{"aXarA"} = 1;
$sarvanAma{"axas"} = 1;
$sarvanAma{"bahir"} = 1;
$sarvanAma{"Bavaw"} = 1;
$sarvanAma{"BavawI"} = 1;
$sarvanAma{"dawama"} = 1;
$sarvanAma{"dawamA"} = 1;
$sarvanAma{"dawara"} = 1;
$sarvanAma{"dawarA"} = 1;
$sarvanAma{"ekawama"} = 1;
$sarvanAma{"ekawamA"} = 1;
$sarvanAma{"ekawara"} = 1;
$sarvanAma{"ekawarA"} = 1;
$sarvanAma{"ekawaya"} = 1;
$sarvanAma{"ekawayA"} = 1;
$sarvanAma{"ewax"} = 1;
$sarvanAma{"iwara"} = 1;
$sarvanAma{"iwarA"} = 1;
$sarvanAma{"ixam"} = 1;
$sarvanAma{"kawama"} = 1;
$sarvanAma{"kawamA"} = 1;
$sarvanAma{"kawara"} = 1;
$sarvanAma{"kawarA"} = 1;
$sarvanAma{"kawi"} = 1;
$sarvanAma{"kiFcana"} = 1;
$sarvanAma{"kiFciw"} = 1;
$sarvanAma{"kim"} = 1;
$sarvanAma{"mUrwaya"} = 1;
$sarvanAma{"nema"} = 1;
$sarvanAma{"nemA"} = 1;
$sarvanAma{"paFcawaya"} = 1;
$sarvanAma{"para"} = 1;
$sarvanAma{"parA"} = 1;
$sarvanAma{"pUrva"} = 1;
$sarvanAma{"pUrvA"} = 1;
$sarvanAma{"sahasrawaya"} = 1;
$sarvanAma{"sahasrawayA"} = 1;
$sarvanAma{"sama"} = 1;
$sarvanAma{"samA"} = 1;
$sarvanAma{"sapwawaya"} = 1;
$sarvanAma{"sarva"} = 1;
$sarvanAma{"sarvA"} = 1;
$sarvanAma{"sima"} = 1;
$sarvanAma{"simA"} = 1;
$sarvanAma{"sva"} = 1;
$sarvanAma{"svA"} = 1;
$sarvanAma{"uBa"} = 1;
$sarvanAma{"uBA"} = 1;
$sarvanAma{"uBaya"} = 1;
$sarvanAma{"uBayA"} = 1;
$sarvanAma{"uwwara"} = 1;
$sarvanAma{"uwwarA"} = 1;
$sarvanAma{"viSva"} = 1;
$sarvanAma{"viSvA"} = 1;
$sarvanAma{"wax"} = 1;
$sarvanAma{"wAxqS"} = 1;
$sarvanAma{"wAxqSI"} = 1;
$sarvanAma{"waya"} = 1;
$sarvanAma{"wriwaya"} = 1;
$sarvanAma{"wva"} = 1;
$sarvanAma{"wvA"} = 1;
$sarvanAma{"wyax"} = 1;
$sarvanAma{"xakRiNa"} = 1;
$sarvanAma{"xakRiNA"} = 1;
$sarvanAma{"xaSawaya"} = 1;
$sarvanAma{"XOwaya"} = 1;
$sarvanAma{"xviwaya"} = 1;
$sarvanAma{"xviwayA"} = 1;
$sarvanAma{"yax"} = 1;

#
#List of all saMKyeya words
#

$saMKyeya{"arbuxa"} = 1;
$saMKyeya{"aRtacawvAriMSaw"} = 1;
$saMKyeya{"aRtAcawvAriMSaw"} = 1;
$saMKyeya{"aRtan"} = 1;
$saMKyeya{"aRtanavawi"} = 1;
$saMKyeya{"aRtAnavawi"} = 1;
$saMKyeya{"aRtapaFcASaw"} = 1;
$saMKyeya{"aRtApaFcASaw"} = 1;
$saMKyeya{"aRtaRaRti"} = 1;
$saMKyeya{"aRtARaRti"} = 1;
$saMKyeya{"aRtasapwawi"} = 1;
$saMKyeya{"aRtAsapwawi"} = 1;
$saMKyeya{"aRtaSawI"} = 1;
$saMKyeya{"aRtASIwi"} = 1;
$saMKyeya{"aRtAviMSawi"} = 1;
$saMKyeya{"aRtAwriMSaw"} = 1;
$saMKyeya{"aRtAxaSan"} = 1;
$saMKyeya{"aSIwi"} = 1;
$saMKyeya{"ayuwa"} = 1;
$saMKyeya{"cawuHpaFcASaw"} = 1;
$saMKyeya{"cawuHRaRti"} = 1;
$saMKyeya{"cawuHsapwawi"} = 1;
$saMKyeya{"cawuHSawI"} = 1;
$saMKyeya{"cawur"} = 1;
$saMKyeya{"cawuraSIwi"} = 1;
$saMKyeya{"cawurnavawi"} = 1;
$saMKyeya{"cawurviMSawi"} = 1;
$saMKyeya{"cawurxaSan"} = 1;
$saMKyeya{"cawuScawvAriMSaw"} = 1;
$saMKyeya{"cawuswriMSaw"} = 1;
$saMKyeya{"cawvAriMSaw"} = 1;
$saMKyeya{"eka"} = 1;
$saMKyeya{"ekA"} = 1;
$saMKyeya{"ekacawvAriMSaw"} = 1;
$saMKyeya{"ekanavawi"} = 1;
$saMKyeya{"ekapaFcASaw"} = 1;
$saMKyeya{"ekaRaRti"} = 1;
$saMKyeya{"ekasapwawi"} = 1;
$saMKyeya{"ekASIwi"} = 1;
$saMKyeya{"ekaviMSawi"} = 1;
$saMKyeya{"ekawriMSaw"} = 1;
$saMKyeya{"ekAxaSan"} = 1;
$saMKyeya{"ekonacawvAriMSaw"} = 1;
$saMKyeya{"ekonanavawi"} = 1;
$saMKyeya{"ekonapaFcASaw"} = 1;
$saMKyeya{"ekonaRaRti"} = 1;
$saMKyeya{"ekonasapwawi"} = 1;
$saMKyeya{"ekonaSawa"} = 1;
$saMKyeya{"ekonASIwi"} = 1;
$saMKyeya{"ekonaviMSawi"} = 1;
$saMKyeya{"ekonawriMSaw"} = 1;
$saMKyeya{"Karva"} = 1;
$saMKyeya{"koti"} = 1;
$saMKyeya{"lakRa"} = 1;
$saMKyeya{"mahASaMKa"} = 1;
$saMKyeya{"navacawvAriMSaw"} = 1;
$saMKyeya{"navan"} = 1;
$saMKyeya{"navanavawi"} = 1;
$saMKyeya{"navapaFcASaw"} = 1;
$saMKyeya{"navaRaRti"} = 1;
$saMKyeya{"navasapwawi"} = 1;
$saMKyeya{"navaSawI"} = 1;
$saMKyeya{"navASIwi"} = 1;
$saMKyeya{"navaviMSawi"} = 1;
$saMKyeya{"navawi"} = 1;
$saMKyeya{"navawriMSaw"} = 1;
$saMKyeya{"navaxaSan"} = 1;
$saMKyeya{"neka"} = 1;
$saMKyeya{"nIla"} = 1;
$saMKyeya{"niyuwa"} = 1;
$saMKyeya{"paFcacawvAriMSaw"} = 1;
$saMKyeya{"paFcan"} = 1;
$saMKyeya{"paFcanavawi"} = 1;
$saMKyeya{"paFcapaFcASaw"} = 1;
$saMKyeya{"paFcaRaRti"} = 1;
$saMKyeya{"paFcasapwawi"} = 1;
$saMKyeya{"paFcASaw"} = 1;
$saMKyeya{"paFcaSawI"} = 1;
$saMKyeya{"paFcASIwi"} = 1;
$saMKyeya{"paFcaviMSawi"} = 1;
$saMKyeya{"paFcawriMSaw"} = 1;
$saMKyeya{"paFcaxaSan"} = 1;
$saMKyeya{"paxma"} = 1;
$saMKyeya{"prayuwa"} = 1;
$saMKyeya{"RadaSIwi"} = 1;
$saMKyeya{"RadviMSawi"} = 1;
$saMKyeya{"RaNNavawi"} = 1;
$saMKyeya{"RaR"} = 1;
$saMKyeya{"RaRti"} = 1;
$saMKyeya{"RatcawvAriMSaw"} = 1;
$saMKyeya{"RatpaFcASaw"} = 1;
$saMKyeya{"RatRaRti"} = 1;
$saMKyeya{"Ratsapwawi"} = 1;
$saMKyeya{"RatSawI"} = 1;
$saMKyeya{"RatwriMSaw"} = 1;
$saMKyeya{"RodaSan"} = 1;
$saMKyeya{"sahasra"} = 1;
$saMKyeya{"SaMKa"} = 1;
$saMKyeya{"sapwacawvAriMSaw"} = 1;
$saMKyeya{"sapwan"} = 1;
$saMKyeya{"sapwanavawi"} = 1;
$saMKyeya{"sapwapaFcASaw"} = 1;
$saMKyeya{"sapwaRaRti"} = 1;
$saMKyeya{"sapwasapwawi"} = 1;
$saMKyeya{"sapwaSawI"} = 1;
$saMKyeya{"sapwASIwi"} = 1;
$saMKyeya{"sapwaviMSawi"} = 1;
$saMKyeya{"sapwawi"} = 1;
$saMKyeya{"sapwawriMSaw"} = 1;
$saMKyeya{"sapwaxaSan"} = 1;
$saMKyeya{"Sawa"} = 1;
$saMKyeya{"viMSawi"} = 1;
$saMKyeya{"wrayaHpaFcASaw"} = 1;
$saMKyeya{"wrayaHRaRti"} = 1;
$saMKyeya{"wrayaHsapwawi"} = 1;
$saMKyeya{"wrayaScawvAriMSaw"} = 1;
$saMKyeya{"wrayaswriMSaw"} = 1;
$saMKyeya{"wrayonavawi"} = 1;
$saMKyeya{"wrayoviMSawi"} = 1;
$saMKyeya{"wrayoxaSan"} = 1;
$saMKyeya{"wri"} = 1;
$saMKyeya{"wricawvAriMSaw"} = 1;
$saMKyeya{"wriMSaw"} = 1;
$saMKyeya{"wrinavawi"} = 1;
$saMKyeya{"wripaFcASaw"} = 1;
$saMKyeya{"wriRaRti"} = 1;
$saMKyeya{"wrisapwawi"} = 1;
$saMKyeya{"wriSawI"} = 1;
$saMKyeya{"wryaSIwi"} = 1;
$saMKyeya{"xaSaKarva"} = 1;
$saMKyeya{"xaSakoti"} = 1;
$saMKyeya{"xaSan"} = 1;
$saMKyeya{"xaSanIla"} = 1;
$saMKyeya{"xaSapaxma"} = 1;
$saMKyeya{"xaSArbuxa"} = 1;
$saMKyeya{"xaSaSaMKa"} = 1;
$saMKyeya{"xvAcawvAriMSaw"} = 1;
$saMKyeya{"xvAnavawi"} = 1;
$saMKyeya{"xvApaFcASaw"} = 1;
$saMKyeya{"xvARaRti"} = 1;
$saMKyeya{"xvAsapwawi"} = 1;
$saMKyeya{"xvAviMSawi"} = 1;
$saMKyeya{"xvAwriMSaw"} = 1;
$saMKyeya{"xvAxaSan"} = 1;
$saMKyeya{"xvi"} = 1;
$saMKyeya{"xvicawvAriMSaw"} = 1;
$saMKyeya{"xvinavawi"} = 1;
$saMKyeya{"xvipaFcASaw"} = 1;
$saMKyeya{"xviRaRti"} = 1;
$saMKyeya{"xvisapwawi"} = 1;
$saMKyeya{"xviSawI"} = 1;
$saMKyeya{"xvyaSIwi"} = 1;

#
#List of saMKyA words
#

$saMKyA{"arbuxa"} = 1;
$saMKyA{"aRtacawvAriMSaw"} = 1;
$saMKyA{"aRtAcawvAriMSaw"} = 1;
$saMKyA{"aRtan"} = 1;
$saMKyA{"aRtanavawi"} = 1;
$saMKyA{"aRtAnavawi"} = 1;
$saMKyA{"aRtapaFcASaw"} = 1;
$saMKyA{"aRtApaFcASaw"} = 1;
$saMKyA{"aRtaRaRti"} = 1;
$saMKyA{"aRtARaRti"} = 1;
$saMKyA{"aRtasapwawi"} = 1;
$saMKyA{"aRtAsapwawi"} = 1;
$saMKyA{"aRtaSawI"} = 1;
$saMKyA{"aRtASIwi"} = 1;
$saMKyA{"aRtAviMSawi"} = 1;
$saMKyA{"aRtAwriMSaw"} = 1;
$saMKyA{"aRtAxaSan"} = 1;
$saMKyA{"aSIwi"} = 1;
$saMKyA{"ayuwa"} = 1;
$saMKyA{"cawuHpaFcASaw"} = 1;
$saMKyA{"cawuHRaRti"} = 1;
$saMKyA{"cawuHsapwawi"} = 1;
$saMKyA{"cawuHSawI"} = 1;
$saMKyA{"cawur"} = 1;
$saMKyA{"cawuraSIwi"} = 1;
$saMKyA{"cawurnavawi"} = 1;
$saMKyA{"cawurviMSawi"} = 1;
$saMKyA{"cawurxaSan"} = 1;
$saMKyA{"cawuScawvAriMSaw"} = 1;
$saMKyA{"cawuswriMSaw"} = 1;
$saMKyA{"cawvAriMSaw"} = 1;
$saMKyA{"eka"} = 1;
$saMKyA{"ekacawvAriMSaw"} = 1;
$saMKyA{"ekanavawi"} = 1;
$saMKyA{"ekapaFcASaw"} = 1;
$saMKyA{"ekaRaRti"} = 1;
$saMKyA{"ekasapwawi"} = 1;
$saMKyA{"ekASIwi"} = 1;
$saMKyA{"ekaviMSawi"} = 1;
$saMKyA{"ekawriMSaw"} = 1;
$saMKyA{"ekAxaSan"} = 1;
$saMKyA{"ekonacawvAriMSaw"} = 1;
$saMKyA{"ekonanavawi"} = 1;
$saMKyA{"ekonapaFcASaw"} = 1;
$saMKyA{"ekonaRaRti"} = 1;
$saMKyA{"ekonasapwawi"} = 1;
$saMKyA{"ekonaSawa"} = 1;
$saMKyA{"ekonASIwi"} = 1;
$saMKyA{"ekonaviMSawi"} = 1;
$saMKyA{"ekonawriMSaw"} = 1;
$saMKyA{"Karva"} = 1;
$saMKyA{"koti"} = 1;
$saMKyA{"lakRa"} = 1;
$saMKyA{"mahASaMKa"} = 1;
$saMKyA{"navacawvAriMSaw"} = 1;
$saMKyA{"navan"} = 1;
$saMKyA{"navanavawi"} = 1;
$saMKyA{"navapaFcASaw"} = 1;
$saMKyA{"navaRaRti"} = 1;
$saMKyA{"navasapwawi"} = 1;
$saMKyA{"navaSawI"} = 1;
$saMKyA{"navASIwi"} = 1;
$saMKyA{"navaviMSawi"} = 1;
$saMKyA{"navawi"} = 1;
$saMKyA{"navawriMSaw"} = 1;
$saMKyA{"navaxaSan"} = 1;
$saMKyA{"nIla"} = 1;
$saMKyA{"niyuwa"} = 1;
$saMKyA{"paFcacawvAriMSaw"} = 1;
$saMKyA{"paFcan"} = 1;
$saMKyA{"paFcanavawi"} = 1;
$saMKyA{"paFcapaFcASaw"} = 1;
$saMKyA{"paFcaRaRti"} = 1;
$saMKyA{"paFcasapwawi"} = 1;
$saMKyA{"paFcASaw"} = 1;
$saMKyA{"paFcaSawI"} = 1;
$saMKyA{"paFcASIwi"} = 1;
$saMKyA{"paFcaviMSawi"} = 1;
$saMKyA{"paFcawriMSaw"} = 1;
$saMKyA{"paFcaxaSan"} = 1;
$saMKyA{"paxma"} = 1;
$saMKyA{"prayuwa"} = 1;
$saMKyA{"RadaSIwi"} = 1;
$saMKyA{"RadviMSawi"} = 1;
$saMKyA{"RaNNavawi"} = 1;
$saMKyA{"RaR"} = 1;
$saMKyA{"RaRti"} = 1;
$saMKyA{"RatcawvAriMSaw"} = 1;
$saMKyA{"RatpaFcASaw"} = 1;
$saMKyA{"RatRaRti"} = 1;
$saMKyA{"Ratsapwawi"} = 1;
$saMKyA{"RatSawI"} = 1;
$saMKyA{"RatwriMSaw"} = 1;
$saMKyA{"RodaSan"} = 1;
$saMKyA{"sahasra"} = 1;
$saMKyA{"SaMKa"} = 1;
$saMKyA{"sapwacawvAriMSaw"} = 1;
$saMKyA{"sapwan"} = 1;
$saMKyA{"sapwanavawi"} = 1;
$saMKyA{"sapwapaFcASaw"} = 1;
$saMKyA{"sapwaRaRti"} = 1;
$saMKyA{"sapwasapwawi"} = 1;
$saMKyA{"sapwaSawI"} = 1;
$saMKyA{"sapwASIwi"} = 1;
$saMKyA{"sapwaviMSawi"} = 1;
$saMKyA{"sapwawi"} = 1;
$saMKyA{"sapwawriMSaw"} = 1;
$saMKyA{"sapwaxaSan"} = 1;
$saMKyA{"Sawa"} = 1;
$saMKyA{"viMSawi"} = 1;
$saMKyA{"wrayaHpaFcASaw"} = 1;
$saMKyA{"wrayaHRaRti"} = 1;
$saMKyA{"wrayaHsapwawi"} = 1;
$saMKyA{"wrayaScawvAriMSaw"} = 1;
$saMKyA{"wrayaswriMSaw"} = 1;
$saMKyA{"wrayonavawi"} = 1;
$saMKyA{"wrayoviMSawi"} = 1;
$saMKyA{"wrayoxaSan"} = 1;
$saMKyA{"wri"} = 1;
$saMKyA{"wricawvAriMSaw"} = 1;
$saMKyA{"wriMSaw"} = 1;
$saMKyA{"wrinavawi"} = 1;
$saMKyA{"wripaFcASaw"} = 1;
$saMKyA{"wriRaRti"} = 1;
$saMKyA{"wrisapwawi"} = 1;
$saMKyA{"wriSawI"} = 1;
$saMKyA{"wryaSIwi"} = 1;
$saMKyA{"xaSaKarva"} = 1;
$saMKyA{"xaSakoti"} = 1;
$saMKyA{"xaSan"} = 1;
$saMKyA{"xaSanIla"} = 1;
$saMKyA{"xaSapaxma"} = 1;
$saMKyA{"xaSArbuxa"} = 1;
$saMKyA{"xaSaSaMKa"} = 1;
$saMKyA{"xvAcawvAriMSaw"} = 1;
$saMKyA{"xvAnavawi"} = 1;
$saMKyA{"xvApaFcASaw"} = 1;
$saMKyA{"xvARaRti"} = 1;
$saMKyA{"xvAsapwawi"} = 1;
$saMKyA{"xvAviMSawi"} = 1;
$saMKyA{"xvAwriMSaw"} = 1;
$saMKyA{"xvAxaSan"} = 1;
$saMKyA{"xvi"} = 1;
$saMKyA{"xvicawvAriMSaw"} = 1;
$saMKyA{"xvinavawi"} = 1;
$saMKyA{"xvipaFcASaw"} = 1;
$saMKyA{"xviRaRti"} = 1;
$saMKyA{"xvisapwawi"} = 1;
$saMKyA{"xviSawI"} = 1;
$saMKyA{"xvyaSIwi"} = 1;


my $generator = "$GlblVar::LTPROCBIN -cg $DataPATH/morph_bin/sup_gen.bin";
my @vacanam = ("eka","xvi","bahu");

#
###################  Sub routines #################
#
	
sub open_log {
  my($to_log, $tfpath) = @_;

  if($to_log eq "true"){
    if (! (-e "$tfpath")){
        mkdir "$tfpath" or die "Error creating directory $tfpath";
    }
    else { open(TMP1,">>$tfpath/noun.log") || die "Can't open $tfpath/noun.log for writing";}
    }
}
1;

sub register_log_and_close {
	my($log,$rt,$gen,$encoding,$jAwi,%e);

       if($log eq "true"){
          print TMP1 $e{'REMOTE_ADDR'}."\t".$e{'HTTP_USER_AGENT'}."\n"."rt:$rt\t"."gen:$gen\t"."encoding:$encoding\t"."jAwi:$jAwi\n##########################\n\n";
          close(TMP1);
       }
}
1;

sub print_header {
	print "Content-type:text/html;-expires:60*60*24;charset:UTF-8\n\n";

        print "<head>\n";
	print "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n";
        print "<script type=\"text/javascript\">\n";
        print "function show(word,encod){\n";
        print "window.open('/cgi-bin/$GlblVar::SCL_CGI/MT/dict_options.cgi?word='+word+'&outencoding='+encod+'','popUpWindow','height=500,width=400,left=100,top=100,resizable=yes,scrollbars=yes,toolbar=no,menubar=no,location=no,directories=no, status=yes').focus();\n }\n </script>";

        print "</head>\n";

        print "<body onload=\"register_keys()\"> <script src=\"/$GlblVar::SCL_HTDOCS/MT/wz_tooltip.js\" type=\"text/javascript\"></script>\n";
}
1;

sub gen_noun_forms{
	my($rt_wx,$lcat,$lifga_wx,$level,$format,$conversion_program,$outencoding) = @_;
	my($vib,$num,$vacanam,$str,$LTPROC_IN);

        #print "$rt_wx, $lcat $lifga_wx";

 if(!&check_cat($rt_wx,$lcat)) {
      print "<center> <b>Please check your input. </b></center>";
 } 
 if ((($rt_wx eq "asmax") || ($rt_wx eq "yuRmax")) && ($lcat eq "sarva")) { $lifga_wx = "a";}# $lcat = "sarva";
 elsif ($lcat eq "saMKyeyam") {
     if ($rt_wx =~ /n$/) { $lifga_wx = "a";}
     elsif ($rt_wx =~ /RaR$/) { $lifga_wx = "a";}
     elsif ($rt_wx =~ /wi$/) { $lifga_wx = "swrI";}
     elsif ($rt_wx =~ /wI$/) { $lifga_wx = "swrI";}
     elsif ($rt_wx =~ /w$/) { $lifga_wx = "swrI";}
     elsif ($rt_wx eq "koti") { $lifga_wx = "swrI";}
     elsif (($rt_wx ne "eka") && ($rt_wx ne "ekA") && ($rt_wx ne "xvi") && ($rt_wx ne "wri") && ($rt_wx ne "cawur")) { $lifga_wx = "napuM";}
     #else { $lifga_wx = "napuM";}
 } elsif ($lcat eq "saMKyA") {
    if (($rt_wx !~ /wi$/) && ($rt_wx !~ /w$/)) { $lifga_wx = "napuM";} else { $lifga_wx = "swrI";}
 }

 if($rt_wx =~ /^(.*-)([^\-]+)/) { $pUrvapaxa = $1; $rt_wx = $2;}
 else { $pUrvapaxa = "''";}

 $LTPROC_IN = "";
 for($vib=1;$vib<9;$vib++){
    for($num=0;$num<3;$num++){
        $vacanam = $vacanam[$num];
        $str = "^".$rt_wx."<vargaH:$lcat><lifgam:$lifga_wx><viBakwiH:$vib><vacanam:$vacanam><level:$level>"."\$"; 
        $LTPROC_IN .=  $str."\n";
    } # number
 } #vib
 chomp($LTPROC_IN); # To chomp the last \n, else it produces an extra blank line in the o/p of lt-proc

 if($format eq "JSON") {
    $str = "echo '".$LTPROC_IN."' | $generator | grep . | sed '1,\$s/^#.*/-/' | $conversion_program| $GlblVar::CGIDIR/$GlblVar::SCL_HTDOCS/skt_gen/noun/json_format.pl $outencoding";
 }
 else {# $format = web
	 $str = "echo '".$LTPROC_IN."' | $generator | grep . | sed '1,\$s/^#.*/-/' | pr -3 -a -t -w 150 | tr ' ' '\t' | $conversion_program | $GlblVar::CGIDIR/$GlblVar::SCL_HTDOCS/skt_gen/noun/html_format.pl $pUrvapaxa $rt_wx $lifga_wx $outencoding";
#open (TMP,">/tmp/aaa1");
#print TMP $str;
#close TMP;
	 #$LTPROC_IN =~ s/</;/g;
	 #$LTPROC_IN =~ s/>/;/g;
	 #print $LTPROC_IN;
 }
 my @out = `$str`;
 if ($out[0] =~ /\*/) { print "Word Forms Could not be generated\n";}
 else {return @out;}
}
1;

sub check_cat{
 my($rt,$cat) = @_;
 my($ans);
 if(($cat eq "nA")) { $ans = 1;}
 elsif(($cat eq "sarva") && $sarvanAma{$rt} ) { $ans = 1;}
 elsif(($cat eq "saMKyeyam") && $saMKyeya{$rt} ) { $ans = 1;}
 elsif(($cat eq "saMKyA") && $saMKyA{$rt} ) { $ans = 1;}
 elsif(($cat eq "pUraNam") && $pUraNa{$rt} ) { $ans = 1;}
 else {$ans = 0;}
$ans;
}
1;
