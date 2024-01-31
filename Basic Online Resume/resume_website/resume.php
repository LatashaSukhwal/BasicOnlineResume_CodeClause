<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "resume";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function sanitizeOutput($data) {
    return htmlspecialchars(stripslashes(trim($data)));
}

// Assuming you have stored the student ID in a variable named $studentID
$studentID = isset($_GET['studentID']) ? $_GET['studentID'] : null;
if (!$studentID) {
    die("No studentID provided.");
}
// Replace with your actual variable storing student ID

// Fetch student information from the database
$sqlStudentInfo = "SELECT * FROM student_info1 WHERE id = $studentID";
$resultStudentInfo = $conn->query($sqlStudentInfo);

if ($resultStudentInfo->num_rows > 0) {
    $rowStudentInfo = $resultStudentInfo->fetch_assoc();


// Fetch skills information from the database
$sqlSkills = "SELECT * FROM technical_skills_info WHERE student_id = $studentID";
$resultSkills = $conn->query($sqlSkills);

// Fetch certifications information from the database
$sqlCertifications = "SELECT * FROM certifications_info WHERE student_id = $studentID";
$resultCertifications = $conn->query($sqlCertifications);

// Fetch education information from the database
$sqlEducation = "SELECT * FROM education_info1 WHERE student_id = $studentID";
$resultEducation = $conn->query($sqlEducation);

    // Fetch other related information (skills, certifications, education, etc.) here...

    // Now, you can start populating the HTML template with the retrieved data
    ?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Resume</title>
        <link rel="stylesheet" href="style1.css">
    </head>

    <body>

        <table align="center">
        <tr>
            <td class="bb">
            <div class="left">
            <?php
              // Display student photo
              echo '<img src="\resume_website/uploads/' . $rowStudentInfo['photo'] . '" alt="Student Photo" style="margin-left: 21px;">';

             ?>
             
               <h1 class="kk"><?php echo sanitizeOutput($rowStudentInfo['name']); ?></h1>
            </div>
            </td>
            
            <td>
            <div class="right" style="margin-top:-32px">
               <p>Registration Number: <?php echo sanitizeOutput($rowStudentInfo['regNumber']); ?></p>
               <p>Email: <?php echo sanitizeOutput($rowStudentInfo['email']); ?></p>
               <p>Phone: <?php echo sanitizeOutput($rowStudentInfo['phone']); ?></p>
               <p>LinkedIn: <?php echo sanitizeOutput($rowStudentInfo['linkedin']); ?></p>
               <p>GitHub: <?php echo sanitizeOutput($rowStudentInfo['github']); ?></p>
               <p>Portfolio: <?php echo sanitizeOutput($rowStudentInfo['portfolio']); ?></p>
            </div>
            </td>
        </tr>

        <tr>
            <td colspan="2" class="centers">
            <span><b> Technical Skills : </b>
            <?php
             // Display technical skills
                if ($resultSkills->num_rows > 0) {
                    while ($rowSkill = $resultSkills->fetch_assoc()) {
                           echo sanitizeOutput($rowSkill['technical_skill']) . ', ';
                         }
                 }       
                else {
                         echo 'No technical skills found.';
                     }
             ?>
            </span>
            <span style="padding-top: 100px;"><br><b>Certification : </b></span>
            <ul>
            <?php
                // Display certifications
                if ($resultCertifications->num_rows > 0) {
                while ($rowCertification = $resultCertifications->fetch_assoc()) {
                echo '<li>' . sanitizeOutput($rowCertification['certification']) . '</li>';
                 }
                 } else {
                    echo '<li>No certifications found.</li>';
                 }
               ?>
            </ul>
          </td>
        </tr> 
        <tr>
            <td colspan="2">
                 <table border="1" align="center" id="table2">
                 <tr class="left-left">
                 <th colspan="4" align="left">
                    Education
                </th>
                 </tr>

                 <tr align="center">
                        <th class="gray">
                            Board
                        </th>
                        <th>
                            Tenure
                        </th>
                        <th>
                            Educational institution
                        </th>
                        <th>
                            CGPA/Percentage
                        </th>
                    </tr>

                 
                 <!-- Display education information -->
                <?php
                   if ($resultEducation->num_rows > 0) {
                       while ($rowEducation = $resultEducation->fetch_assoc()) {
                          echo '<tr align="center">';
                          echo '<td class="gray">' . sanitizeOutput($rowEducation['board']) . '</td>';
                          echo '<td>' . sanitizeOutput($rowEducation['tenure']) . '</td>';
                          echo '<td>' . sanitizeOutput($rowEducation['institution']) . '</td>';
                          echo '<td>' . sanitizeOutput($rowEducation['cgpa']) . '</td>';
                         }
                     } else {
                    echo '<td colspan="4">No education information found.</td>';
                    }
                ?>
            </tr>

            <!-- ... (existing HTML template) ... -->

            <tr class="left-left">
            <th colspan="4" align="left">
                ACADEMIC PROJECTS
            </th>
            </tr>

<?php
// Fetch academic projects information from the database
$sqlProjects = "SELECT * FROM academic_projects_info WHERE student_id = $studentID";
$resultProjects = $conn->query($sqlProjects);

// Display academic projects
if ($resultProjects->num_rows > 0) {
    while ($rowProject = $resultProjects->fetch_assoc()) {
        ?>
        <tr>
            <td class="gray"><?php echo sanitizeOutput($rowProject['projectDomain']); ?></td>
            <td colspan="3">
                <ul>
                    <li><b><?php echo sanitizeOutput($rowProject['projectName']); ?> </b></li>
                    <ul>
                        <li>Description: <?php echo sanitizeOutput($rowProject['projectDescription']); ?></li>
                        <li>Technology: <?php echo sanitizeOutput($rowProject['projectTechnology']); ?></li>
                        <li>Role: <?php echo sanitizeOutput($rowProject['projectRole']); ?></li>
                        <li>Link: <?php echo sanitizeOutput($rowProject['projectLink']); ?></li>
                    </ul>
                </ul>
            </td>
        </tr>
        <?php
    }
} else {
    echo '<tr><td colspan="4">No academic projects found.</td></tr>';
}
?>
 <tr style="height: 20px;">

</tr>

<tr class="left-left">
    <th colspan="4" align="left">INTERNSHIP</th>
</tr>

<?php
// Fetch internship information from the database
$sqlInternships = "SELECT * FROM internship_info WHERE student_id = $studentID";
$resultInternships = $conn->query($sqlInternships);

// Display internship details
if ($resultInternships->num_rows > 0) {
    while ($rowInternship = $resultInternships->fetch_assoc()) {
        ?>
        <tr>
            <td class="gray">
                <?php
                // Display internship details
                echo sanitizeOutput($rowInternship['internship_name'] );
                ?>
            </td>
            <td colspan="3">
                <ul>
                    <li><b><?php echo sanitizeOutput($rowInternship['project_name']); ?>:</b></li>
                    <?php echo sanitizeOutput($rowInternship['project_description']); ?>
                </ul>
            </td>
        </tr>
        <?php
    }
} else {
    echo '<tr><td colspan="4">No internship information found.</td></tr>';
}
?>
            <!-- ... Continue populating the rest of your HTML template with retrieved data ... -->
<tr style="height: 20px;">
 
</tr>
       
 <tr class="left-left">
    <th colspan="4" align="left">CO-CURRICULARS</th>
</tr>

<?php
// Fetch co-curricular information from the database
$sqlCoCurriculars = "SELECT * FROM co_curriculars_info WHERE student_id = $studentID";
$resultCoCurriculars = $conn->query($sqlCoCurriculars);
echo '  <tr><td class="gray"> Coding</td>
            <td colspan="3">
                <ul>';
// Display co-curricular details
if ($resultCoCurriculars->num_rows > 0) {
    while ($rowCoCurricular = $resultCoCurriculars->fetch_assoc()) {
        ?>
       
            
                     <li>
                        <?php echo sanitizeOutput($rowCoCurricular['coding_activity']); ?>
                     </li>
                
        <?php
    }
} else {
    echo '</ul> No co-curricular information found
    </td>
    </tr>';
}  
?>
<tr style="height: 20px;">
                        
                        </tr>
                        
<tr class="left-left">
    <th colspan="4" align="left">EXTRA-CURRICULARS AND ACHIEVEMENTS</th>
</tr>

<?php
// Fetch extra-curriculars and achievements information from the database
$sqlAchievements = "SELECT * FROM extra_curriculars_info WHERE student_id = $studentID";
$resultAchievements = $conn->query($sqlAchievements);
echo'<tr>
<td class="gray"> Responsibilities</td>
<td colspan="3">
<ul>

';
// Display achievements details
if ($resultAchievements->num_rows > 0) {
    while ($rowAchievement = $resultAchievements->fetch_assoc()) {
        ?>
        
            
                    <li>
                        <?php echo sanitizeOutput($rowAchievement['responsibilities']); ?>
                    </li>
               
        <?php
    }
} else {
    echo '</ul>
    No extra-curriculars and achievements found. 
    </td>
    </tr>';
}

?>

<tr style="height: 20px;">
                        
                        </tr>

                        
<tr class="left-left">
    <th colspan="4" align="left">ADDITIONAL INFORMATION</th>
</tr>

<?php
// Fetch additional information from the database (e.g., hobbies)
$sqlAdditionalInfo = "SELECT * FROM hobbies_info WHERE student_id = $studentID";
$resultAdditionalInfo = $conn->query($sqlAdditionalInfo);
echo' <tr>
<td class="gray"> Hobbies</td>
<td colspan="3">
    <ul>';
// Display additional information details
if ($resultAdditionalInfo->num_rows > 0) {
    while ($rowAdditionalInfo = $resultAdditionalInfo->fetch_assoc()) {
        ?>
        
        <li><?php echo sanitizeOutput($rowAdditionalInfo['hobbies']); ?></li>
            
                
        <?php
    }
} else {
    echo ' </ul>
    No additional information found.</td>
</tr> <tr>';
}
?>

<tr>
    <td class="gray">Languages</td>
    <td colspan="3">
        <ul>
            <?php
            // Fetch languages information from the database
            $sqlLanguages = "SELECT * FROM languages_info WHERE student_id = $studentID";
            $resultLanguages = $conn->query($sqlLanguages);

            // Display languages details
            if ($resultLanguages->num_rows > 0) {
                while ($rowLanguage = $resultLanguages->fetch_assoc()) {
                    ?>
                    <li><?php echo sanitizeOutput($rowLanguage['language']); ?></li>
                    <?php
                }
            } else {
                echo '<li>No language information found.</li>';
            }
            ?>
        </ul>
    </td>
</tr>
       
        </table>
        </td>

</tr>
</table>

    </body>

    </html>
    <?php
} else {
    echo "No data found for the given student ID.";
}

$conn->close();
?>
