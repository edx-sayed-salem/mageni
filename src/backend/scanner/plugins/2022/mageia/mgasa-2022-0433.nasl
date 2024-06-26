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
  script_oid("1.3.6.1.4.1.25623.1.1.10.2022.0433");
  script_cve_id("CVE-2022-39377");
  script_tag(name:"creation_date", value:"2022-11-21 04:17:51 +0000 (Mon, 21 Nov 2022)");
  script_version("2022-11-21T04:17:51+0000");
  script_tag(name:"last_modification", value:"2022-11-21 04:17:51 +0000 (Mon, 21 Nov 2022)");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2022-11-15 17:05:00 +0000 (Tue, 15 Nov 2022)");

  script_name("Mageia: Security Advisory (MGASA-2022-0433)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2022 Greenbone Networks GmbH");
  script_family("Mageia Linux Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/mageia_linux", "ssh/login/release", re:"ssh/login/release=MAGEIA8");

  script_xref(name:"Advisory-ID", value:"MGASA-2022-0433");
  script_xref(name:"URL", value:"https://advisories.mageia.org/MGASA-2022-0433.html");
  script_xref(name:"URL", value:"https://bugs.mageia.org/show_bug.cgi?id=31120");
  script_xref(name:"URL", value:"https://www.debian.org/lts/security/2022/dla-3188");
  script_xref(name:"URL", value:"http://sebastien.godard.pagesperso-orange.fr/");
  script_xref(name:"URL", value:"https://github.com/sysstat/sysstat/security/advisories/GHSA-q8r6-g56f-9w7x");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'sysstat' package(s) announced via the MGASA-2022-0433 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"On 32 bit systems, in versions 9.1.16 and newer but prior to 12.7.1,
allocate_structures contains a size_t overflow in sa_common.c. The
allocate_structures function insufficiently checks bounds before
arithmetic multiplication, allowing for an overflow in the size allocated
for the buffer representing system activities. This issue may lead to
Remote Code Execution (RCE). (CVE-2022-39377)");

  script_tag(name:"affected", value:"'sysstat' package(s) on Mageia 8.");

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

  if(!isnull(res = isrpmvuln(pkg:"sysstat", rpm:"sysstat~12.5.2~1.1.mga8", rls:"MAGEIA8"))) {
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
