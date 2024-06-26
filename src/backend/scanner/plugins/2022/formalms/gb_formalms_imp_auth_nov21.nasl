# Copyright (C) 2022 Greenbone Networks GmbH
#
# SPDX-License-Identifier: GPL-2.0-or-later
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.

CPE = "cpe:/a:formalms:formalms";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.126279");
  script_version("2022-12-29T11:40:20+0000");
  script_tag(name:"last_modification", value:"2022-12-29 11:40:20 +0000 (Thu, 29 Dec 2022)");
  script_tag(name:"creation_date", value:"2022-12-28 07:46:33 +0000 (Wed, 28 Dec 2022)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2021-11-15 14:18:00 +0000 (Mon, 15 Nov 2021)");

  script_cve_id("CVE-2021-43136");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("Forma LMS <= 2.4.4 Improper Authentication Vulnerability");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2022 Greenbone Networks GmbH");
  script_family("Web application abuses");
  script_dependencies("gb_formalms_http_detect.nasl");
  script_mandatory_keys("formalms/detected");

  script_tag(name:"summary", value:"Forma LMS is prone to an improper authentication
  vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"impact", value:"Attackers are allowed to bypass the authentication mechanism and
  obtain a valid access to the platform.");

  script_tag(name:"affected", value:"Forma LMS version 2.4.4 and prior.");

  script_tag(name:"solution", value:"Update to version 2.4.5 or later.");

  script_xref(name:"URL", value:"https://voidzone.me/cve-2021-43136-formalms-the-evil-default-value-that-leads-to-authentication-bypass/");
  script_xref(name:"URL", value:"https://www.formalms.org/download/all-downloads/download/2-releases/16-forma-lms-2-4-5.html");

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

if (version_is_less(version: version, test_version: "2.4.5")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "2.4.5");
  security_message(port: port, data: report);
  exit(0);
}

exit( 99 );
