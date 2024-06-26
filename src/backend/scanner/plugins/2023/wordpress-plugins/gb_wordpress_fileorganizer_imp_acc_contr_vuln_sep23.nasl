# SPDX-FileCopyrightText: 2023 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

CPE = "cpe:/a:fileorganizer:fileorganizer";

if (description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.127564");
  script_version("2023-10-13T16:09:03+0000");
  script_tag(name:"last_modification", value:"2023-10-13 16:09:03 +0000 (Fri, 13 Oct 2023)");
  script_tag(name:"creation_date", value:"2023-09-26 12:00:45 +0000 (Tue, 26 Sep 2023)");
  script_tag(name:"cvss_base", value:"8.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:M/C:C/I:C/A:C");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2023-09-26 16:39:00 +0000 (Tue, 26 Sep 2023)");

  script_cve_id("CVE-2023-3664");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("WordPress FileOrganizer Plugin < 1.0.3 Improper Access Control Vulnerability");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2023 Greenbone AG");
  script_family("Web application abuses");
  script_dependencies("gb_wordpress_plugin_http_detect.nasl");
  script_mandatory_keys("wordpress/plugin/fileorganizer/detected");

  script_tag(name:"summary", value:"The WordPress plugin 'FileOrganizer' is prone to an
  improper access control vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The plugin does not restrict functionality on multisite
  instances, allowing site admins to gain full control over the server.");

  script_tag(name:"affected", value:"WordPress FileOrganizer prior to version 1.0.3.");

  script_tag(name:"solution", value:"Update to version 1.0.3 or later.");

  script_xref(name:"URL", value:"https://wpscan.com/vulnerability/d59e6eac-3ebf-40e0-800c-8cbef345423f");

  exit(0);
}

include("version_func.inc");
include("host_details.inc");

if( ! port = get_app_port( cpe: CPE ) )
  exit( 0 );

if( ! infos = get_app_version_and_location( cpe: CPE, port: port, exit_no_version: TRUE ) )
  exit( 0 );

version = infos["version"];
location = infos["location"];

if( version_is_less( version: version, test_version: "1.0.3" ) ) {
  report = report_fixed_ver( installed_version: version, fixed_version: "1.0.3", install_path: location );
  security_message( port: port, data: report );
  exit( 0 );
}

exit( 99 );
