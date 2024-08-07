# SPDX-FileCopyrightText: 2024 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

CPE = "cpe:/o:qnap:qts";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.126911");
  script_version("2024-06-04T05:05:28+0000");
  script_tag(name:"last_modification", value:"2024-06-04 05:05:28 +0000 (Tue, 04 Jun 2024)");
  script_tag(name:"creation_date", value:"2024-05-28 08:20:42 +0000 (Tue, 28 May 2024)");
  script_tag(name:"cvss_base", value:"6.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:P/I:P/A:P");

  script_cve_id("CVE-2024-27131");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("QNAP QTS < 5.2.0 Log Spoofing Vulnerability");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2024 Greenbone AG");
  script_family("General");
  script_dependencies("gb_qnap_nas_http_detect.nasl");
  script_mandatory_keys("qnap/nas/qts/detected");

  script_tag(name:"summary", value:"QNAP QTS is prone to a log spoofing vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"Log spoofing via x-forwarded-for allows users to cause
  downloads to be recorded as requested from arbitrary source location.

  Note: Vendor states that it's not a vulnerability, but a design choice.");

  script_tag(name:"affected", value:"QNAP QTS prior to version 5.2.0.");

  script_tag(name:"solution", value:"Update to version 5.2.0 or later.");

  script_xref(name:"URL", value:"https://www.qnap.com/en-us/news/2024/official-response-from-qnap-psirt-regarding-recent-security-reports-watchtowr-labs");
  script_xref(name:"URL", value:"https://labs.watchtowr.com/qnap-qts-qnapping-at-the-wheel-cve-2024-27130-and-friends/");

  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if (!version = get_app_version(cpe: CPE, nofork: TRUE))
  exit(0);

if (version_is_less(version: version, test_version: "5.2.0")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "5.2.0");
  security_message(port: 0, data: report);
  exit(0);
}

exit(99);
