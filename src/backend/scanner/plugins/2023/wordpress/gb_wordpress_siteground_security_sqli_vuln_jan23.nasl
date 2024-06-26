# SPDX-FileCopyrightText: 2023 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

CPE = "cpe:/a:siteground:siteground_security";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.126471");
  script_version("2023-07-19T05:05:15+0000");
  script_tag(name:"last_modification", value:"2023-07-19 05:05:15 +0000 (Wed, 19 Jul 2023)");
  script_tag(name:"creation_date", value:"2023-07-17 10:08:03 +0000 (Mon, 17 Jul 2023)");
  script_tag(name:"cvss_base", value:"9.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:C/I:C/A:C");

  script_cve_id("CVE-2023-0234");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("WordPress SiteGround Security Plugin < 1.3.1 SQLi Vulnerability");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2023 Greenbone AG");
  script_family("Web application abuses");
  script_dependencies("gb_wordpress_plugin_http_detect.nasl");
  script_mandatory_keys("wordpress/plugin/sg-security/detected");

  script_tag(name:"summary", value:"The WordPress plugin 'SiteGround Security' is prone to an
  SQL injection (SQLi) vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The plugin does not properly sanitize user input before using it
  in an SQL query, leading to an authenticated SQL injection issue.");

  script_tag(name:"affected", value:"WordPress SiteGround Security plugin prior to version 1.3.1.");

  script_tag(name:"solution", value:"Update to version 1.3.1 or later.");

  script_xref(name:"URL", value:"https://wpscan.com/vulnerability/acf3e369-1290-4b3f-83bf-2209b9dd06e1");

  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if (!port = get_app_port(cpe: CPE))
  exit(0);

if (!infos = get_app_version_and_location(cpe: CPE, port: port, exit_no_version: TRUE))
  exit(0);

version = infos["version"];
location = infos["location"];

if (version_is_less(version: version, test_version: "1.3.1")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "1.3.1", install_path: location);
  security_message(port: port, data: report);
  exit(0);
}

exit(99);
