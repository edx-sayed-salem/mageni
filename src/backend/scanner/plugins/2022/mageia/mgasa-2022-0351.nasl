# Copyright (C) 2022 Greenbone Networks GmbH
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-or-later
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.1.10.2022.0351");
  script_cve_id("CVE-2022-41317", "CVE-2022-41318");
  script_tag(name:"creation_date", value:"2022-10-03 04:31:23 +0000 (Mon, 03 Oct 2022)");
  script_version("2022-10-03T10:13:16+0000");
  script_tag(name:"last_modification", value:"2022-10-03 10:13:16 +0000 (Mon, 03 Oct 2022)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");

  script_name("Mageia: Security Advisory (MGASA-2022-0351)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2022 Greenbone Networks GmbH");
  script_family("Mageia Linux Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/mageia_linux", "ssh/login/release", re:"ssh/login/release=MAGEIA8");

  script_xref(name:"Advisory-ID", value:"MGASA-2022-0351");
  script_xref(name:"URL", value:"https://advisories.mageia.org/MGASA-2022-0351.html");
  script_xref(name:"URL", value:"https://bugs.mageia.org/show_bug.cgi?id=30883");
  script_xref(name:"URL", value:"https://github.com/squid-cache/squid/security/advisories/GHSA-rcg9-7fqm-83mq");
  script_xref(name:"URL", value:"https://github.com/squid-cache/squid/security/advisories/GHSA-394c-rr7q-6g78");
  script_xref(name:"URL", value:"https://ubuntu.com/security/notices/USN-5641-1");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'squid' package(s) announced via the MGASA-2022-0351 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"Exposure of Sensitive Information in Cache Manager. (CVE-2022-41317)
Buffer Over Read in SSPI and SMB Authentication. (CVE-2022-41318)");

  script_tag(name:"affected", value:"'squid' package(s) on Mageia 8.");

  script_tag(name:"solution", value:"Please install the updated package(s).");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";
report = "";

if(release == "MAGEIA8") {

  if(!isnull(res = isrpmvuln(pkg:"squid", rpm:"squid~4.17~1.2.mga8", rls:"MAGEIA8"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"squid-cachemgr", rpm:"squid-cachemgr~4.17~1.2.mga8", rls:"MAGEIA8"))) {
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

exit(0);
