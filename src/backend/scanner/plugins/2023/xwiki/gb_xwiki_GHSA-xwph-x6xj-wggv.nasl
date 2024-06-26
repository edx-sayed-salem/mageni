# SPDX-FileCopyrightText: 2023 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

CPE = "cpe:/a:xwiki:xwiki";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.124358");
  script_version("2023-07-19T05:05:15+0000");
  script_tag(name:"last_modification", value:"2023-07-19 05:05:15 +0000 (Wed, 19 Jul 2023)");
  script_tag(name:"creation_date", value:"2023-07-13 09:03:39 +0000 (Thu, 13 Jul 2023)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");

  script_cve_id("CVE-2023-29204");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("XWiki 6.0-rc-1 < 13.10.10, 14.0-rc-1 < 14.4.4, 14.5 < 14.8-rc-1 Open Redirect Vulnerability (GHSA-xwph-x6xj-wggv)");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2023 Greenbone AG");
  script_family("Web application abuses");
  script_dependencies("gb_xwiki_enterprise_detect.nasl");
  script_mandatory_keys("xwiki/detected");

  script_tag(name:"summary", value:"Xwiki is prone to an open redirect vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"It is possible to bypass the existing security measures put in
  place to avoid open redirect by using a redirect such as //mydomain.com
  (i.e. omitting the http:).");

  script_tag(name:"affected", value:"XWiki version 6.0-rc-1 prior to 13.10.10, 14.0-rc-1 prior to
  14.4.4, 14.5 prior to 14.8-rc-1.");

  script_tag(name:"solution", value:"Update to version 13.10.10, 14.4.4, 14.8-rc-1 or later.");

  script_xref(name:"URL", value:"https://github.com/advisories/GHSA-xwph-x6xj-wggv");

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

if( version_in_range_exclusive( version:version, test_version_lo:"6.0-rc-1", test_version_up:"13.10.10" ) ) {
  report = report_fixed_ver( installed_version:version, fixed_version:"13.10.10", install_path:location );
  security_message( port:port, data:report );
  exit( 0 );
}

if( version_in_range_exclusive( version:version, test_version_lo:"14.0-rc-1", test_version_up:"14.4.4" ) ) {
  report = report_fixed_ver( installed_version:version, fixed_version:"14.4.4", install_path:location );
  security_message( port:port, data:report );
  exit( 0 );
}

if( version_in_range_exclusive( version:version, test_version_lo:"14.5", test_version_up:"14.8-rc-1" ) ) {
  report = report_fixed_ver( installed_version:version, fixed_version:"14.8-rc-1", install_path:location );
  security_message( port:port, data:report );
  exit( 0 );
}

exit( 99 );
