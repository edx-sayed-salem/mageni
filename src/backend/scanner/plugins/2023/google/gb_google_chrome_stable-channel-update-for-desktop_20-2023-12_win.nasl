# SPDX-FileCopyrightText: 2023 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

CPE = "cpe:/a:google:chrome";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.832755");
  script_version("2024-01-22T05:07:31+0000");
  script_xref(name:"CISA", value:"Known Exploited Vulnerability (KEV) catalog");
  script_xref(name:"URL", value:"https://www.cisa.gov/known-exploited-vulnerabilities-catalog");
  script_cve_id("CVE-2023-7024");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"2024-01-22 05:07:31 +0000 (Mon, 22 Jan 2024)");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2023-12-27 20:48:00 +0000 (Wed, 27 Dec 2023)");
  script_tag(name:"creation_date", value:"2023-12-21 16:01:23 +0530 (Thu, 21 Dec 2023)");
  script_name("Google Chrome Security Update (stable-channel-update-for-desktop_20-2023-12) - Windows");

  script_tag(name:"summary", value:"Google Chrome is prone to a heap buffer
  overflow vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present
  on the target host.");

  script_tag(name:"insight", value:"The flaw exists due to a heap buffer
  overflow vulnerability in WebRTC.");

  script_tag(name:"impact", value:"Successful exploitation will allow
  attackers to conduct heap buffer overflow attack and execute arbitrary code
  on an affected system.");

  script_tag(name:"affected", value:"Google Chrome versions prior to
  120.0.6099.129 on Windows");

  script_tag(name:"solution", value:"Upgrade to version 120.0.6099.129/130
  or later. Please see the references for more information.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"registry");
  script_xref(name:"URL", value:"https://chromereleases.googleblog.com/2023/12/stable-channel-update-for-desktop_20.html");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2023 Greenbone AG");
  script_family("General");
  script_dependencies("gb_google_chrome_detect_win.nasl");
  script_mandatory_keys("GoogleChrome/Win/Ver");
  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if(!infos = get_app_version_and_location(cpe:CPE, exit_no_version:TRUE))
  exit(0);

vers = infos["version"];
path = infos["location"];

if(version_is_less(version:vers, test_version:"120.0.6099.129")) {
  report = report_fixed_ver(installed_version:vers, fixed_version:"120.0.6099.129/130", install_path:path);
  security_message(port:0, data:report);
  exit(0);
}

exit(99);
