# Copyright (C) 2022 Greenbone Networks GmbH
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

CPE = "cpe:/a:mozilla:firefox";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.826817");
  script_version("2022-12-19T07:27:49+0000");
  script_cve_id("CVE-2022-46871", "CVE-2022-46873", "CVE-2022-46874", "CVE-2022-46875",
                "CVE-2022-46877", "CVE-2022-46878", "CVE-2022-46879");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"2022-12-19 07:27:49 +0000 (Mon, 19 Dec 2022)");
  script_tag(name:"creation_date", value:"2022-12-16 11:26:31 +0530 (Fri, 16 Dec 2022)");
  script_name("Mozilla Firefox Security Update(mfsa_2022-51_2022-53)-MAC OS X");

  script_tag(name:"summary", value:"Mozilla Firefox is prone to multiple vulnerabilities.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present
  on the target host.");

  script_tag(name:"insight", value:"Multiple flaws exist due to,

  - libusrsctp library out of date.

  - Firefox did not implement the CSP directive unsafe-hashes.

  - Drag and Dropped Filenames could have been truncated to malicious extensions.

  - Download Protections were bypassed by .atloc and .ftploc files on Mac OS.

  - Fullscreen notification bypass.

  - Memory safety bugs fixed in Firefox 108 and Firefox ESR 102.6.

  - Memory safety bugs.");

  script_tag(name:"impact", value:"Successful exploitation will allow
  attackers to run arbitrary code, bypass security restrictions, conduct spoofing
  and cause a denial of service on affected system.");

  script_tag(name:"affected", value:"Mozilla Firefox version before
  108 on MAC OS X.");

  script_tag(name:"solution", value:"Upgrade to Mozilla Firefox version 108
  or later, Please see the references for more information.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"executable_version");
  script_xref(name:"URL", value:"https://www.mozilla.org/en-US/security/advisories/mfsa2022-51/");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2022 Greenbone Networks GmbH");
  script_family("General");
  script_dependencies("gb_mozilla_prdts_detect_macosx.nasl");
  script_mandatory_keys("Mozilla/Firefox/MacOSX/Version");
  exit(0);
}
include("host_details.inc");
include("version_func.inc");

if( ! infos = get_app_version_and_location( cpe:CPE, exit_no_version:TRUE) ) exit( 0 );
vers = infos['version'];
path = infos['location'];

if(version_is_less(version:vers, test_version:"108"))
{
  report = report_fixed_ver(installed_version:vers, fixed_version:"108", install_path:path);
  security_message(data:report);
  exit(0);
}
