###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ccms_45819.nasl 12018 2018-10-22 13:31:29Z mmartin $
#
# CompactCMS Multiple Cross Site Scripting Vulnerabilities
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
  script_oid("1.3.6.1.4.1.25623.1.0.103033");
  script_version("$Revision: 12018 $");
  script_tag(name:"last_modification", value:"$Date: 2018-10-22 15:31:29 +0200 (Mon, 22 Oct 2018) $");
  script_tag(name:"creation_date", value:"2011-01-19 13:37:44 +0100 (Wed, 19 Jan 2011)");
  script_bugtraq_id(45819);
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:P/A:N");
  script_name("CompactCMS Multiple Cross Site Scripting Vulnerabilities");

  script_xref(name:"URL", value:"https://www.securityfocus.com/bid/45819");
  script_xref(name:"URL", value:"http://www.compactcms.nl");

  script_tag(name:"qod_type", value:"remote_vul");
  script_category(ACT_ATTACK);
  script_family("Web application abuses");
  script_copyright("This script is Copyright (C) 2011 Greenbone Networks GmbH");
  script_dependencies("find_service.nasl", "http_version.nasl");
  script_require_ports("Services/www", 80);
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_tag(name:"solution", value:"No known solution was made available for at least one year since the disclosure of this vulnerability. Likely none will be provided anymore. General solution options are to upgrade to a newer release, disable respective features, remove the product or replace the product by another one.");
  script_tag(name:"solution_type", value:"WillNotFix");
  script_tag(name:"summary", value:"CompactCMS is prone to multiple cross-site scripting vulnerabilities
because it fails to sufficiently sanitize user-supplied input.

Attacker-supplied script code may be executed in the context of the
affected site, potentially allowing the attacker to steal cookie-based
authentication credentials.

CompactCMS 1.4.1 is vulnerable. Other versions may also be affected.");
  exit(0);
}

include("http_func.inc");
include("http_keepalive.inc");

port = get_http_port(default:80);
if(!can_host_php(port:port))exit(0);

foreach dir( make_list_unique( "/compactcms", "/ccms", "/cms", cgi_dirs( port:port ) ) ) {

  if( dir == "/" ) dir = "";
  url = string(dir,"/afdrukken.php?page=%22%3E%3Cscript%3Ealert(%27openvas-xss-test%27)%3C/script%3E");

  if(http_vuln_check(port:port, url:url,pattern:"<script>alert\('openvas-xss-test'\)</script>",check_header:TRUE)) {
    report = report_vuln_url( port:port, url:url );
    security_message( port:port, data:report );
    exit( 0 );
  }
}

exit( 99 );
