# SPDX-FileCopyrightText: 2024 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.833042");
  script_version("2024-04-16T05:05:31+0000");
  script_cve_id("CVE-2023-2002", "CVE-2023-2235", "CVE-2023-33952", "CVE-2023-35788");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:S/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"2024-04-16 05:05:31 +0000 (Tue, 16 Apr 2024)");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2023-06-23 21:19:19 +0000 (Fri, 23 Jun 2023)");
  script_tag(name:"creation_date", value:"2024-03-04 08:03:53 +0000 (Mon, 04 Mar 2024)");
  script_name("openSUSE: Security Advisory for the Linux Kernel (Live Patch 0 for SLE 15 SP5) (SUSE-SU-2023:3116-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2024 Greenbone AG");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSELeap15\.5");

  script_xref(name:"Advisory-ID", value:"SUSE-SU-2023:3116-1");
  script_xref(name:"URL", value:"https://lists.opensuse.org/archives/list/security-announce@lists.opensuse.org/thread/2F73FVKI4GFDZJXVKV2G34VU5JMJSFZD");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'the Linux Kernel (Live Patch 0 for SLE 15 SP5)'
  package(s) announced via the SUSE-SU-2023:3116-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"This update for the Linux Kernel 5.14.21-150500_53 fixes several issues.

  The following security issues were fixed:

  * * CVE-2023-33952: Fixed a vmwgfx Driver Double Free Local Privilege
      Escalation Vulnerability (bsc#1212348).

  * CVE-2023-35788: Fixed an out-of-bounds write in the flower classifier code
      via TCA_FLOWER_KEY_ENC_OPTS_GENEVE packets in fl_set_geneve_opt in
      net/sched/cls_flower.c (bsc#1212509).

  * CVE-2023-2235: Fixed an use-after-free in the Performance Events system can
      be exploited to achieve local privilege escalation (bsc#1210987).

  * CVE-2023-2002: Fixed a flaw that allowed an attacker to unauthorized
      execution of management commands, compromising the confidentiality,
      integrity, and availability of Bluetooth communication (bsc#1210566).

  ##");

  script_tag(name:"affected", value:"'the Linux Kernel (Live Patch 0 for SLE 15 SP5)' package(s) on openSUSE Leap 15.5.");

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

if(release == "openSUSELeap15.5") {

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-5_14_21-150500_53-default-2", rpm:"kernel-livepatch-5_14_21-150500_53-default-2~150500.3.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-SLE15-SP5_Update_0-debugsource-2", rpm:"kernel-livepatch-SLE15-SP5_Update_0-debugsource-2~150500.3.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-5_14_21-150500_53-default-debuginfo-2", rpm:"kernel-livepatch-5_14_21-150500_53-default-debuginfo-2~150500.3.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-5_14_21-150500_53-default-2", rpm:"kernel-livepatch-5_14_21-150500_53-default-2~150500.3.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-SLE15-SP5_Update_0-debugsource-2", rpm:"kernel-livepatch-SLE15-SP5_Update_0-debugsource-2~150500.3.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-5_14_21-150500_53-default-debuginfo-2", rpm:"kernel-livepatch-5_14_21-150500_53-default-debuginfo-2~150500.3.1", rls:"openSUSELeap15.5"))) {
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