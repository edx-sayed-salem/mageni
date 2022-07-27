# OpenVAS Vulnerability Test
# Description: Auto-generated from advisory DSA 2252-1 (dovecot)
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (C) 2011 E-Soft Inc.
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
# or at your option, GNU General Public License version 3,
# as published by the Free Software Foundation
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
#

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.69959");
  script_version("2021-11-23T15:20:34+0000");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2011-08-03 04:36:20 +0200 (Wed, 03 Aug 2011)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_cve_id("CVE-2011-1929");
  script_name("Debian Security Advisory DSA 2252-1 (dovecot)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2011 E-Soft Inc.");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB6");
  script_xref(name:"URL", value:"https://secure1.securityspace.com/smysecure/catid.html?in=DSA%202252-1");
  script_tag(name:"insight", value:"It was discovered that the message header parser in the Dovecot mail
server parsed NUL characters incorrectly, which could lead to denial
of service through malformed mail headers.


The oldstable distribution (lenny) is not affected.

For the stable distribution (squeeze), this problem has been fixed in
version 1.2.15-7.

For the unstable distribution (sid), this problem has been fixed in
version 2.0.13-1.");

  script_tag(name:"solution", value:"We recommend that you upgrade your dovecot packages.");
  script_tag(name:"summary", value:"The remote host is missing an update to dovecot
announced via advisory DSA 2252-1.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"dovecot-common", ver:"1:1.2.15-7", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"dovecot-dbg", ver:"1:1.2.15-7", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"dovecot-dev", ver:"1:1.2.15-7", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"dovecot-imapd", ver:"1:1.2.15-7", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"dovecot-pop3d", ver:"1:1.2.15-7", rls:"DEB6")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}