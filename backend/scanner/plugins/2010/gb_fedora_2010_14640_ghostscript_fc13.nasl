###############################################################################
# OpenVAS Vulnerability Test
#
# Fedora Update for ghostscript FEDORA-2010-14640
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
tag_insight = "Ghostscript is a set of software that provides a PostScript
  interpreter, a set of C procedures (the Ghostscript library, which
  implements the graphics capabilities in the PostScript language) and
  an interpreter for Portable Document Format (PDF) files. Ghostscript
  translates PostScript code into many common, bitmapped formats, like
  those understood by your printer or screen. Ghostscript is normally
  used to display PostScript files and to print PostScript files to
  non-PostScript printers.

  If you need to display PostScript files or print them to
  non-PostScript printers, you should install ghostscript. If you
  install ghostscript, you also need to install the ghostscript-fonts
  package.";
tag_solution = "Please Install the Updated Packages.";

tag_affected = "ghostscript on Fedora 13";


if(description)
{
  script_xref(name : "URL" , value : "http://lists.fedoraproject.org/pipermail/package-announce/2010-October/049164.html");
  script_oid("1.3.6.1.4.1.25623.1.0.313433");
  script_version("$Revision: 8495 $");
  script_tag(name:"last_modification", value:"$Date: 2018-01-23 08:57:49 +0100 (Tue, 23 Jan 2018) $");
  script_tag(name:"creation_date", value:"2010-10-19 15:54:15 +0200 (Tue, 19 Oct 2010)");
  script_tag(name:"cvss_base", value:"9.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_xref(name: "FEDORA", value: "2010-14640");
  script_cve_id("CVE-2010-2055", "CVE-2010-1628");
  script_name("Fedora Update for ghostscript FEDORA-2010-14640");

  script_tag(name: "summary" , value: "Check for the Version of ghostscript");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("Fedora Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/fedora", "ssh/login/rpms");
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name : "solution" , value : tag_solution);
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

if(release == "FC13")
{

  if ((res = isrpmvuln(pkg:"ghostscript", rpm:"ghostscript~8.71~16.fc13", rls:"FC13")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
