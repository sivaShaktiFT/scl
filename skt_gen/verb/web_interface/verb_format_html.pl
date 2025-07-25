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


#@lakAra = ("लट्","लिट्","लुट्","लृट्","लोट्","लङ्","विधिलिङ्","आशीर्लिङ्","लुङ्","लृङ्");
@disp_lakAra = ("लट् (वर्तमान)","लिट् (परोक्ष)","लुट् (अनद्यतन भविष्यत्)","लृट् (अद्यतन भविष्यत्)","लोट् (आज्ञार्थ)","लङ् (अनद्यतन भूत)","विधिलिङ्","आशीर्लिङ्","लुङ् (अद्यतन भूत)","लृङ् (भविष्यत्)");
@person = ("प्रथमपुरुषः","मध्यमपुरुषः","उत्तमपुरुषः");
@disp_lakAra_iast = ("lat (Present)","liṭ (Perfect)","luṭ (Periphrastic Future)","lṛṭ (Future)","loṭ (Imperative)","laṅ (Imperfect)","vidhilṅ (Optative)","āśīrlṅ (Benedictive)","luṅ (aorist)","lṛṅ (Conditional)");
@person_iast = ("prathamapuruṣaḥ","madhyamapuruṣaḥ","uttamapuruṣaḥ");

my $outencoding = $ARGV[0];
my $line_no = 0;
my $lakAra_no = 0;
my $table = "";
my $value = "nil";
while($in = <STDIN>){
  chomp($in);
  if($in){
    if($in=~/\?/){
         $in ="-";
    }
    if($line_no == 0) {
     $table .=  "<table border=0>\n";
     $table .= "<center><tr><td colspan=4 align=\"center\"><font color=\"brown\" size=\"5\"><b>";
     if ($outencoding eq "IAST") {
        $table .= $disp_lakAra_iast[$lakAra_no];
     } else {
        $table .= $disp_lakAra[$lakAra_no];
     }
        $table .= "</b></font></td></tr>\n";
     if ($outencoding eq "IAST") {
        $table .= "<tr  bgcolor='tan'><td></td><td align=\"center\"><font color=\"white\" size=\"4\">ekavacanam</font></td><td align=\"center\"><font color=\"white\" size=\"4\">dvivacanam</font></td><td align=\"center\"><font color=\"white\" size=\"4\">bahuvacanam</font></td></tr>\n";
     } else {
        $table .= "<tr  bgcolor='tan'><td></td><td align=\"center\"><font color=\"white\" size=\"4\">एकवचनम्</font></td><td align=\"center\"><font color=\"white\" size=\"4\">द्विवचनम्</font></td><td align=\"center\"><font color=\"white\" size=\"4\">बहुवचनम्</font></td></tr>\n";
     }
    }
    $in =~ s/[ \t][ \t]*/ /g;
    if($in eq "") { $in = "-\t-\t-";}
    @in = split(/ /,$in);
    if($in[0] eq "") { $in[0] = "-";} 
    if($in[1] eq "") { $in[1] = "-";}
    if($in[2] eq "") { $in[2] = "-";}
    if (($in[0] ne "-") || ($in[1] ne "-") || ($in[2] ne "-")) { $value = "yes"}
       $table .= "<tr><td width=20% bgcolor='#461B7E'  align='middle'><font color=\"white\" size=\"4\">";
    if ($outencoding eq "IAST") {
       $table .=  $person_iast[$line_no];
    } else {
       $table .=  $person[$line_no];
    }
       $table .= "</font></td><td width=27% align=\"center\" bgcolor='#E6CCFF'><font color=\"black\" size=\"4\"> $in[0]</font> </td><td width=27% align=\"center\" bgcolor='#E6CCFF'><font color=\"black\" size=\"4\">$in[1]</font></td><td width=27% align=\"center\" bgcolor='#E6CCFF'><font color=\"black\" size=\"4\">$in[2]</font></td></tr>\n";
    if($line_no == 2) {
            $table .=  "</center></table>\n";
    }
    $line_no++;
    if($line_no == 3) {$line_no = 0; $lakAra_no++;}
  }
}
if ($value eq "nil") { print " <center>\n <font color=\"green\" size=\"6\"><b> Forms not found\n </font></center>";}
else { print $table;}
