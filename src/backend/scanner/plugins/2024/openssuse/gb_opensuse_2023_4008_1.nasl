# SPDX-FileCopyrightText: 2024 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.833151");
  script_version("2024-04-26T15:38:47+0000");
  script_cve_id("CVE-2023-5341");
  script_tag(name:"cvss_base", value:"4.6");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:S/C:N/I:N/A:C");
  script_tag(name:"last_modification", value:"2024-04-26 15:38:47 +0000 (Fri, 26 Apr 2024)");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2023-12-01 18:01:53 +0000 (Fri, 01 Dec 2023)");
  script_tag(name:"creation_date", value:"2024-03-04 07:33:43 +0000 (Mon, 04 Mar 2024)");
  script_name("openSUSE: Security Advisory for ImageMagick (SUSE-SU-2023:4008-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2024 Greenbone AG");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSELeap15\.4");

  script_xref(name:"Advisory-ID", value:"SUSE-SU-2023:4008-1");
  script_xref(name:"URL", value:"https://lists.opensuse.org/archives/list/security-announce@lists.opensuse.org/thread/IONPYWL3YWGBZ2OHWFJDVH7JOKZFYAQC");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'ImageMagick'
  package(s) announced via the SUSE-SU-2023:4008-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"This update for ImageMagick fixes the following issues:

  * CVE-2023-5341: Fixed a heap use-after-free in coders/bmp.c. (bsc#1215939)

  ##");

  script_tag(name:"affected", value:"'ImageMagick' package(s) on openSUSE Leap 15.4.");

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

  if(!isnull(res = isrpmvuln(pkg:"libMagickWand-7_Q16HDRI6-32bit-debuginfo", rpm:"libMagickWand-7_Q16HDRI6-32bit-debuginfo~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickCore-7_Q16HDRI6-32bit", rpm:"libMagickCore-7_Q16HDRI6-32bit~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagick++-7_Q16HDRI4-32bit-debuginfo", rpm:"libMagick++-7_Q16HDRI4-32bit-debuginfo~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickCore-7_Q16HDRI6-32bit-debuginfo", rpm:"libMagickCore-7_Q16HDRI6-32bit-debuginfo~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagick++-7_Q16HDRI4-32bit", rpm:"libMagick++-7_Q16HDRI4-32bit~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickWand-7_Q16HDRI6-32bit", rpm:"libMagickWand-7_Q16HDRI6-32bit~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickCore-7_Q16HDRI6", rpm:"libMagickCore-7_Q16HDRI6~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickWand-7_Q16HDRI6-debuginfo", rpm:"libMagickWand-7_Q16HDRI6-debuginfo~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickCore-7_Q16HDRI6-debuginfo", rpm:"libMagickCore-7_Q16HDRI6-debuginfo~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagick++-7_Q16HDRI4", rpm:"libMagick++-7_Q16HDRI4~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagick++-7_Q16HDRI4-debuginfo", rpm:"libMagick++-7_Q16HDRI4-debuginfo~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickWand-7_Q16HDRI6", rpm:"libMagickWand-7_Q16HDRI6~7.0.7.34~150200.10.57.1##", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickWand-7_Q16HDRI6-32bit-debuginfo", rpm:"libMagickWand-7_Q16HDRI6-32bit-debuginfo~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickCore-7_Q16HDRI6-32bit", rpm:"libMagickCore-7_Q16HDRI6-32bit~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagick++-7_Q16HDRI4-32bit-debuginfo", rpm:"libMagick++-7_Q16HDRI4-32bit-debuginfo~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickCore-7_Q16HDRI6-32bit-debuginfo", rpm:"libMagickCore-7_Q16HDRI6-32bit-debuginfo~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagick++-7_Q16HDRI4-32bit", rpm:"libMagick++-7_Q16HDRI4-32bit~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickWand-7_Q16HDRI6-32bit", rpm:"libMagickWand-7_Q16HDRI6-32bit~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickCore-7_Q16HDRI6", rpm:"libMagickCore-7_Q16HDRI6~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickWand-7_Q16HDRI6-debuginfo", rpm:"libMagickWand-7_Q16HDRI6-debuginfo~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickCore-7_Q16HDRI6-debuginfo", rpm:"libMagickCore-7_Q16HDRI6-debuginfo~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagick++-7_Q16HDRI4", rpm:"libMagick++-7_Q16HDRI4~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagick++-7_Q16HDRI4-debuginfo", rpm:"libMagick++-7_Q16HDRI4-debuginfo~7.0.7.34~150200.10.57.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libMagickWand-7_Q16HDRI6", rpm:"libMagickWand-7_Q16HDRI6~7.0.7.34~150200.10.57.1##", rls:"openSUSELeap15.4"))) {
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