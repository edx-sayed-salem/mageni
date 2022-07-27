# OpenVAS Vulnerability Test
# $Id: mdksa_2009_091.nasl 6573 2017-07-06 13:10:50Z cfischer $
# Description: Auto-generated from advisory MDVSA-2009:091 (mod_perl)
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
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
tag_insight = "A vulnerability has been found and corrected in mod_perl v1.x and v2.x:

Cross-site scripting (XSS) vulnerability in Status.pm in Apache::Status
and Apache2::Status in mod_perl1 and mod_perl2 for the Apache HTTP
Server, when /perl-status is accessible, allows remote attackers to
inject arbitrary web script or HTML via the URI (CVE-2009-0796).

The updated packages have been patched to correct these issues.

Affected: 2008.1, 2009.0, Corporate 3.0, Corporate 4.0";
tag_solution = "To upgrade automatically use MandrakeUpdate or urpmi.  The verification
of md5 checksums and GPG signatures is performed automatically for you.

https://secure1.securityspace.com/smysecure/catid.html?in=MDVSA-2009:091";
tag_summary = "The remote host is missing an update to mod_perl
announced via advisory MDVSA-2009:091.";

                                                                                

if(description)
{
 script_oid("1.3.6.1.4.1.25623.1.0.308780");
 script_version("$Revision: 6573 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-06 15:10:50 +0200 (Thu, 06 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-04-15 22:11:00 +0200 (Wed, 15 Apr 2009)");
 script_cve_id("CVE-2009-0796");
 script_tag(name:"cvss_base", value:"2.6");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:H/Au:N/C:N/I:P/A:N");
 script_name("Mandrake Security Advisory MDVSA-2009:091 (mod_perl)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com");
 script_family("Mandrake Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/mandriva_mandrake_linux", "ssh/login/rpms");
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

include("pkg-lib-rpm.inc");

res = "";
report = "";
if ((res = isrpmvuln(pkg:"apache-mod_perl", rpm:"apache-mod_perl~2.0.4~1.1mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"apache-mod_perl-devel", rpm:"apache-mod_perl-devel~2.0.4~1.1mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"apache-mod_perl", rpm:"apache-mod_perl~2.0.4~2.1mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"apache-mod_perl-devel", rpm:"apache-mod_perl-devel~2.0.4~2.1mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"apache2-mod_perl", rpm:"apache2-mod_perl~2.0.48_1.99_11~3.2.C30mdk", rls:"MNDK_3.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"apache2-mod_perl-devel", rpm:"apache2-mod_perl-devel~2.0.48_1.99_11~3.2.C30mdk", rls:"MNDK_3.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"apache-mod_perl", rpm:"apache-mod_perl~1.3.29_1.29~3.3.C30mdk", rls:"MNDK_3.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"HTML-Embperl", rpm:"HTML-Embperl~1.3.29_1.3.6~3.3.C30mdk", rls:"MNDK_3.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mod_perl-common", rpm:"mod_perl-common~1.3.29_1.29~3.3.C30mdk", rls:"MNDK_3.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mod_perl-devel", rpm:"mod_perl-devel~1.3.29_1.29~3.3.C30mdk", rls:"MNDK_3.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"apache-mod_perl", rpm:"apache-mod_perl~2.0.2~8.2.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"apache-mod_perl-devel", rpm:"apache-mod_perl-devel~2.0.2~8.2.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
