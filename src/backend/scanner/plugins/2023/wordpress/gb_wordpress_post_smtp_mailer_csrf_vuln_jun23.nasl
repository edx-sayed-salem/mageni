# SPDX-FileCopyrightText: 2023 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

CPE = "cpe:/a:wpexperts:post_smtp";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.126436");
  script_version("2023-07-25T05:05:58+0000");
  script_tag(name:"last_modification", value:"2023-07-25 05:05:58 +0000 (Tue, 25 Jul 2023)");
  script_tag(name:"creation_date", value:"2023-07-20 09:32:43 +0000 (Thu, 20 Jul 2023)");
  script_tag(name:"cvss_base", value:"9.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:C/I:C/A:C");

  script_cve_id("CVE-2023-3179");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("WordPress Post SMTP Mailer/Email Log Plugin < 2.5.7 CSRF Vulnerability");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2023 Greenbone AG");
  script_family("Web application abuses");
  script_dependencies("gb_wordpress_plugin_http_detect.nasl");
  script_mandatory_keys("wordpress/plugin/post-smtp/detected");

  script_tag(name:"summary", value:"The WordPress plugin 'Post SMTP Mailer/Email Log' is prone to a
  cross-side sequest forgery (CSRF) vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The plugin does not have proper CSRF checks in some AJAX
  actions, which could allow attackers to make logged in users with the manage_postman_smtp
  capability resend an email to an arbitrary address.");

  script_tag(name:"affected", value:"WordPress Post SMTP Mailer/Email Log plugin prior to
  version 2.5.7.");

  script_tag(name:"solution", value:"Update to version 2.5.7 or later.");

  script_xref(name:"URL", value:"https://wpscan.com/vulnerability/542caa40-b199-4397-90bb-4fdb693ebb24");

  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if ( ! port = get_app_port( cpe:CPE ) )
  exit( 0 );

if ( ! infos = get_app_version_and_location( cpe:CPE, port:port, exit_no_version:TRUE ) )
  exit( 0 );

version = infos["version"];
location = infos["location"];

if ( version_is_less( version:version, test_version:"2.5.7" ) ) {
  report = report_fixed_ver( installed_version:version, fixed_version:"2.5.7", install_path:location );
  security_message( port:port, data:report );
  exit( 0 );
}

exit( 99 );
