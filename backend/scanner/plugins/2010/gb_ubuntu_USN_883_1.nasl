###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ubuntu_USN_883_1.nasl 8495 2018-01-23 07:57:49Z teissa $
#
# Ubuntu Update for network-manager-applet vulnerabilities USN-883-1
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
tag_insight = "It was discovered that NetworkManager did not ensure that the Certification
  Authority (CA) certificate file remained present when using WPA Enterprise
  or 802.1x networks. A remote attacker could use this flaw to spoof the
  identity of a wireless network and view sensitive information.
  (CVE-2009-4144)

  It was discovered that the connection editor GUI would incorrectly export
  objects over D-Bus. A local user could read D-Bus signals to view other
  users' network connection passwords and pre-shared keys. (CVE-2009-4145)";

tag_summary = "Ubuntu Update for Linux kernel vulnerabilities USN-883-1";
tag_affected = "network-manager-applet vulnerabilities on Ubuntu 8.10 ,
  Ubuntu 9.04";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name: "URL" , value: "http://www.ubuntu.com/usn/usn-883-1/");
  script_oid("1.3.6.1.4.1.25623.1.0.313517");
  script_version("$Revision: 8495 $");
  script_tag(name:"last_modification", value:"$Date: 2018-01-23 08:57:49 +0100 (Tue, 23 Jan 2018) $");
  script_tag(name:"creation_date", value:"2010-01-19 08:58:46 +0100 (Tue, 19 Jan 2010)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_cve_id("CVE-2009-4144", "CVE-2009-4145");
  script_name("Ubuntu Update for network-manager-applet vulnerabilities USN-883-1");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages");
  script_tag(name : "summary" , value : tag_summary);
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}


include("pkg-lib-deb.inc");

release = get_kb_item("ssh/login/release");


res = "";
if(release == NULL){
  exit(0);
}

if(release == "UBUNTU9.04")
{

  if ((res = isdpkgvuln(pkg:"network-manager-gnome", ver:"0.7.1~rc4.1-0ubuntu2.1", rls:"UBUNTU9.04")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}


if(release == "UBUNTU8.10")
{

  if ((res = isdpkgvuln(pkg:"network-manager-gnome", ver:"0.7~~svn20081020t000444-0ubuntu1.8.10.3", rls:"UBUNTU8.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
