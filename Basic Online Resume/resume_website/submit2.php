<?php

$targetDirectory = __DIR__ . "/uploads/";

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "resume";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function sanitizeInput($data) {
    return htmlspecialchars(stripslashes(trim($data)));
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Process and sanitize personal information
    $name = sanitizeInput($_POST["name"]);
    $regNumber = sanitizeInput($_POST["regNumber"]);
    $email = sanitizeInput($_POST["email"]);
    $phone = sanitizeInput($_POST["phone"]);
    $linkedin = sanitizeInput($_POST["linkedin"]);
    $github = sanitizeInput($_POST["github"]);
    $portfolio = sanitizeInput($_POST["portfolio"]);

    // Handle file upload
    $targetFile = $targetDirectory . basename($_FILES["photo"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

    // Check if the file is an actual image
    $check = getimagesize($_FILES["photo"]["tmp_name"]);
    if ($check === false) {
        echo "File is not an image.";
        $uploadOk = 0;
    }

    // Check file size
    if ($_FILES["photo"]["size"] > 500000) {
        echo "Sorry, your file is too large.";
        $uploadOk = 0;
    }

    // Allow only certain file formats
    if (!in_array($imageFileType, ["jpg", "jpeg", "png", "gif"])) {
        echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
        $uploadOk = 0;
    }

    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        echo "Sorry, your file was not uploaded.";
    } else {
        // If everything is ok, try to upload file
          if (move_uploaded_file($_FILES["photo"]["tmp_name"], $targetFile)) {
            // Save the path to the database
              $photoPath = basename($_FILES["photo"]["name"]);

             // $imageData = file_get_contents($_FILES["photo"]["tmp_name"],$targetFile);


            // Insert into student_info table
            $sqlStudent = "INSERT INTO student_info1 (photo, name, regNumber, email, phone, linkedin, github, portfolio) 
                           VALUES ('$photoPath', '$name', '$regNumber', '$email', '$phone', '$linkedin', '$github', '$portfolio')";

            if ($conn->query($sqlStudent) === TRUE) {
                $studentID = $conn->insert_id;

               
                 
                // Add these lines after processing the form data but before the foreach loops

// var_dump($_POST["technicalSkills"]);
// var_dump($_POST["certification"]);


               // Insert into technical skills table
$technicalSkills = isset($_POST["technicalSkills"]) ? $_POST["technicalSkills"] : array();
$stmtTechnicalSkills = $conn->prepare("INSERT INTO technical_skills_info (student_id, technical_skill) VALUES (?, ?)");
$stmtTechnicalSkills->bind_param("is", $studentID, $skill);

foreach ($technicalSkills as $technicalSkill) {
    $skill = sanitizeInput($technicalSkill);
    $stmtTechnicalSkills->execute();
}

$stmtTechnicalSkills->close();

// Insert into certifications table
$certifications = isset($_POST["certification"]) ? $_POST["certification"] : array();
$stmtCertifications = $conn->prepare("INSERT INTO certifications_info (student_id, certification) VALUES (?, ?)");
$stmtCertifications->bind_param("is", $studentID, $certification);

foreach ($certifications as $certification) {
    $certifica = sanitizeInput($certification);
    $stmtCertifications->execute();
}
$stmtCertifications->close();

// Insert into education_info1 table
$educations = isset($_POST["education"]) ? $_POST["education"] : array();
$stmtEducation = $conn->prepare("INSERT INTO education_info1 (student_id, board, tenure, institution, cgpa) VALUES (?, ?, ?, ?, ?)");
$stmtEducation->bind_param("issss", $studentID, $board, $tenure, $institution, $cgpa);

foreach ($educations as $education) {
    $board = sanitizeInput($education['board']);
    $tenure = sanitizeInput($education['tenure']);
    $institution = sanitizeInput($education['institution']);
    $cgpa = sanitizeInput($education['cgpa']);
    
    $stmtEducation->execute();
}

$stmtEducation->close();

// Insert into academic_projects table
$academicProjects = isset($_POST["projectName"]) ? $_POST["projectName"] : array();
$stmtProjects = $conn->prepare("INSERT INTO academic_projects_info (student_id, projectDomain, projectName, projectDescription, projectTechnology, projectRole, projectLink) VALUES (?, ?, ?, ?, ?, ?, ?)");
$stmtProjects->bind_param("issssss", $studentID, $projectDomain, $projectName, $projectDescription, $projectTechnology, $projectRole, $projectLink);

foreach ($academicProjects as $key => $project) {
    $projectDomain = sanitizeInput($_POST["projectDomain"][$key]);
    $projectName = sanitizeInput($project);
    $projectDescription = sanitizeInput($_POST["projectDescription"][$key]);
    $projectTechnology = sanitizeInput($_POST["projectTechnology"][$key]);
    $projectRole = sanitizeInput($_POST["projectRole"][$key]);
    $projectLink = sanitizeInput($_POST["projectLink"][$key]);

    $stmtProjects->execute();
}

$stmtProjects->close();

// Insert into internship_info table
$internships = isset($_POST["internshipName"]) ? $_POST["internshipName"] : array();
$stmtInternship = $conn->prepare("INSERT INTO internship_info (student_id, internship_name, project_name, project_description) VALUES (?, ?, ?, ?)");
$stmtInternship->bind_param("isss", $studentID, $internshipName, $projectName, $projectDescription);

foreach ($internships as $key => $internship) {
    $internshipName = sanitizeInput($internship);
    $projectName = sanitizeInput($_POST["internshipProjectName"][$key]);
    $projectDescription = sanitizeInput($_POST["internshipProjectDescription"][$key]);

    $stmtInternship->execute();
}

// Insert into addCodingField table
$coding = isset($_POST["coding"]) ? $_POST["coding"] : array();
$stmtcoding = $conn->prepare("INSERT INTO co_curriculars_info (student_id, coding_activity) VALUES (?, ?)");
$stmtcoding->bind_param("is", $studentID, $codingActivity);

foreach ($coding as $coding) {
    $codingActivity = sanitizeInput($coding);
    $stmtcoding->execute();
}

$stmtcoding->close();

// Insert into Extra-curriculars and Achievements Information
$responsibility = isset($_POST["responsibilities"]) ? $_POST["responsibilities"] : array();
$stmtresponsibility = $conn->prepare("INSERT INTO extra_curriculars_info (student_id, responsibilities) VALUES (?, ?)");
$stmtresponsibility->bind_param("is", $studentID, $responsibilities);

foreach ($responsibility as $responsibility) {
    $responsibilities = sanitizeInput($responsibility);
    $stmtresponsibility->execute();
}

$stmtresponsibility->close();

// Insert into Hobbies
$hobbies = isset($_POST["hobbies"]) ? $_POST["hobbies"] : array();
$stmthobbies = $conn->prepare("INSERT INTO hobbies_info(student_id, hobbies	) VALUES (?, ?)");
$stmthobbies->bind_param("is", $studentID, $hobbies	);

foreach ($hobbies as $hobbie) {
    $hobbies = sanitizeInput($hobbie);
    $stmthobbies->execute();
}

$stmthobbies->close();

// Insert into Languages
$languages = isset($_POST["languages"]) ? $_POST["languages"] : array();
$stmtlanguages = $conn->prepare("INSERT INTO languages_info (student_id, language) VALUES (?, ?)");
$stmtlanguages->bind_param("is", $studentID, $languages);

foreach ($languages as $language) {
    $languages = sanitizeInput($language);
    $stmtlanguages->execute();
}

$stmtlanguages->close();

echo "Record inserted successfully!";
// Redirect to resume.php after successful insertion
header("Location: resume.php?studentID=$studentID");

            } else {
                echo "Error: " . $sqlStudent . "<br>" . $conn->error;
            }
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    }

    $conn->close();
}
?>


