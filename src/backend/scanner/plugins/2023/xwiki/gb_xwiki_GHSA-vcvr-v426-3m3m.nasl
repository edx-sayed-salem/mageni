# SPDX-FileCopyrightText: 2023 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

CPE = "cpe:/a:xwiki:xwiki";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.124465");
  script_version("2023-11-30T05:06:26+0000");
  script_tag(name:"last_modification", value:"2023-11-30 05:06:26 +0000 (Thu, 30 Nov 2023)");
  script_tag(name:"creation_date", value:"2023-11-16 12:10:52 +0000 (Thu, 16 Nov 2023)");
  script_tag(name:"cvss_base", value:"9.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:C/I:C/A:C");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2023-11-03 20:22:00 +0000 (Fri, 03 Nov 2023)");

  script_cve_id("CVE-2023-37913");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("XWiki 3.5-milestone-1 < 14.10.8, 15.0-rc-1 < 15.3-rc-1 XSS Vulnerability (GHSA-vcvr-v426-3m3m)");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2023 Greenbone AG");
  script_family("Web application abuses");
  script_dependencies("gb_xwiki_enterprise_detect.nasl");
  script_mandatory_keys("xwiki/detected");

  script_tag(name:"summary", value:"Xwiki is prone to a cross-site scripting (XSS)
  vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"Triggering the office converter with a specially crafted file
  name allows writing the attachment's content to an attacker-controlled location on the server as
  long as the Java process has write access to that location.");

  script_tag(name:"affected", value:"XWiki version 3.5-milestone-1 prior to 14.10.8 and 15.0-rc-1
  prior to 15.3-rc-1.");

  script_tag(name:"solution", value:"Update to version 14.10.8, 15.3-rc-1 or later.");

  script_xref(name:"URL", value:"https://github.com/advisories/GHSA-vcvr-v426-3m3m");

  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if( ! port = get_app_port( cpe:CPE ) )
  exit( 0 );

if ( ! infos = get_app_version_and_location( cpe:CPE, port:port, exit_no_version:TRUE ) )
  exit( 0 );

version = infos["version"];
location = infos["location"];

if( version_in_range_exclusive( version:version, test_version_lo:"3.5-milestone-1", test_version_up:"14.10.8" ) ) {
  report = report_fixed_ver( installed_version:version, fixed_version:"14.10.8", install_path:location );
  security_message( port:port, data:report );
  exit( 0 );
}

if( version_in_range_exclusive( version:version, test_version_lo:"15.0-rc-1", test_version_up:"15.3-rc-1" ) ) {
  report = report_fixed_ver( installed_version:version, fixed_version:"15.3-rc-1", install_path:location );
  security_message( port:port, data:report );
  exit( 0 );
}

exit( 99 );
