###############################################################################
# OpenVAS Vulnerability Test
#
# Mandriva Update for pidgin MDVSA-2010:041 (pidgin)
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2010 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

include("revisions-lib.inc");
tag_insight = "Multiple security vulnerabilities has been identified and fixed
  in pidgin:

  Certain malformed SLP messages can trigger a crash because the MSN
  protocol plugin fails to check that all pieces of the message are
  set correctly (CVE-2010-0277).
  
  In a user in a multi-user chat room has a nickname containing '&lt;br&gt;'
  then libpurple ends up having two users with username ' ' in the room,
  and Finch crashes in this situation. We do not believe there is a
  possibility of remote code execution (CVE-2010-0420).
  
  oCERT notified us about a problem in Pidgin, where a large amount of
  processing time will be used when inserting many smileys into an IM
  or chat window. This should not cause a crash, but Pidgin can become
  unusable slow (CVE-2010-0423).
  
  Packages for 2008.0 are provided for Corporate Desktop 2008.0
  customers.
  
  This update provides pidgin 2.6.6, which is not vulnerable to these
  issues.";

tag_affected = "pidgin on Mandriva Linux 2008.0,
  Mandriva Linux 2008.0/X86_64,
  Mandriva Linux 2009.1,
  Mandriva Linux 2009.1/X86_64,
  Mandriva Linux 2010.0,
  Mandriva Linux 2010.0/X86_64,
  Mandriva Enterprise Server 5,
  Mandriva Enterprise Server 5/X86_64";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "http://lists.mandriva.com/security-announce/2010-02/msg00037.php");
  script_oid("1.3.6.1.4.1.25623.1.0.314119");
  script_version("$Revision: 8266 $");
  script_tag(name:"last_modification", value:"$Date: 2018-01-01 08:28:32 +0100 (Mon, 01 Jan 2018) $");
  script_tag(name:"creation_date", value:"2010-02-19 13:38:15 +0100 (Fri, 19 Feb 2010)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_xref(name: "MDVSA", value: "2010:041");
  script_cve_id("CVE-2010-0277", "CVE-2010-0420", "CVE-2010-0423");
  script_name("Mandriva Update for pidgin MDVSA-2010:041 (pidgin)");

  script_tag(name: "summary" , value: "Check for the Version of pidgin");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("Mandrake Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/mandriva_mandrake_linux", "ssh/login/release");
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}


include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");


res = "";
if(release == NULL){
  exit(0);
}

if(release == "MNDK_2008.0")
{

  if ((res = isrpmvuln(pkg:"finch", rpm:"finch~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libfinch0", rpm:"libfinch0~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libpurple0", rpm:"libpurple0~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libpurple-devel", rpm:"libpurple-devel~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin", rpm:"pidgin~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-bonjour", rpm:"pidgin-bonjour~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-client", rpm:"pidgin-client~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-gevolution", rpm:"pidgin-gevolution~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-i18n", rpm:"pidgin-i18n~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-meanwhile", rpm:"pidgin-meanwhile~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-mono", rpm:"pidgin-mono~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-perl", rpm:"pidgin-perl~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-plugins", rpm:"pidgin-plugins~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-silc", rpm:"pidgin-silc~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-tcl", rpm:"pidgin-tcl~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64finch0", rpm:"lib64finch0~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64purple0", rpm:"lib64purple0~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64purple-devel", rpm:"lib64purple-devel~2.6.6~0.1mdv2008.0", rls:"MNDK_2008.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}


if(release == "MNDK_2010.0")
{

  if ((res = isrpmvuln(pkg:"finch", rpm:"finch~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libfinch0", rpm:"libfinch0~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libpurple0", rpm:"libpurple0~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libpurple-devel", rpm:"libpurple-devel~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin", rpm:"pidgin~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-bonjour", rpm:"pidgin-bonjour~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-client", rpm:"pidgin-client~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-gevolution", rpm:"pidgin-gevolution~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-i18n", rpm:"pidgin-i18n~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-meanwhile", rpm:"pidgin-meanwhile~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-mono", rpm:"pidgin-mono~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-perl", rpm:"pidgin-perl~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-plugins", rpm:"pidgin-plugins~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-silc", rpm:"pidgin-silc~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-tcl", rpm:"pidgin-tcl~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64finch0", rpm:"lib64finch0~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64purple0", rpm:"lib64purple0~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64purple-devel", rpm:"lib64purple-devel~2.6.6~0.1mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}


if(release == "MNDK_2009.1")
{

  if ((res = isrpmvuln(pkg:"finch", rpm:"finch~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libfinch0", rpm:"libfinch0~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libpurple0", rpm:"libpurple0~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libpurple-devel", rpm:"libpurple-devel~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin", rpm:"pidgin~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-bonjour", rpm:"pidgin-bonjour~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-client", rpm:"pidgin-client~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-gevolution", rpm:"pidgin-gevolution~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-i18n", rpm:"pidgin-i18n~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-meanwhile", rpm:"pidgin-meanwhile~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-mono", rpm:"pidgin-mono~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-perl", rpm:"pidgin-perl~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-plugins", rpm:"pidgin-plugins~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-silc", rpm:"pidgin-silc~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-tcl", rpm:"pidgin-tcl~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64finch0", rpm:"lib64finch0~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64purple0", rpm:"lib64purple0~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64purple-devel", rpm:"lib64purple-devel~2.6.6~0.1mdv2009.1", rls:"MNDK_2009.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}


if(release == "MNDK_mes5")
{

  if ((res = isrpmvuln(pkg:"finch", rpm:"finch~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libfinch0", rpm:"libfinch0~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libpurple0", rpm:"libpurple0~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libpurple-devel", rpm:"libpurple-devel~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin", rpm:"pidgin~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-bonjour", rpm:"pidgin-bonjour~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-client", rpm:"pidgin-client~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-gevolution", rpm:"pidgin-gevolution~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-i18n", rpm:"pidgin-i18n~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-meanwhile", rpm:"pidgin-meanwhile~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-mono", rpm:"pidgin-mono~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-perl", rpm:"pidgin-perl~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-plugins", rpm:"pidgin-plugins~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-silc", rpm:"pidgin-silc~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"pidgin-tcl", rpm:"pidgin-tcl~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64finch0", rpm:"lib64finch0~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64purple0", rpm:"lib64purple0~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64purple-devel", rpm:"lib64purple-devel~2.6.6~0.1mdvmes5", rls:"MNDK_mes5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
