# SPDX-FileCopyrightText: 2023 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

CPE = "cpe:/a:devowl:wordpress_real_cookie_banner";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.170297");
  script_version("2023-10-13T16:09:03+0000");
  script_tag(name:"last_modification", value:"2023-10-13 16:09:03 +0000 (Fri, 13 Oct 2023)");
  script_tag(name:"creation_date", value:"2023-01-25 20:08:24 +0000 (Wed, 25 Jan 2023)");
  script_tag(name:"cvss_base", value:"5.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:P/I:P/A:N");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:C/C:L/I:L/A:N");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2023-01-25 15:32:00 +0000 (Wed, 25 Jan 2023)");

  script_cve_id("CVE-2022-4507");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("WordPress Real Cookie Banner Plugin < 3.4.10 XSS Vulnerability");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2023 Greenbone AG");
  script_family("Web application abuses");
  script_dependencies("gb_wordpress_plugin_http_detect.nasl");
  script_mandatory_keys("wordpress/plugin/real-cookie-banner/detected");

  script_tag(name:"summary", value:"The WordPress plugin 'Real Cookie Banner: GDPR (DSGVO) & ePrivacy
  Cookie Consent' is prone to a cross-site scripting (XSS) vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The plugin does not validate and escapes some of its shortcode
  attributes before outputting them back in the page, which could allow users with a role as low as a
  contributor to perform Stored Cross-Site Scripting attacks against logged-in admins.");

  script_tag(name:"affected", value:"WordPress plugin Real Cookie Banner prior to version 3.4.10.");

  script_tag(name:"solution", value:"Update to version 3.4.10 or later.");

  script_xref(name:"URL", value:"https://wpscan.com/vulnerability/93c61a70-5624-4c4d-ac3a-c598aec4f8b6");

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

if (version_is_less(version: version, test_version: "3.4.10")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "3.4.10", install_path: location);
  security_message(port: port, data: report);
  exit(0);
}

exit(99);
