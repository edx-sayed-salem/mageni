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
  script_oid("1.3.6.1.4.1.25623.1.1.12.2017.3441.2");
  script_cve_id("CVE-2016-9586", "CVE-2017-1000100", "CVE-2017-1000101", "CVE-2017-1000254", "CVE-2017-1000257", "CVE-2017-7407");
  script_tag(name:"creation_date", value:"2022-08-26 07:43:23 +0000 (Fri, 26 Aug 2022)");
  script_version("2022-08-26T07:43:23+0000");
  script_tag(name:"last_modification", value:"2022-08-26 07:43:23 +0000 (Fri, 26 Aug 2022)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_tag(name:"severity_vector", value:"CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2021-06-29 15:15:00 +0000 (Tue, 29 Jun 2021)");

  script_name("Ubuntu: Security Advisory (USN-3441-2)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2022 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU12\.04\ LTS");

  script_xref(name:"Advisory-ID", value:"USN-3441-2");
  script_xref(name:"URL", value:"https://ubuntu.com/security/notices/USN-3441-2");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'curl' package(s) announced via the USN-3441-2 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"USN-3441-1 fixed several vulnerabilities in curl. This update
provides the corresponding update for Ubuntu 12.04 ESM.

Original advisory details:

 Daniel Stenberg discovered that curl incorrectly handled large floating
 point output. A remote attacker could use this issue to cause curl to
 crash, resulting in a denial of service, or possibly execute arbitrary
 code. (CVE-2016-9586)

 Even Rouault discovered that curl incorrectly handled large file names when
 doing TFTP transfers. A remote attacker could use this issue to cause curl
 to crash, resulting in a denial of service, or possibly obtain sensitive
 memory contents. (CVE-2017-1000100)

 Brian Carpenter and Yongji Ouyang discovered that curl incorrectly handled
 numerical range globbing. A remote attacker could use this issue to cause
 curl to crash, resulting in a denial of service, or possibly obtain
 sensitive memory contents. (CVE-2017-1000101)

 Max Dymond discovered that curl incorrectly handled FTP PWD responses. A
 remote attacker could use this issue to cause curl to crash, resulting in a
 denial of service. (CVE-2017-1000254)

 Brian Carpenter discovered that curl incorrectly handled IMAP FETCH
 response lines. A remote attacker could use this issue to cause curl to
 crash, resulting in a denial of service, or possibly execute arbitrary
 code.(CVE-2017-1000257)

 Brian Carpenter discovered that curl incorrectly handled the --write-out
 command line option. A local attacker could possibly use this issue to
 obtain sensitive memory contents. (CVE-2017-7407)");

  script_tag(name:"affected", value:"'curl' package(s) on Ubuntu 12.04.");

  script_tag(name:"solution", value:"Please install the updated package(s).");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

release = dpkg_get_ssh_release();
if(!release)
  exit(0);

res = "";
report = "";

if(release == "UBUNTU12.04 LTS") {

  if(!isnull(res = isdpkgvuln(pkg:"curl", ver:"7.22.0-3ubuntu4.18", rls:"UBUNTU12.04 LTS"))) {
    report += res;
  }

  if(!isnull(res = isdpkgvuln(pkg:"libcurl3-gnutls", ver:"7.22.0-3ubuntu4.18", rls:"UBUNTU12.04 LTS"))) {
    report += res;
  }

  if(!isnull(res = isdpkgvuln(pkg:"libcurl3-nss", ver:"7.22.0-3ubuntu4.18", rls:"UBUNTU12.04 LTS"))) {
    report += res;
  }

  if(!isnull(res = isdpkgvuln(pkg:"libcurl3", ver:"7.22.0-3ubuntu4.18", rls:"UBUNTU12.04 LTS"))) {
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
