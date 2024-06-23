package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class chome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <title>A Three-Layer Privacy Preserving Cloud Storage Scheme</title>\n");
      out.write("        <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <script type=\"text/javascript\" src=\"js/cufon-yui.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/arial.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/cuf_run.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-1.3.2.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/radius.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    ");

        if (request.getParameter("msg") != null) {
    
      out.write("\n");
      out.write("    <script>alert('Login Successfully');</script>\n");
      out.write("    ");
            }
    
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"main\">\n");
      out.write("            <div class=\"header\">\n");
      out.write("                <div class=\"header_resize\">\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <br><h2><font style=\"font-size: 24px; font-style: inherit; font-family: fantasy; color: black\">A Three-Layer Privacy Preserving Cloud Storage Scheme Based on Computational Intelligence in Fog Computing</font></h2>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clr\"></div>\n");
      out.write("                    <div class=\"menu_nav\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li class=\"active\"><a href=\"chome.jsp\">Cloud Home</a></li>\n");
      out.write("                            <li><a href=\"user_de.jsp\">Authentication</a></li>\n");
      out.write("                            <li><a href=\"file_de2.jsp\">File Details</a></li>\n");
      out.write("                            <li><a href=\"user_req.jsp\">User Request</a></li>\n");
      out.write("                            <li><a href=\"down_de.jsp\">Download History</a></li>\n");
      out.write("                            <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                        <div class=\"searchform\">\n");
      out.write("                            <form id=\"formsearch\" name=\"formsearch\" method=\"post\" action=\"search.jsp\">\n");
      out.write("                                <span>\n");
      out.write("                                    <input name=\"editbox_search\" name=\"editbox_search\" class=\"editbox_search\" id=\"editbox_search\" maxlength=\"80\" value=\"Search our ste:\" type=\"text\" />\n");
      out.write("                                </span>\n");
      out.write("                                <input name=\"button_search\" id=\"button_search\" src=\"images/search_btn.gif\" class=\"button_search\" type=\"image\" />\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clr\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"content\">\n");
      out.write("                <div class=\"content_resize\"> <img src=\"images/up.jpg\" width=\"958\" height=\"245\" alt=\"\" class=\"hbg_img\" />\n");
      out.write("                    <div class=\"mainbar\">\n");
      out.write("                        <div class=\"article\">\n");
      out.write("                            <!--- Start Body ------>\n");
      out.write("\n");
      out.write("                            <center><font style=\"font-family: fantasy; font-size: x-large; color: #40b5ff; font-style: inherit\">Cloud Home&nbsp; </font>&nbsp;&nbsp;&nbsp;<font style=\"font-family: fantasy; font-size: x-large; color: #4CAF50; font-style: inherit\"></font><br>\n");
      out.write("                                    <img src=\"images\\user1.JPG\" alt=\"\" height=\"200\" width=\"450\"></center>\n");
      out.write("                                        <!--- End Body ------>\n");
      out.write("                                        </div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"sidebar\">\n");
      out.write("                                            <div class=\"gadget\">\n");
      out.write("                                                <BR><h2 class=\"star\"><span>Sidebar</span> Menu</h2>\n");
      out.write("                                                    <div class=\"clr\"></div>\n");
      out.write("                                                    <ul class=\"sb_menu\">\n");
      out.write("                                                        <li><a href=\"uhome.jsp\">User Home</a></li>\n");
      out.write("                                                        <li><a href=\"upload.jsp\">File Upload</a></li>\n");
      out.write("                                                        <li><a href=\"file_de.jsp\">File View</a></li>\n");
      out.write("                                                        <li><a href=\"file_de1.jsp\">File Request</a></li>\n");
      out.write("                                                        <li><a href=\"reg.jsp\">Registration</a></li>\n");
      out.write("                                                    </ul>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"clr\"></div>\n");
      out.write("                                        </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"fbg\">\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"footer\">\n");
      out.write("                                            <div class=\"footer_resize\">\n");
      out.write("                                                <p class=\"lf\">Copyright &copy; 2024</p>\n");
      out.write("                                                <div class=\"clr\"></div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        </body>\n");
      out.write("                                        </html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
