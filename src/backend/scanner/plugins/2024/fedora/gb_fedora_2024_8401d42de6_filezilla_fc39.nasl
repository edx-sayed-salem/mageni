# SPDX-FileCopyrightText: 2024 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.886684");
  script_version("2024-06-07T05:05:42+0000");
  script_cve_id("CVE-2024-31497");
  script_tag(name:"cvss_base", value:"5.4");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:H/Au:N/C:C/I:N/A:N");
  script_tag(name:"last_modification", value:"2024-06-07 05:05:42 +0000 (Fri, 07 Jun 2024)");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2024-05-10 14:33:55 +0000 (Fri, 10 May 2024)");
  script_tag(name:"creation_date", value:"2024-05-27 10:44:56 +0000 (Mon, 27 May 2024)");
  script_name("Fedora: Security Advisory for filezilla (FEDORA-2024-8401d42de6)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2024 Greenbone AG");
  script_family("Fedora Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/fedora", "ssh/login/rpms", re:"ssh/login/release=FC39");

  script_xref(name:"Advisory-ID", value:"FEDORA-2024-8401d42de6");
  script_xref(name:"URL", value:"https://lists.fedoraproject.org/archives/list/package-announce%40lists.fedoraproject.org/message/3DDPOEVSQUL3VMIPIR43VKAJJGCLKS7C");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'filezilla'
  package(s) announced via the FEDORA-2024-8401d42de6 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"FileZilla is a FTP, FTPS and SFTP client for Linux with a lot of features.

  - Supports FTP, FTP over SSL/TLS (FTPS) and SSH File Transfer Protocol (SFTP)

  - Cross-platform

  - Available in many languages

  - Supports resume and transfer of large files greater than 4GB

  - Easy to use Site Manager and transfer queue

  - Drag & drop support

  - Speed limits

  - Filename filters

  - Network configuration wizard");

  script_tag(name:"affected", value:"'filezilla' package(s) on Fedora 39.");

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

if(release == "FC39") {

  if(!isnull(res = isrpmvuln(pkg:"filezilla", rpm:"filezilla~3.67.0~1.fc39", rls:"FC39"))) {
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