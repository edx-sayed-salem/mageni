#
# OpenVAS Vulnerability Test
# $
# Description: Auto generated from Gentoo's XML based advisory
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largely excerpted from the referenced
# advisories, and are Copyright (c) the respective author(s)
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

include("revisions-lib.inc");
tag_insight = "An off-by-one error in Compress::Raw::Zlib and Compress::Raw::Bzip2 might
    lead to a Denial of Service.";
tag_solution = "All Compress::Raw::Zlib users should upgrade to the latest version:

    # emerge --sync
    # emerge --ask --oneshot --verbose =perl-core/Compress-Raw-Zlib-2.020

All Compress::Raw::Bzip2 users should upgrade to the latest version:

    # emerge --sync
    # emerge --ask --oneshot --verbose =perl-core/Compress-Raw-Bzip2-2.020

http://www.securityspace.com/smysecure/catid.html?in=GLSA%20200908-07
http://bugs.gentoo.org/show_bug.cgi?id=273141
http://bugs.gentoo.org/show_bug.cgi?id=281955";
tag_summary = "The remote host is missing updates announced in
advisory GLSA 200908-07.";

                                                                                
                                                                                

if(description)
{
 script_oid("1.3.6.1.4.1.25623.1.0.308689");
 script_version("$Revision: 6595 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 11:19:55 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-09-02 04:58:39 +0200 (Wed, 02 Sep 2009)");
 script_cve_id("CVE-2009-1391", "CVE-2009-1884");
 script_tag(name:"cvss_base", value:"6.8");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
 script_name("Gentoo Security Advisory GLSA 200908-07 (Compress-Raw-Zlib Compress-Raw-Bzip2)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com");
 script_family("Gentoo Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/gentoo", "ssh/login/pkg");
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

include("pkg-lib-gentoo.inc");

res = "";
report = "";
if ((res = ispkgvuln(pkg:"perl-core/Compress-Raw-Zlib", unaffected: make_list("ge 2.020"), vulnerable: make_list("lt 2.020"))) != NULL) {
    report += res;
}
if ((res = ispkgvuln(pkg:"perl-core/Compress-Raw-Bzip2", unaffected: make_list("ge 2.020"), vulnerable: make_list("lt 2.020"))) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
