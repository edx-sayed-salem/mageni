# SPDX-FileCopyrightText: 2024 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.833250");
  script_version("2024-04-16T05:05:31+0000");
  script_cve_id("CVE-2023-30577");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:S/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"2024-04-16 05:05:31 +0000 (Tue, 16 Apr 2024)");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2023-08-04 15:21:45 +0000 (Fri, 04 Aug 2023)");
  script_tag(name:"creation_date", value:"2024-03-04 07:56:56 +0000 (Mon, 04 Mar 2024)");
  script_name("openSUSE: Security Advisory for amanda (openSUSE-SU-2023:0206-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2024 Greenbone AG");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSEBackportsSLE-15-SP4");

  script_xref(name:"Advisory-ID", value:"openSUSE-SU-2023:0206-1");
  script_xref(name:"URL", value:"https://lists.opensuse.org/archives/list/security-announce@lists.opensuse.org/thread/PEW47N5YPIYO2U6EUXZHYOLH5D22SBZA");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'amanda'
  package(s) announced via the openSUSE-SU-2023:0206-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"This update for amanda fixes the following issues:

  - CVE-2023-30577: Fixed improper argument checking for runtar.c
       [boo#1213701].");

  script_tag(name:"affected", value:"'amanda' package(s) on openSUSE Backports SLE-15-SP4.");

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

if(release == "openSUSEBackportsSLE-15-SP4") {

  if(!isnull(res = isrpmvuln(pkg:"amanda", rpm:"amanda~3.5.1~bp154.3.6.1", rls:"openSUSEBackportsSLE-15-SP4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"amanda", rpm:"amanda~3.5.1~bp154.3.6.1", rls:"openSUSEBackportsSLE-15-SP4"))) {
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