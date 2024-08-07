# SPDX-FileCopyrightText: 2024 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.856167");
  script_version("2024-06-07T15:38:39+0000");
  script_cve_id("CVE-2023-46009");
  script_tag(name:"cvss_base", value:"7.2");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"2024-06-07 15:38:39 +0000 (Fri, 07 Jun 2024)");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2023-10-25 01:25:01 +0000 (Wed, 25 Oct 2023)");
  script_tag(name:"creation_date", value:"2024-05-30 01:00:21 +0000 (Thu, 30 May 2024)");
  script_name("openSUSE: Security Advisory for gifsicle (openSUSE-SU-2024:0146-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2024 Greenbone AG");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSEBackportsSLE-15-SP5");

  script_xref(name:"Advisory-ID", value:"openSUSE-SU-2024:0146-1");
  script_xref(name:"URL", value:"https://lists.opensuse.org/archives/list/security-announce@lists.opensuse.org/thread/XPBVCIDM6CP4OMGHYXCEAOVLORKQFQP4");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'gifsicle'
  package(s) announced via the openSUSE-SU-2024:0146-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"This update for gifsicle fixes the following issues:

     Update to version 1.95:

  - CVE-2023-46009: Fixed floating point exception vulnerability via
       resize_stream at src/xform.c (boo#1216403)");

  script_tag(name:"affected", value:"'gifsicle' package(s) on openSUSE Backports SLE-15-SP5.");

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

if(release == "openSUSEBackportsSLE-15-SP5") {

  if(!isnull(res = isrpmvuln(pkg:"gifsicle", rpm:"gifsicle~1.95~bp155.3.6.1", rls:"openSUSEBackportsSLE-15-SP5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"gifsicle", rpm:"gifsicle~1.95~bp155.3.6.1", rls:"openSUSEBackportsSLE-15-SP5"))) {
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