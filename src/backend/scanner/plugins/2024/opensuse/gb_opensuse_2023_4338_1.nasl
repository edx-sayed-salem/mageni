# SPDX-FileCopyrightText: 2024 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.833818");
  script_version("2024-05-16T05:05:35+0000");
  script_cve_id("CVE-2023-5367", "CVE-2023-5380", "CVE-2023-5574");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:S/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"2024-05-16 05:05:35 +0000 (Thu, 16 May 2024)");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2023-11-02 17:21:49 +0000 (Thu, 02 Nov 2023)");
  script_tag(name:"creation_date", value:"2024-03-04 07:46:23 +0000 (Mon, 04 Mar 2024)");
  script_name("openSUSE: Security Advisory for xorg (SUSE-SU-2023:4338-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2024 Greenbone AG");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSELeap15\.4");

  script_xref(name:"Advisory-ID", value:"SUSE-SU-2023:4338-1");
  script_xref(name:"URL", value:"https://lists.opensuse.org/archives/list/security-announce@lists.opensuse.org/thread/WHI5ZDPWSUUKQ4NYRUMH4QBRHD5HXNKS");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'xorg'
  package(s) announced via the SUSE-SU-2023:4338-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"This update for xorg-x11-server fixes the following issues:

  * CVE-2023-5574: Fixed a privilege escalation issue that could be triggered
      via the Damage extension protocol (bsc#1216261).

  * CVE-2023-5380: Fixed a memory safety issue that could be triggered when
      using multiple protocol screens (bsc#1216133).

  * CVE-2023-5367: Fixed a memory safety issue in both the XI2 and RandR
      protocols (bsc#1216135).

  ##");

  script_tag(name:"affected", value:"'xorg' package(s) on openSUSE Leap 15.4.");

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

if(release == "openSUSELeap15.4") {

  if(!isnull(res = isrpmvuln(pkg:"xorg-x11-server-wayland-debuginfo", rpm:"xorg-x11-server-wayland-debuginfo~1.20.3~150200.22.5.79.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xorg-x11-server-wayland", rpm:"xorg-x11-server-wayland~1.20.3~150200.22.5.79.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xorg-x11-server-wayland-debuginfo", rpm:"xorg-x11-server-wayland-debuginfo~1.20.3~150200.22.5.79.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xorg-x11-server-wayland", rpm:"xorg-x11-server-wayland~1.20.3~150200.22.5.79.1", rls:"openSUSELeap15.4"))) {
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
