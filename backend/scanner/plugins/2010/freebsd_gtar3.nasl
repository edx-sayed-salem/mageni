#
#VID c175d72f-3773-11df-8bb8-0211d880e350
# OpenVAS Vulnerability Test
# $
# Description: Auto generated from VID c175d72f-3773-11df-8bb8-0211d880e350
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2010 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largely excerpted from the referenced
# advisories, and are Copyright (c) the respective author(s)
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
tag_insight = "The following package is affected: gtar

CVE-2010-0624
Heap-based buffer overflow in the rmt_read__ function in
lib/rtapelib.c in the rmt client functionality in GNU tar before 1.23
and GNU cpio before 2.11 allows remote rmt servers to cause a denial
of service (memory corruption) or possibly execute arbitrary code by
sending more data than was requested, related to archive filenames
that contain a : (colon) character.";
tag_solution = "Update your system with the appropriate patches or
software upgrades.

http://www.agrs.tu-berlin.de/index.php?id=78327
http://www.vuxml.org/freebsd/c175d72f-3773-11df-8bb8-0211d880e350.html";
tag_summary = "The remote host is missing an update to the system
as announced in the referenced advisory.";



if(description)
{
 script_oid("1.3.6.1.4.1.25623.1.0.315095");
 script_version("$Revision: 8495 $");
 script_tag(name:"last_modification", value:"$Date: 2018-01-23 08:57:49 +0100 (Tue, 23 Jan 2018) $");
 script_tag(name:"creation_date", value:"2010-03-30 18:37:46 +0200 (Tue, 30 Mar 2010)");
 script_cve_id("CVE-2010-0624");
 script_tag(name:"cvss_base", value:"6.8");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
 script_name("FreeBSD Ports: gtar");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2010 E-Soft Inc. http://www.securityspace.com");
 script_family("FreeBSD Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/freebsdrel", "login/SSH/success");
 script_tag(name : "insight" , value : tag_insight);
 script_tag(name : "solution" , value : tag_solution);
 script_tag(name : "summary" , value : tag_summary);
 script_tag(name:"qod_type", value:"package");
 script_tag(name:"solution_type", value:"VendorFix");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-bsd.inc");

txt = "";
vuln = 0;
bver = portver(pkg:"gtar");
if(!isnull(bver) && revcomp(a:bver, b:"1.22_3")<0) {
    txt += 'Package gtar version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}

if(vuln) {
    security_message(data:string(txt));
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
