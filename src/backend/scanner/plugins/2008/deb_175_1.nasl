# OpenVAS Vulnerability Test
# $Id: deb_175_1.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 175-1
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2007 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largerly excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
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

include("revisions-lib.inc");
tag_insight = "P�ter H�ltzl discovered a problem in the way syslog-ng handles macro
expansion.  When a macro is expanded a static length buffer is used
accompanied by a counter.  However, when constant chharacters are
appended, the counter is not updated properly, leading to incorrect
boundary checking.  An attacker may be able to use specially crafted
log messages inserted via UDP which overflows the buffer.

This problem has been fixed in version 1.5.15-1.1 for the current
stable distribution (woody), in version 1.4.0rc3-3.2 for the old
stable distribution (potato) and version 1.5.21-1 for the unstable
distribution (sid).

We recommend that you upgrade your syslog-ng package immediately.";
tag_summary = "The remote host is missing an update to syslog-ng
announced via advisory DSA 175-1.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%20175-1";

if(description)
{
 script_oid("1.3.6.1.4.1.25623.1.0.300403");
 script_cve_id("CVE-2002-1200");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-01-17 22:24:46 +0100 (Thu, 17 Jan 2008)");
 script_tag(name:"cvss_base", value:"7.5");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
 script_name("Debian Security Advisory DSA 175-1 (syslog-ng)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2005 E-Soft Inc. http://www.securityspace.com");
 script_family("Debian Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages");
 script_tag(name : "solution" , value : tag_solution);
 script_tag(name : "insight" , value : tag_insight);
 script_tag(name : "summary" , value : tag_summary);
 script_tag(name:"qod_type", value:"package");
 script_tag(name:"solution_type", value:"VendorFix");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"syslog-ng", ver:"1.4.0rc3-3.2", rls:"DEB2.2")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"syslog-ng", ver:"1.5.15-1.1", rls:"DEB3.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
