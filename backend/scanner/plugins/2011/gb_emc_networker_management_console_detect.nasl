###############################################################################
# OpenVAS Vulnerability Test
#
# EMC Networker Management Console Detection
#
# Authors:
# Michael Meyer <michael.meyer@greenbone.net>
#
# Copyright:
# Copyright (c) 2011 Greenbone Networks GmbH
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if (description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.103124");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_version("2019-05-13T14:05:09+0000");
  script_tag(name:"last_modification", value:"2019-05-13 14:05:09 +0000 (Mon, 13 May 2019)");
  script_tag(name:"creation_date", value:"2011-03-23 13:28:27 +0100 (Wed, 23 Mar 2011)");
  script_tag(name:"cvss_base", value:"0.0");
  script_name("EMC Networker Management Console Detection");
  script_tag(name:"qod_type", value:"remote_banner");
  script_category(ACT_GATHER_INFO);
  script_family("Service detection");
  script_copyright("This script is Copyright (C) 2011 Greenbone Networks GmbH");
  script_dependencies("find_service.nasl", "http_version.nasl");
  script_require_ports("Services/www", 9000);
  script_exclude_keys("Settings/disable_cgi_scanning");

  script_tag(name:"summary", value:"The EMC Networker Management Console is running at this port.");

  script_xref(name:"URL", value:"http://www.emc.com/products/detail/software/networker.htm");

  exit(0);
}

include("http_func.inc");
include("http_keepalive.inc");

port = get_http_port(default:9000);

url = string("/");
buf = http_get_cache(item:url, port:port);
if(!buf)
  exit(0);

if(egrep(pattern: "<title>Welcome to NetWorker Management Console", string: buf, icase: TRUE)) {
  vers = string("unknown");
  install = "/";

  set_kb_item(name: string("www/", port, "/emc_networker_console"), value: string(vers," under ",install));
  log_message(port:port);
}

exit(0);