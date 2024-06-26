# SPDX-FileCopyrightText: 2023 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

CPE = "cpe:/a:wpmet:metform_elementor_contact_form_builder";

if (description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.127539");
  script_version("2023-10-13T16:09:03+0000");
  script_tag(name:"last_modification", value:"2023-10-13 16:09:03 +0000 (Fri, 13 Oct 2023)");
  script_tag(name:"creation_date", value:"2023-09-04 10:00:39 +0000 (Mon, 04 Sep 2023)");
  script_tag(name:"cvss_base", value:"4.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:P/I:N/A:N");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2023-08-31 06:15:00 +0000 (Thu, 31 Aug 2023)");

  script_cve_id("CVE-2023-0689");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("WordPress Metform Elementor Contact Form Builder Plugin < 3.3.2 Information Disclosure Vulnerability");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2023 Greenbone AG");
  script_family("Web application abuses");
  script_dependencies("gb_wordpress_plugin_http_detect.nasl");
  script_mandatory_keys("wordpress/plugin/metform/detected");

  script_tag(name:"summary", value:"The WordPress plugin 'Metform Elementor Contact Form Builder'
  is prone to an information disclosure vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"impact", value:"Authenticated attackers, with subscriber-level capabilities or
  above are able to obtain sensitive information about arbitrary form submissions, including the
  submitter's first name.");

  script_tag(name:"affected", value:"WordPress Metform Elementor Contact Form Builder plugin prior
  to version 3.3.2.");

  script_tag(name:"solution", value:"Update to version 3.3.2 or later.");

  script_xref(name:"URL", value:"https://www.wordfence.com/threat-intel/vulnerabilities/id/356cf06e-16e7-438b-83b5-c8a52a21f903");

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

if( version_is_less( version: version, test_version: "3.3.2" ) ) {
  report = report_fixed_ver( installed_version: version, fixed_version: "3.3.2", install_path: location );
  security_message( port: port, data: report );
  exit( 0 );
}

exit( 99 );
