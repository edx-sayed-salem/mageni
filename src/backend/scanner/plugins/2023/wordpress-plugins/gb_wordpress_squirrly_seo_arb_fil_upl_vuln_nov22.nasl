# SPDX-FileCopyrightText: 2023 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

CPE = "cpe:/a:squirrly:seo_plugin_by_squirrly_seo";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.126289");
  script_version("2023-10-13T16:09:03+0000");
  script_tag(name:"last_modification", value:"2023-10-13 16:09:03 +0000 (Fri, 13 Oct 2023)");
  script_tag(name:"creation_date", value:"2023-05-24 08:08:03 +0000 (Wed, 24 May 2023)");
  script_tag(name:"cvss_base", value:"9.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:C/I:C/A:C");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2022-12-01 22:56:00 +0000 (Thu, 01 Dec 2022)");

  script_cve_id("CVE-2022-38140");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("WordPress SEO Plugin by Squirrly SEO Plugin < 12.1.11 Arbitrary File Upload Vulnerability");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2023 Greenbone AG");
  script_family("Web application abuses");
  script_dependencies("gb_wordpress_plugin_http_detect.nasl");
  script_mandatory_keys("wordpress/plugin/ad-inserter/detected");

  script_tag(name:"summary", value:"The WordPress plugin 'SEO Plugin by Squirrly SEO' is prone to
  an arbitrary file upload vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"impact", value:"This flaw could allow a malicious actor to upload any type of file
  to your website");

  script_tag(name:"affected", value:"WordPress SEO Plugin by Squirrly SEO plugin prior to version
  12.1.11.");

  script_tag(name:"solution", value:"Update to version 12.1.11 or later.");

  script_xref(name:"URL", value:"https://patchstack.com/database/vulnerability/squirrly-seo/wordpress-seo-plugin-by-squirrly-seo-plugin-12-1-10-auth-arbitrary-file-upload-vulnerability?_s_id=cve");

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

if( version_is_less( version: version, test_version: "12.1.11" ) ) {
  report = report_fixed_ver( installed_version: version, fixed_version: "12.1.11", install_path: location );
  security_message( port: port, data: report );
  exit( 0 );
}

exit( 99 );
