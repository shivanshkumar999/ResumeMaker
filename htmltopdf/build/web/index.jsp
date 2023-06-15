<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bree+Serif">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
        <!--        <script src="js/html2canvas.min.js"></script>
                <script src="js/jsPDF/dist/jspdf.umd.js"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js">
        </script>
        <title>Online PDF Maker</title>

        <script>

            $(document).ready(function () {
                $('#submit').click(function () {
                    document.getElementById("makepdf").style.visibility = "visible";
                    var name = $('#name').val();
                    var email = $('#email').val();
                    var mobile = $('#mobile').val();
                    var githublink = $('#githublink').val();
                    var obj = $("#obj").val();
                    var class12per = $('#class12per').val();
                    var schoolname12 = $("#schoolname12").val();
                    var class12stream = $("#class12stream").val();
                    var schoolboard = $("#schoolboard").val(); 
                    var gradper = $("#gradper").val();
                    var gradcourse = $("#gradcourse").val();
                    var gradcollege = $("#gradcollege").val();
                    var graduni = $("#graduni").val();
                    var postgradper = $('#postgradper').val();
                    var postgradcourse = $("#postgradcourse").val();
                    var postgradcollege = $("#postgradcollege").val();
                    var postgraduni = $("#postgraduni").val();
                    var skillname1 = $("#skillname1").val();
                    var skilllevel1 = $("#skilllevel1").val();
                    var skillname2 = $("#skillname2").val();
                    var skilllevel2 = $("#skilllevel2").val();
                    var skillname3 = $("#skillname3").val();
                    var skilllevel3 = $("#skilllevel3").val();
                    var exp1 = $("#exp1").val();
                    var exp2 = $("#exp2").val();
                    var proj1 = $("#proj1").val();
                    var proj2 = $("#proj2").val();
                    var proj1det = $("#proj1det").val();
                    var proj2det = $("#proj2det").val();
                    var company1 = $("#company1").val();
                    var company2 = $("#company2").val();
                    var tenure1 = $("#tenure1").val();
                    var tenure2 = $("#tenure2").val();
                    var from1 = $("#from1").val();
                    var from2 = $("#from2").val();
                    var to1 = $("#to1").val();
                    var to2 = $("#to2").val();
                    var add1 = $("#add1").val();
                    var add2 = $("#add2").val();
                    var add3 = $("#add3").val();

                    $.ajax({
                        type: 'POST',
                        data: {name: name,
                            email: email,
                            mobile: mobile,
                            githublink : githublink,
                            obj : obj,
                            class12per: class12per,
                            schoolname12: schoolname12,
                            class12stream: class12stream,
                            schoolboard: schoolboard,
                            gradper : gradper,
                            gradcourse : gradcourse,
                            gradcollege : gradcollege,
                            graduni : graduni,
                            postgradper : postgradper,
                            postgradcourse : postgradcourse,
                            postgradcollege : postgradcollege,
                            postgraduni : postgraduni,
                            skillname1 : skillname1,
                            skilllevel1 : skilllevel1,
                            skillname2 : skillname2,
                            skilllevel2 : skilllevel2,
                            skillname3 : skillname3,
                            skilllevel3 : skilllevel3,
                            proj1 : proj1,
                            proj1det : proj1det,
                            proj2 : proj2,
                            proj12det : proj2det,
                            exp1 : exp1,
                            company1 : company1,
                            tenure1 : tenure1,
                            from1 : from1,
                            to1 : to1,                            
                            exp2 : exp2,
                            company2 : company2,
                            tenure2 : tenure2,
                            from2 : from2,
                            to2 : to2,
                            add1 : add1,
                            add2 : add2,
                            add3 : add3},
                        url: 'export',
                        success: function (result) {
                            $('#result').html(result);
                        }
                    });
                });
            });


            function pdf() {
                let button = document.getElementById("makepdf");
                button.addEventListener("click", function () {
                    var name = $('#name').val();
                    
                    let doc = new jsPDF("p", "mm", [210, 297]);
                    let makePDF = document.querySelector("#result");

                    // fromHTML Method
                    
                    doc.addFont("WorkSans-normal.ttf", "WorkSans", "normal");
                    doc.setFont("WorkSans");
                    doc.text('Resume', 100, 10, {align: 'center'});
                    doc.fromHTML(makePDF);
                    doc.save(name + "-Resume.pdf");
                });
            }
        </script>


        <style>
            body{
                font-family: Bree Serif;
                margin:10px;
            }

            .header {
                background-color: #0e5d4f;
                padding: 5px;
            }

            .header h1{
                color:white;
            }
            
            form{
                width:75%;
                display: block;
                margin-left: auto;
                margin-right: auto;
                background-color: #FFFDD0;
            }
            
            input{
                background-color: #FFFDD0;
                padding: 5px;
                width: 90%;
                border: none;
                border-bottom: 1px solid black;
            }
            
            input:focus{
                outline: none;
                border-bottom: 1px solid grey;
            }
            
            input[type=button]{
                background-color: black;
                color:white;
            }
            
            button{
                padding: 5px;
                background-color: black;
                color:white;
                visibility: hidden;
                width: 100%;
            }
            
            .previewresult{
                width: 50%;
                margin-left: auto;
                margin-right: auto;
            }
                        
        </style>
    </head>
    <body>
        <div class="header">
            <h1 align="center">Online Resume Maker</h1>
        </div>
                <form method="post">
                    <br>
                    <input type="text" id="name" name="name" placeholder="Name" required /><br><br>
                    <input type="email" id="email" name="email" placeholder="E-mail" required /><br><br>
                    <input type="text" id="mobile" name="mobile" placeholder="Contact Number" required /><br><br>
                    <input type="text" id="githublink" name="githublink" placeholder="Enter Github Link" required /><br><br>
                    
                    <p><b>Enter Objective for Resume</b></p>
                    <input type="text" name="obj" placeholder="Objective" id="obj" required><br><br>
                    
                    <p><b>Enter Senior Secondary School Details</b></p>
                    <input type="text" name="class12per" id="class12per" placeholder="Class 12 Percentage" required><br><br>
                    <input type="text" name="schoolname12" id="schoolname12" placeholder="School Name" required><br><br>
                    <input type="text" name="class12stream" id="class12stream" placeholder="Class 12 Stream" required><br><br>
                    <input type="text" name="schoolboard" id="schoolboard" placeholder="School Board" required><br><br><br>
                    
                    <p><b>Enter Graduation Details</b></p>
                    <input type="text" name="gradper" id="gradper" placeholder="Graduation Percentage" required><br><br>
                    <input type="text" name="gradcourse" id="gradcourse" placeholder="Graduation Course" required><br><br>
                    <input type="text" name="gradcollege" id="gradcollege" placeholder="Graduation College" required><br><br>
                    <input type="text" name="graduni" id="graduni" placeholder="Graduation University" required><br><br>
                    
                    <p><b>Enter Post-Graduation Details</b></p>
                    <input type="text" name="postgradper" id="postgradper" placeholder="Post Graduation Percentage" required><br><br>
                    <input type="text" name="postgradcourse" id="postgradcourse" placeholder="Post Graduation Course" required><br><br>
                    <input type="text" name="postgradcollege" id="postgradcollege" placeholder="Post Graduation College" required><br><br>
                    <input type="text" name="postgraduni" id="postgraduni" placeholder="Post Graduation University" required><br><br>
                    
                    <p><b>Enter Your Skills(Language/Certifications)</b></p>
                    <input type="text" name="skill1name1" id="skillname1" placeholder="Skill 1" required><br><br>
                    <input type="text" name="skilllevel2" id="skilllevel1" placeholder="Skill 1 Level" required><br><br>
                    
                    <input type="text" name="skill1name3" id="skillname2" placeholder="Skill 2" required><br><br>
                    <input type="text" name="skilllevel4" id="skilllevel2" placeholder="Skill 2 Level" required><br><br>
                    
                    <input type="text" name="skill1name3" id="skillname3" placeholder="Skill 3" required><br><br>
                    <input type="text" name="skilllevel4" id="skilllevel3" placeholder="Skill 3 Level" required><br><br>
                    
                    <p><b>Projects</b></p>
                    <input type="text" name="proj1" id="proj1" placeholder="Project 1 Name" required><br><br>
                    <input type="text" name="proj1det" id="proj1det" placeholder="Project 1 Details" required><br><br>
                     
                    <input type="text" name="proj2" id="proj2" placeholder="Project 2 Name" required><br><br>
                    <input type="text" name="proj2det" id="proj2det" placeholder="Project 2 Details" required><br><br>
                     
                    <p><b>Enter Your Experience (If Any)</b></p>
                    <input type="text" name="exp1" id="exp1" placeholder="Experience 1 Details" required><br><br>
                    <input type="text" name="company1" id="company1" placeholder="Company Name" required><br><br>
                    <input type="text" name="tenure1" id="tenure1" placeholder="Tenure (In Months)" required><br><br>
                    <input type="date" name="from1" id="from1" placeholder="From" required><br><br>
                    <input type="date" name="to1" id="to1" placeholder="To" required><br><br>
                    
                    <input type="text" name="exp2" id="exp2" placeholder="Experience 2 Details" required><br><br>
                    <input type="text" name="company2" id="company2" placeholder="Company Name" required><br><br>
                    <input type="text" name="tenure2" id="tenure2" placeholder="Tenure(In Months)" required><br><br>
                    <input type="date" name="from2" id="from2" placeholder="From" required><br><br>
                    <input type="date" name="to2" id="to2" placeholder="To" required><br><br>
                    
                    <p><b>Enter Some Extra Points</b></p>
                    1 <input type="text" id="add1" name="add1" required><br><br>
                    2 <input type="text" id="add2" name="add2" required><br><br>
                    3 <input type="text" id="add3" name="add3" required><br><br>
                    
                    
                    <input style="width: 100%" type="button" value="Click to Preview your Resume Below" id="submit"/>
                </form><br>
                <hr>
                <div class="previewresult">    
                    <button id="makepdf" onclick="pdf()">Double Click to Download Resume</button><br><br>
                    <span id="result"></span>
                </div>
    </body>
</html>
