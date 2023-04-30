package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AddDataset_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("   <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("                <link rel=\"stylesheet\" href=\"css/style.css\" />\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"cont\">\n");
      out.write("            <h1>ONLINE MEDICAL STORE FINDING AND AVAILABILITY OF MEDICINES USING MACHINE LEARNING.</h1>  \n");
      out.write("        </div>\n");
      out.write("       <div class=\"header\">\n");
      out.write("  <a href=\"#default\" class=\"logo\"></a>\n");
      out.write("  <div class=\"header-right\">\n");
      out.write("    <a href=\"Home.jsp\">Home</a>\n");
      out.write("    <a class=\"active\" href=\"AddDataset.jsp\">Add DataSet</a>\n");
      out.write("    <a  href=\"Collections.jsp\">Collections</a>\n");
      out.write(" <a href=\"Preprocess.jsp\">Preprocessing</a>\n");
      out.write("    <a href=\"Train.jsp\">Train</a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <p align=\"center\" style=\"color: purple;font-size:30px;text-shadow: 0px 5px 6px tomato;\">Upload Medical Datasets</p>\n");
      out.write("<form action=\"Uploads\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("<table align=\"center\"  style=\"width: 568px;height: 120px;font-size:30px;background: green;text-align: center;border-radius: 10px;border: ridge;\">\n");
      out.write("<tr><td style=\"color: yellow; font-family:Times New Roman\">Choose Dataset</td><td><input type=\"file\" name=\"file\" required=\"\" style=\"color: cornsilk;border-radius: 4px;height: 25px;border: violet;font-weight: bold;\"></td></tr>\n");
      out.write("</table>\n");
      out.write("<p align=\"center\"><input type=\"submit\" value=\"Upload DataSet\" style=\"width: 167px;height: 38px;font-size:20px;border-radius: 6px;border: whitesmoke;background: darkorange;\"></p>\n");
      out.write("</form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
