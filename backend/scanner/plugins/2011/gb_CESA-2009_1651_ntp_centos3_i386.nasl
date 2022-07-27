###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for ntp CESA-2009:1651 centos3 i386
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2011 Greenbone Networks GmbH, http://www.greenbone.net
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

if(description)
{
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2009-December/016352.html");
  script_oid("1.3.6.1.4.1.25623.1.0.880690");
  script_version("$Revision: 14222 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-15 13:50:48 +0100 (Fri, 15 Mar 2019) $");
  script_tag(name:"creation_date", value:"2011-08-09 08:20:34 +0200 (Tue, 09 Aug 2011)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_cve_id("CVE-2009-0159", "CVE-2009-3563");
  script_name("CentOS Update for ntp CESA-2009:1651 centos3 i386");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'ntp'
  package(s) announced via the referenced advisory.");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2011 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS3");
  script_tag(name:"affected", value:"ntp on CentOS 3");
  script_tag(name:"insight", value:"The Network Time Protocol (NTP) is used to synchronize a computer's time
  with a referenced time source.

  Robin Park and Dmitri Vinokurov discovered a flaw in the way ntpd handled
  certain malformed NTP packets. ntpd logged information about all such
  packets and replied with an NTP packet that was treated as malformed when
  received by another ntpd. A remote attacker could use this flaw to create
  an NTP packet reply loop between two ntpd servers via a malformed packet
  with a spoofed source IP address and port, causing ntpd on those servers to
  use excessive amounts of CPU time and fill disk space with log messages.
  (CVE-2009-3563)

  A buffer overflow flaw was found in the ntpq diagnostic command. A
  malicious, remote server could send a specially-crafted reply to an ntpq
  request that could crash ntpq or, potentially, execute arbitrary code with
  the privileges of the user running the ntpq command. (CVE-2009-0159)

  All ntp users are advised to upgrade to this updated package, which
  contains backported patches to resolve these issues. After installing the
  update, the ntpd daemon will restart automatically.");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";

if(release == "CentOS3")
{

  if ((res = isrpmvuln(pkg:"ntp", rpm:"ntp~4.1.2~6.el3", rls:"CentOS3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
