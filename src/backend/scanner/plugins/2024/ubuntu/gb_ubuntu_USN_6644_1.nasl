# SPDX-FileCopyrightText: 2024 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.1.12.2024.6644.1");
  script_cve_id("CVE-2023-52356", "CVE-2023-6228", "CVE-2023-6277");
  script_tag(name:"creation_date", value:"2024-02-20 04:09:33 +0000 (Tue, 20 Feb 2024)");
  script_version("2024-02-20T05:05:48+0000");
  script_tag(name:"last_modification", value:"2024-02-20 05:05:48 +0000 (Tue, 20 Feb 2024)");
  script_tag(name:"cvss_base", value:"7.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:C");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2024-01-31 17:41:06 +0000 (Wed, 31 Jan 2024)");

  script_name("Ubuntu: Security Advisory (USN-6644-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2024 Greenbone AG");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU(14\.04\ LTS|16\.04\ LTS|18\.04\ LTS|20\.04\ LTS|23\.10)");

  script_xref(name:"Advisory-ID", value:"USN-6644-1");
  script_xref(name:"URL", value:"https://ubuntu.com/security/notices/USN-6644-1");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'tiff' package(s) announced via the USN-6644-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"It was discovered that LibTIFF incorrectly handled certain files. If
a user were tricked into opening a specially crafted file, an attacker
could possibly use this issue to cause the application to crash, resulting
in a denial of service. (CVE-2023-52356)

It was discovered that LibTIFF incorrectly handled certain image files
with the tiffcp utility. If a user were tricked into opening a specially
crafted image file, an attacker could possibly use this issue to cause
tiffcp to crash, resulting in a denial of service. (CVE-2023-6228)

It was discovered that LibTIFF incorrectly handled certain files. If
a user were tricked into opening a specially crafted file, an attacker
could possibly use this issue to cause the application to consume
resources, resulting in a denial of service. (CVE-2023-6277)");

  script_tag(name:"affected", value:"'tiff' package(s) on Ubuntu 14.04, Ubuntu 16.04, Ubuntu 18.04, Ubuntu 20.04, Ubuntu 23.10.");

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

if(release == "UBUNTU14.04 LTS") {

  if(!isnull(res = isdpkgvuln(pkg:"libtiff-tools", ver:"4.0.3-7ubuntu0.11+esm12", rls:"UBUNTU14.04 LTS"))) {
    report += res;
  }

  if(!isnull(res = isdpkgvuln(pkg:"libtiff5", ver:"4.0.3-7ubuntu0.11+esm12", rls:"UBUNTU14.04 LTS"))) {
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

if(release == "UBUNTU16.04 LTS") {

  if(!isnull(res = isdpkgvuln(pkg:"libtiff-tools", ver:"4.0.6-1ubuntu0.8+esm15", rls:"UBUNTU16.04 LTS"))) {
    report += res;
  }

  if(!isnull(res = isdpkgvuln(pkg:"libtiff5", ver:"4.0.6-1ubuntu0.8+esm15", rls:"UBUNTU16.04 LTS"))) {
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

if(release == "UBUNTU18.04 LTS") {

  if(!isnull(res = isdpkgvuln(pkg:"libtiff-tools", ver:"4.0.9-5ubuntu0.10+esm5", rls:"UBUNTU18.04 LTS"))) {
    report += res;
  }

  if(!isnull(res = isdpkgvuln(pkg:"libtiff5", ver:"4.0.9-5ubuntu0.10+esm5", rls:"UBUNTU18.04 LTS"))) {
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

if(release == "UBUNTU20.04 LTS") {

  if(!isnull(res = isdpkgvuln(pkg:"libtiff-tools", ver:"4.1.0+git191117-2ubuntu0.20.04.12", rls:"UBUNTU20.04 LTS"))) {
    report += res;
  }

  if(!isnull(res = isdpkgvuln(pkg:"libtiff5", ver:"4.1.0+git191117-2ubuntu0.20.04.12", rls:"UBUNTU20.04 LTS"))) {
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

  if(!isnull(res = isdpkgvuln(pkg:"libtiff-tools", ver:"4.5.1+git230720-1ubuntu1.1", rls:"UBUNTU23.10"))) {
    report += res;
  }

  if(!isnull(res = isdpkgvuln(pkg:"libtiff6", ver:"4.5.1+git230720-1ubuntu1.1", rls:"UBUNTU23.10"))) {
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
