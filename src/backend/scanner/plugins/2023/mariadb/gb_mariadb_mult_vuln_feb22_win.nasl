# Copyright (C) 2023 Greenbone Networks GmbH
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
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

CPE = "cpe:/a:mariadb:mariadb";

if (description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.149346");
  script_version("2023-02-28T10:08:51+0000");
  script_tag(name:"last_modification", value:"2023-02-28 10:08:51 +0000 (Tue, 28 Feb 2023)");
  script_tag(name:"creation_date", value:"2023-02-22 03:59:19 +0000 (Wed, 22 Feb 2023)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2022-03-22 06:15:00 +0000 (Tue, 22 Mar 2022)");

  script_cve_id("CVE-2022-0778", "CVE-2022-21595");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("MariaDB Multiple Vulnerabilities (Feb 2022) - Windows");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2023 Greenbone Networks GmbH");
  script_family("Databases");
  script_dependencies("mysql_version.nasl", "os_detection.nasl");
  script_mandatory_keys("MariaDB/installed", "Host/runs_windows");

  script_tag(name:"summary", value:"MariaDB is prone to multiple vulnerabilities.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The following vulnerabilities exist:

  - CVE-2022-0778: Denial of service (DoS) in OpenSSL

  - CVE-2022-21595: Denial of service (DoS) in MySQL");

  script_tag(name:"affected", value:"MariaDB versions prior to 10.2.42, 10.3.x prior to 10.3.33,
  10.4.x prior to 10.4.23, 10.5.x prior to 10.5.14, 10.6.x prior to 10.6.6 and 10.7.x prior to
  10.7.2.");

  script_tag(name:"solution", value:"Update to version 10.2.42, 10.3.33, 10.4.23, 10.5.14, 10.6.6,
  10.7.2 or later.");

  script_xref(name:"URL", value:"https://mariadb.com/kb/en/mariadb-10-2-42-release-notes/");
  script_xref(name:"URL", value:"https://mariadb.com/kb/en/mariadb-10-3-33-release-notes/");
  script_xref(name:"URL", value:"https://mariadb.com/kb/en/mariadb-10-4-23-release-notes/");
  script_xref(name:"URL", value:"https://mariadb.com/kb/en/mariadb-10-5-14-release-notes/");
  script_xref(name:"URL", value:"https://mariadb.com/kb/en/mariadb-10-6-6-release-notes/");
  script_xref(name:"URL", value:"https://mariadb.com/kb/en/mariadb-10-7-2-release-notes/");
  script_xref(name:"URL", value:"https://mariadb.com/kb/en/security/#full-list-of-cves-fixed-in-mariadb");

  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if (!port = get_app_port(cpe: CPE))
  exit(0);

if (!version = get_app_version(cpe: CPE, port: port))
  exit(0);

if (version_is_less(version: version, test_version: "10.2.42")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "10.2.42");
  security_message(port: port, data: report);
  exit(0);
}

if (version_in_range_exclusive(version: version, test_version_lo: "10.3.0", test_version_up: "10.3.33")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "10.3.33");
  security_message(port: port, data: report);
  exit(0);
}

if (version_in_range_exclusive(version: version, test_version_lo: "10.4.0", test_version_up: "10.4.23")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "10.4.23");
  security_message(port: port, data: report);
  exit(0);
}

if (version_in_range_exclusive(version: version, test_version_lo: "10.5.0", test_version_up: "10.5.14")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "10.5.14");
  security_message(port: port, data: report);
  exit(0);
}

if (version_in_range_exclusive(version: version, test_version_lo: "10.6.0", test_version_up: "10.6.6")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "10.6.6");
  security_message(port: port, data: report);
  exit(0);
}

if (version_in_range_exclusive(version: version, test_version_lo: "10.7.0", test_version_up: "10.7.2")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "10.7.2");
  security_message(port: port, data: report);
  exit(0);
}

exit(99);
