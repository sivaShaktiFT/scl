#!/usr/bin/env perl

#  Copyright (C) 2022-2025 Amba Kulkarni (ambapradeep@gmail.com)
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
require "../paths.pl";
$myPATH="$GlblVar::CGIDIR/$GlblVar::SCL_CGI";
require "$myPATH/cgi_interface.pl";

package main;


require "$myPATH/converters/convert.pl";


  my $conversion_program;
  my %param = &get_parameters();

  my $format = "web";

  my $encoding=$param{encoding};
  my $shloka=$param{text};
  my $out_encoding=$param{out_encoding};

  if ($param{mode} eq "json") { $format = $param{mode};}


  if ($out_encoding eq "Devanagari") { $script = "DEV";}
  if ($out_encoding eq "IAST") { $script = "IAST";}

  if ($out_encoding eq "IAST") {
      $conversion_program = "$myPATH/converters/wx2utf8roman.out";
  } else {
      $conversion_program = "$myPATH/converters/ri_skt | $myPATH/converters/iscii2utf8.py 1";
  }

  $shloka_wx=&convert($encoding,$shloka,$myPATH);
  chomp($shloka_wx);
  my $pid = $$;
  open (TMP,">$GlblVar::TFPATH/$pid");
  print TMP $shloka_wx;
  close(TMP);

  print "Content-type:text/html;-expires:60*60*24;charset:UTF-8\n\n";
  if ($out_encoding eq "IAST") { print "<h3><font color=\"green\"> Yamaka </font></h3>";} else { print "<h3><font color=\"green\"> यमक अलंकार:  </font></h3>";}
  system("python3 ./ymk_main.py $format < $GlblVar::TFPATH/$pid | $conversion_program");
  #system("echo $shloka_wx | python3 ./ymk_main.py $format | $conversion_program");
  if ($out_encoding eq "IAST") { print "<h3><font color=\"green\"> Anuprāsa</font> </h3>";} else { print "<h3><font color=\"green\"> अनुप्रास अलंकार:</font></h3>";}
  system("python3 ./anuprAsa_main.py $format $out_encoding < $GlblVar::TFPATH/$pid | $conversion_program");
  #system("echo shloka_wx | python3 ./anuprAsa_main.py $format $out_encoding | $conversion_program");

  system("rm $GlblVar::TFPATH/$pid");
