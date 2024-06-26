# SPDX-FileCopyrightText: 2023 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

CPE = "cpe:/a:advancedfilemanager:advanced_file_manager";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.126480");
  script_version("2023-09-13T05:05:22+0000");
  script_tag(name:"last_modification", value:"2023-09-13 05:05:22 +0000 (Wed, 13 Sep 2023)");
  script_tag(name:"creation_date", value:"2023-09-07 08:17:15 +0000 (Thu, 07 Sep 2023)");
  script_tag(name:"cvss_base", value:"5.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:P/I:P/A:N");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_cve_id("CVE-2023-3814");

  script_name("WordPress Advanced File Manager Plugin < 5.1.1 Broken Access Vulnerability");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2023 Greenbone AG");
  script_family("Web application abuses");
  script_dependencies("gb_wordpress_plugin_http_detect.nasl");
  script_mandatory_keys("wordpress/plugin/file-manager-advanced/detected");

  script_tag(name:"summary", value:"The WordPress plugin 'Advanced File Manager' is prone to a
  broken access vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The plugin does not adequately authorize its usage on multisite
  installations, allowing site admin users to list and read arbitrary files and folders on the
  server.");

  script_tag(name:"affected", value:"WordPress Advanced File Manager plugin prior to 5.1.1.");

  script_tag(name:"solution", value:"Update to version 5.1.1 or later.");

  script_xref(name:"URL", value:"https://wpscan.com/vulnerability/ca954ec6-6ebd-4d72-a323-570474e2e339");

  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if( ! port = get_app_port( cpe: CPE ) )
  exit( 0 );

if( ! infos = get_app_version_and_location( cpe: CPE, port: port, exit_no_version: TRUE ) )
  exit( 0 );

version = infos["version"];
location = infos["location"];

if( version_is_less( version: version, test_version: "5.1.1" ) ) {
  report = report_fixed_ver( installed_version: version, fixed_version: "5.1.1", install_path: location );
  security_message( port: port, data: report );
  exit( 0 );
}

exit( 99 );
