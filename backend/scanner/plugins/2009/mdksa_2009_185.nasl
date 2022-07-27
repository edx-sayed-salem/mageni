# OpenVAS Vulnerability Test
# $Id: mdksa_2009_185.nasl 6587 2017-07-07 06:35:35Z cfischer $
# Description: Auto-generated from advisory MDVSA-2009:185 (firefox)
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
tag_insight = "Security vulnerabilities have been discovered and corrected in Mozilla
Firefox 3.0.x:

Several flaws in Firefox browser and javascript engine could allow a
malicious site to cause a denial-of-service of possibly remote code
execution (CVE-2009-1392, CVE-2009-1832, CVE-2009-1833, CVE-2009-1837,
CVE-2009-1838, CVE-2009-1841, CVE-2009-2043, CVE-2009-2044).

Several flaws were discovered in Firefox which could lead to
information disclosure and security bypass (CVE-2009-1834,
CVE-2009-1835, CVE-2009-1836, CVE-2009-1839, CVE-2009-1840).

Several flaws were discovered in the Firefox browser and
JavaScript engines, which could allow a malicious website to
cause a denial of service or possibly execute arbitrary code with
user privileges. (CVE-2009-2462, CVE-2009-2463, CVE-2009-2464,
CVE-2009-2465, CVE-2009-2466, CVE-2009-2468)

Attila Suszter discovered a flaw in the way Firefox processed
Flash content, which could cause a denial of service or possibly
execute arbitrary code with the privileges of the user invoking the
program. (CVE-2009-2467)

It was discovered that Firefox did not properly handle some
SVG content, which could lead to a denial of service or possibly
execute arbitrary code with the privileges of the user invoking the
program. (CVE-2009-2469)

A flaw was discovered in the JavaScript engine which could be used
to perform cross-site scripting attacks. (CVE-2009-2472)

This update provides the latest Mozilla Firefox 3.0.x to correct
these issues.

Additionally, some packages which require so, have been rebuilt and
are being provided as updates.

Affected: Enterprise Server 5.0";
tag_solution = "To upgrade automatically use MandrakeUpdate or urpmi.  The verification
of md5 checksums and GPG signatures is performed automatically for you.

https://secure1.securityspace.com/smysecure/catid.html?in=MDVSA-2009:185
http://www.mozilla.org/security/known-vulnerabilities/firefox30.html#firefox3.0.12";
tag_summary = "The remote host is missing an update to firefox
announced via advisory MDVSA-2009:185.";

                                                                                

if(description)
{
 script_oid("1.3.6.1.4.1.25623.1.0.309346");
 script_version("$Revision: 6587 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 08:35:35 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-08-17 16:54:45 +0200 (Mon, 17 Aug 2009)");
 script_cve_id("CVE-2009-1392", "CVE-2009-1832", "CVE-2009-1833", "CVE-2009-1837", "CVE-2009-1838", "CVE-2009-1841", "CVE-2009-2043", "CVE-2009-2044", "CVE-2009-1834", "CVE-2009-1835", "CVE-2009-1836", "CVE-2009-1839", "CVE-2009-1840", "CVE-2009-2462", "CVE-2009-2463", "CVE-2009-2464", "CVE-2009-2465", "CVE-2009-2466", "CVE-2009-2468", "CVE-2009-2467", "CVE-2009-2469", "CVE-2009-2472", "CVE-2009-2061", "CVE-2009-2065");
 script_tag(name:"cvss_base", value:"10.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
 script_name("Mandrake Security Advisory MDVSA-2009:185 (firefox)");



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
if ((res = isrpmvuln(pkg:"firefox", rpm:"firefox~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-af", rpm:"firefox-af~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-ar", rpm:"firefox-ar~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-be", rpm:"firefox-be~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-bg", rpm:"firefox-bg~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-bn", rpm:"firefox-bn~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-ca", rpm:"firefox-ca~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-cs", rpm:"firefox-cs~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-cy", rpm:"firefox-cy~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-da", rpm:"firefox-da~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-de", rpm:"firefox-de~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-el", rpm:"firefox-el~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-en_GB", rpm:"firefox-en_GB~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-eo", rpm:"firefox-eo~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-es_AR", rpm:"firefox-es_AR~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-es_ES", rpm:"firefox-es_ES~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-et", rpm:"firefox-et~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-eu", rpm:"firefox-eu~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-fi", rpm:"firefox-fi~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-fr", rpm:"firefox-fr~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-fy", rpm:"firefox-fy~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-ga_IE", rpm:"firefox-ga_IE~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-gl", rpm:"firefox-gl~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-gu_IN", rpm:"firefox-gu_IN~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-he", rpm:"firefox-he~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-hi", rpm:"firefox-hi~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-hu", rpm:"firefox-hu~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-id", rpm:"firefox-id~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-is", rpm:"firefox-is~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-it", rpm:"firefox-it~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-ja", rpm:"firefox-ja~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-ka", rpm:"firefox-ka~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-kn", rpm:"firefox-kn~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-ko", rpm:"firefox-ko~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-ku", rpm:"firefox-ku~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-lt", rpm:"firefox-lt~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-lv", rpm:"firefox-lv~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-mk", rpm:"firefox-mk~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-mn", rpm:"firefox-mn~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-mr", rpm:"firefox-mr~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-nb_NO", rpm:"firefox-nb_NO~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-nl", rpm:"firefox-nl~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-nn_NO", rpm:"firefox-nn_NO~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-oc", rpm:"firefox-oc~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-pa_IN", rpm:"firefox-pa_IN~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-pl", rpm:"firefox-pl~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-pt_BR", rpm:"firefox-pt_BR~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-pt_PT", rpm:"firefox-pt_PT~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-ro", rpm:"firefox-ro~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-ru", rpm:"firefox-ru~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-si", rpm:"firefox-si~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-sk", rpm:"firefox-sk~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-sl", rpm:"firefox-sl~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-sq", rpm:"firefox-sq~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-sr", rpm:"firefox-sr~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-sv_SE", rpm:"firefox-sv_SE~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-te", rpm:"firefox-te~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-th", rpm:"firefox-th~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-tr", rpm:"firefox-tr~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-uk", rpm:"firefox-uk~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-zh_CN", rpm:"firefox-zh_CN~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"firefox-zh_TW", rpm:"firefox-zh_TW~3.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"gnome-python-extras", rpm:"gnome-python-extras~2.19.1~20.8mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"gnome-python-gda", rpm:"gnome-python-gda~2.19.1~20.8mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"gnome-python-gda-devel", rpm:"gnome-python-gda-devel~2.19.1~20.8mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"gnome-python-gdl", rpm:"gnome-python-gdl~2.19.1~20.8mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"gnome-python-gtkhtml2", rpm:"gnome-python-gtkhtml2~2.19.1~20.8mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"gnome-python-gtkmozembed", rpm:"gnome-python-gtkmozembed~2.19.1~20.8mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"gnome-python-gtkspell", rpm:"gnome-python-gtkspell~2.19.1~20.8mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libxulrunner1.9", rpm:"libxulrunner1.9~1.9.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libxulrunner-devel", rpm:"libxulrunner-devel~1.9.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libxulrunner-unstable-devel", rpm:"libxulrunner-unstable-devel~1.9.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"xulrunner", rpm:"xulrunner~1.9.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"yelp", rpm:"yelp~2.24.0~3.8mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64xulrunner1.9", rpm:"lib64xulrunner1.9~1.9.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64xulrunner-devel", rpm:"lib64xulrunner-devel~1.9.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64xulrunner-unstable-devel", rpm:"lib64xulrunner-unstable-devel~1.9.0.12~0.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
