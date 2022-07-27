# OpenVAS Vulnerability Test
# Description: Auto-generated from advisory DSA 2195-1 (php5)
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
  script_oid("1.3.6.1.4.1.25623.1.0.69331");
  script_version("2021-11-23T15:20:34+0000");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2011-05-12 19:21:50 +0200 (Thu, 12 May 2011)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_cve_id("CVE-2011-0441", "CVE-2010-3709", "CVE-2010-3710", "CVE-2010-3870", "CVE-2010-4150");
  script_name("Debian Security Advisory DSA 2195-1 (php5)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2011 E-Soft Inc.");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(5|6)");
  script_xref(name:"URL", value:"https://secure1.securityspace.com/smysecure/catid.html?in=DSA%202195-1");
  script_tag(name:"insight", value:"Stephane Chazelas discovered that the cronjob of the PHP 5 package in
Debian suffers from a race condition which might be used to remove
arbitrary files from a system (CVE-2011-0441).

When upgrading your php5-common package take special care to _accept_
the changes to the /etc/cron.d/php5 file. Ignoring them would leave the
system vulnerable.

For the oldstable distribution (lenny), this problem has been fixed in
version 5.2.6.dfsg.1-1+lenny10.

For the stable distribution (squeeze), this problem has been fixed in
version 5.3.3-7+squeeze1.

For the unstable distribution (sid), this problem has been fixed in
version 5.3.6-1.

Additionally, the following vulnerabilities have also been fixed in the
oldstable distribution (lenny):

CVE-2010-3709

Maksymilian Arciemowicz discovered that the ZipArchive class
may dereference a NULL pointer when extracting comments from a zip
archive, leading to application crash and possible denial of
service.

CVE-2010-3710

Stefan Neufeind discovered that the FILTER_VALIDATE_EMAIL filter
does not correctly handle long, to be validated, strings. Such
crafted strings may lead to denial of service because of high memory
consumption and application crash.

CVE-2010-3870

It was discovered that PHP does not correctly handle certain UTF-8
sequences and may be used to bypass XSS protections.

CVE-2010-4150

Mateusz Kocielski discovered that the imap extension may try to
free already freed memory when processing user credentials, leading
to application crash and possibly arbitrary code execution.");

  script_tag(name:"solution", value:"We recommend that you upgrade your php5 packages.");
  script_tag(name:"summary", value:"The remote host is missing an update to php5
announced via advisory DSA 2195-1.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"libapache2-mod-php5", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libapache2-mod-php5filter", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php-pear", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-cgi", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-cli", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-common", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-curl", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-dbg", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-dev", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-gd", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-gmp", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-imap", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-interbase", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-ldap", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-mcrypt", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-mhash", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-mysql", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-odbc", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-pgsql", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-pspell", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-recode", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-snmp", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-sqlite", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-sybase", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-tidy", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-xmlrpc", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-xsl", ver:"5.2.6.dfsg.1-1+lenny10", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libapache2-mod-php5", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libapache2-mod-php5filter", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php-pear", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-cgi", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-cli", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-common", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-curl", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-dbg", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-dev", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-enchant", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-gd", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-gmp", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-imap", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-interbase", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-intl", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-ldap", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-mcrypt", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-mysql", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-odbc", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-pgsql", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-pspell", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-recode", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-snmp", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-sqlite", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-sybase", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-tidy", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-xmlrpc", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"php5-xsl", ver:"5.3.3-7+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}