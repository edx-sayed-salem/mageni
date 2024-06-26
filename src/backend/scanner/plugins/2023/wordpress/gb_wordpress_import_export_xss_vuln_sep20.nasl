# SPDX-FileCopyrightText: 2023 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-or-later

CPE = "cpe:/a:brainstormforce:import_%2f_export_customizer_settings";

if (description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.126460");
  script_version("2023-08-04T05:06:23+0000");
  script_tag(name:"last_modification", value:"2023-08-04 05:06:23 +0000 (Fri, 04 Aug 2023)");
  script_tag(name:"creation_date", value:"2023-08-02 10:20:45 +0000 (Wed, 02 Aug 2023)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:P/A:N");

  script_cve_id("CVE-2020-36737");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("WordPress Import/Export Customizer Settings Plugin < 1.0.4 CSRF Vulnerability");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2023 Greenbone AG");
  script_family("Web application abuses");
  script_dependencies("gb_wordpress_plugin_http_detect.nasl");
  script_mandatory_keys("wordpress/plugin/astra-import-export/detected");

  script_tag(name:"summary", value:"The WordPress plugin 'Import/Export Customizer Settings' is
  prone to a cross-site request forgery (CSRF) vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The plugin does not protect the astra_admin_errors function
  against CSRF attacks, allowing an unauthenticated attacker to display an import status by
  tricking a logged in administrator to submit a crafted request.");

  script_tag(name:"affected", value:"WordPress Import/Export Customizer Settings prior to version
  1.0.4.");

  script_tag(name:"solution", value:"Update to version 1.0.4 or later.");

  script_xref(name:"URL", value:"https://wpscan.com/vulnerability/96b60615-8f3a-440b-8333-d8823ee3d7bc");

  exit(0);
}

include("version_func.inc");
include("host_details.inc");

if (!port = get_app_port(cpe: CPE))
  exit(0);

if (!infos = get_app_version_and_location(cpe: CPE, port: port, exit_no_version: TRUE))
  exit(0);

version = infos["version"];
location = infos["location"];

if (version_is_less(version: version, test_version: "1.0.4")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "1.0.4", install_path: location);
  security_message(port: port, data: report);
  exit(0);
}

exit(99);
