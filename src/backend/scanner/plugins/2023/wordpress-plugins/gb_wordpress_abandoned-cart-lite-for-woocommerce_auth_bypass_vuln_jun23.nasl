# SPDX-FileCopyrightText: 2023 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

CPE = "cpe:/a:tychesoftwares:abandoned_cart_lite_for_woocommerce";

if (description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.127638");
  script_version("2023-11-30T05:06:26+0000");
  script_tag(name:"last_modification", value:"2023-11-30 05:06:26 +0000 (Thu, 30 Nov 2023)");
  script_tag(name:"creation_date", value:"2023-11-24 11:20:51 +0000 (Fri, 24 Nov 2023)");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2023-06-14 15:18:00 +0000 (Wed, 14 Jun 2023)");

  script_cve_id("CVE-2023-2986");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("WordPress Abandoned Cart Lite for WooCommerce Plugin < 5.15.2 Authentication Bypass Vulnerability");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2023 Greenbone AG");
  script_family("Web application abuses");
  script_dependencies("gb_wordpress_plugin_http_detect.nasl");
  script_mandatory_keys("wordpress/plugin/woocommerce-abandoned-cart/detected");

  script_tag(name:"summary", value:"The WordPress plugin 'Abandoned Cart Lite for WooCommerce' is
  prone to an authentication bypass vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"Attackers are able to log in as users who have abandoned the
  cart due to insufficient encryption on the user being supplied during the abandoned cart link
  decode through the plugin.");

  script_tag(name:"affected", value:"WordPress Abandoned Cart Lite for WooCommerce plugin prior to
  version 5.15.2.");

  script_tag(name:"solution", value:"Update to version 5.15.2 or later.");

  script_xref(name:"URL", value:"https://www.wordfence.com/threat-intel/vulnerabilities/id/68052614-204f-4237-af0e-4b8210ebd59f");

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

if( version_is_less( version: version, test_version: "5.15.2" ) ) {
  report = report_fixed_ver( installed_version: version, fixed_version: "5.15.2", install_path: location );
  security_message( port: port, data: report );
  exit( 0 );
}

exit( 99 );
