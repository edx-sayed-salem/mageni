# SPDX-FileCopyrightText: 2024 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.1.12.2024.6769.1");
  script_cve_id("CVE-2024-22368", "CVE-2024-23525");
  script_tag(name:"creation_date", value:"2024-05-10 04:07:33 +0000 (Fri, 10 May 2024)");
  script_version("2024-05-10T05:05:26+0000");
  script_tag(name:"last_modification", value:"2024-05-10 05:05:26 +0000 (Fri, 10 May 2024)");
  script_tag(name:"cvss_base", value:"7.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:N/A:N");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:N/A:N");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2024-01-25 01:42:24 +0000 (Thu, 25 Jan 2024)");

  script_name("Ubuntu: Security Advisory (USN-6769-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2024 Greenbone AG");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU(20\.04\ LTS|22\.04\ LTS|23\.10)");

  script_xref(name:"Advisory-ID", value:"USN-6769-1");
  script_xref(name:"URL", value:"https://ubuntu.com/security/notices/USN-6769-1");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'libspreadsheet-parsexlsx-perl' package(s) announced via the USN-6769-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"Le Dinh Hai discovered that Spreadsheet::ParseXLSX did not properly manage
memory during cell merge operations. An attacker could possibly use this
issue to consume large amounts of memory, resulting in a denial of service
condition. (CVE-2024-22368)

An Pham discovered that Spreadsheet::ParseXLSX allowed the processing of
external entities in a default configuration. An attacker could possibly
use this vulnerability to execute an XML External Entity (XXE) injection
attack. (CVE-2024-23525)");

  script_tag(name:"affected", value:"'libspreadsheet-parsexlsx-perl' package(s) on Ubuntu 20.04, Ubuntu 22.04, Ubuntu 23.10.");

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

if(release == "UBUNTU20.04 LTS") {

  if(!isnull(res = isdpkgvuln(pkg:"libspreadsheet-parsexlsx-perl", ver:"0.27-2+deb10u1build0.20.04.1", rls:"UBUNTU20.04 LTS"))) {
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

if(release == "UBUNTU22.04 LTS") {

  if(!isnull(res = isdpkgvuln(pkg:"libspreadsheet-parsexlsx-perl", ver:"0.27-2.1+deb11u2build0.22.04.1", rls:"UBUNTU22.04 LTS"))) {
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

if(release == "UBUNTU23.10") {

  if(!isnull(res = isdpkgvuln(pkg:"libspreadsheet-parsexlsx-perl", ver:"0.27-3+deb12u2build0.23.10.1", rls:"UBUNTU23.10"))) {
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
