# SPDX-FileCopyrightText: 2023 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

CPE = "cpe:/a:ninjaforms:contact_form";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.127536");
  script_version("2023-10-13T16:09:03+0000");
  script_tag(name:"last_modification", value:"2023-10-13 16:09:03 +0000 (Fri, 13 Oct 2023)");
  script_tag(name:"creation_date", value:"2023-08-31 08:00:11 +0000 (Thu, 31 Aug 2023)");
  script_tag(name:"cvss_base", value:"4.7");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:M/C:P/I:P/A:N");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:H/UI:R/S:C/C:L/I:L/A:N");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2023-09-01 13:17:00 +0000 (Fri, 01 Sep 2023)");

  script_cve_id("CVE-2023-4109");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("WordPress Ninja Forms Contact Form Plugin < 3.6.26 HTML Injection Vulnerability");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2023 Greenbone AG");
  script_family("Web application abuses");
  script_dependencies("gb_wordpress_plugin_http_detect.nasl");
  script_mandatory_keys("wordpress/plugin/ninja-forms/detected");

  script_tag(name:"summary", value:"The WordPress plugin 'Ninja Forms Contact Form' is prone to a
  HTML injection vulnerability");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The plugin does not sanitize and escape its label fields, which
  could allow high privilege users such as admin to perform Stored HTML injection. Only users with
  the unfiltered_html capability can perform this, and such users are already allowed to use JS in
  posts/comments etc however the vendor acknowledged and fixed the issue.");

  script_tag(name:"affected", value:"WordPress Ninja Forms Contact Form plugin prior to version
  3.6.26.");

  script_tag(name:"solution", value:"Update to version 3.6.26 or later.");

  script_xref(name:"URL", value:"https://wpscan.com/vulnerability/558e06ab-704b-4bb1-ba7f-b5f6bbbd68d9");

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

if( version_is_less( version: version, test_version: "3.6.26" ) ) {
  report = report_fixed_ver( installed_version: version, fixed_version: "3.6.26", install_path: location );
  security_message( port: port, data: report );
  exit( 0 );
}

exit( 99 );
