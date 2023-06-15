import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = {"/export"})
public class export extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            String githublink = request.getParameter("githublink");
            String obj = request.getParameter("obj");
            String class12per = request.getParameter("class12per");
            String schoolname12 = request.getParameter("schoolname12");
            String class12stream = request.getParameter("class12stream");
            String schoolboard = request.getParameter("schoolboard");
            String gradper = request.getParameter("gradper");
            String gradcourse = request.getParameter("gradcourse");
            String gradcollege = request.getParameter("gradcollege");
            String graduni = request.getParameter("graduni");
            String postgradper = request.getParameter("postgradper");
            String postgradcourse = request.getParameter("postgradcourse");
            String postgradcollege = request.getParameter("postgradcollege");
            String postgraduni = request.getParameter("postgraduni");
            String skillname1 = request.getParameter("skillname1");
            String skilllevel1 = request.getParameter("skilllevel1");
            String skillname2 = request.getParameter("skillname2");
            String skilllevel2 = request.getParameter("skilllevel2");
            String skillname3 = request.getParameter("skillname3");
            String skilllevel3 = request.getParameter("skilllevel3");
            String exp1 = request.getParameter("exp1");
            String exp2 = request.getParameter("exp2");
            String proj1 = request.getParameter("proj1");
            String proj2 = request.getParameter("proj2");
            String proj1det = request.getParameter("proj1det");
            String proj2det = request.getParameter("proj2det");

            String company1 = request.getParameter("company1");
            String company2 = request.getParameter("company2");
            String from1 = request.getParameter("from1");
            String from2 = request.getParameter("from2");
            String to1 = request.getParameter("to1");
            String to2 = request.getParameter("to2");
            String tenure1 = request.getParameter("tenure1");
            String tenure2 = request.getParameter("tenure2");
            String add1 = request.getParameter("add1");
            String add2 = request.getParameter("add2");
            String add3 = request.getParameter("add3");
            String htmlresponse;
            htmlresponse = "<html>"
                    + "<head>"
                    + "<style>"
                    + "table{}"
                    + "th,td{padding:0px; margin:0px;border:1px solid black;}"
                    + "</style>"
                    + "</head>"
                    + "<body>"
//                    + "<h3 style='text-align:center'>Resume</h3>"
                    + "<p>Name : &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" + name + "<br>"
                    + "Email : &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" + email + "<br>"
                    + "Contact : &nbsp" + "+91-" + mobile + "<br></p>"
                    + "Github : &nbsp&nbsp&nbsp" + githublink + "<br></p>"
                    + "<p><b><u>Objective</u></b></p>"
                    + "<p>"+ obj +"</p>"
                    + "<p><b><u>Education</u></b></p>"
                    + "<ul>"
                    + "<li><b>Senior Secondary - Class 12 : </b>"
                    + class12stream + ", " + class12per + ", " + schoolname12 + ", " + schoolboard + "</li>"
                    + "<li><b>Graduation : </b>"
                    + gradcourse + ", " + gradper + ", " + gradcollege + ", " + graduni + "</li>"
                    + "<li><b>Post Graduation : </b>"
                    + postgradcourse + ", " + postgradper + ", " + postgradcollege + ", " + postgraduni + "</li>" 
                    + "</ul>"
                    + "<p><b><u>SkillSet</u></b></p>"
                    + "<ul>"
                    + "<li><b>" + skillname1 + "</b> : " + skilllevel1 + "</li>"
                    + "<li><b>" + skillname2 + "</b> : " + skilllevel2 + "</li>" 
                    + "<li><b>" + skillname3 + "</b> : " + skilllevel3 + "</li>" 
                    + "</ul>"
                    + "<p><b><u>Projects</u></b></p>"
                    + "<ul>"
                    + "<li><b>" + proj1 + "</b> : " + proj1det + "</li>"
                    + "<li><b>" + proj2 + "</b> : " + proj2det + "</li>" 
                    + "</ul>"
                    + "<p><b><u>Experience</u></b></p>"
                    + "<ul>"
                    + "<li><b>" + company1 + " - " + exp1 + "</b> : " + tenure1 + ", " + from1 + " to " + to1 + "</li>"
                    + "<li><b>" + company2 + " - " + exp2 + "</b> : " + tenure2 + ", " + from2 + " to " + to2 + "</li>"
                    + "</ul>"
                    + "<p><b><u>Add Ons</u></b></p>"
                    + "<ul>"
                    + "<li>" + add1 + "</li>"
                    + "<li>" + add2 + "</li>"
                    + "<li>" + add3 + "</li>"
                    + "</ul>"
                    + "</body>"
                    + "</html>";
            out.print(htmlresponse);
        }
    }
}