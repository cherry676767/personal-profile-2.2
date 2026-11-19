
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.profile.model.ProfileBean" %>

<!DOCTYPE html>
<html>
<head>
    <title>Profile Saved</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Cute Font -->
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@400;500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="style.css" type="text/css"/>

    <style>

        /* Background */
        body {
            background-color: #fff0f5 !important;
            background-image: linear-gradient(
                135deg,
                #fff0f5,
                #ffe4ec,
                #fff0f5
            ) !important;
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
            font-family: 'Fredoka', sans-serif !important;
            min-height: 100vh;
        }

        /* Main container */
        .success-container {
            max-width: 500px;
            margin: auto;
        }

        /* Success card */
        .custom-card-success {
            background-color: rgba(255, 255, 255, 0.95) !important;
            border: 2px solid #ffc0cb !important;
            border-radius: 20px !important;
            box-shadow: 0 8px 32px rgba(255, 182, 193, 0.3) !important;
            padding: 30px !important;
        }

        /* Success notification */
        .success-message {
            background-color: #ffe4ec !important;
            border: 1.5px solid #ffc0cb !important;
            color: #d94f7b !important;
            border-radius: 12px !important;
            font-family: 'Fredoka', sans-serif !important;
            font-weight: 600;
            padding: 13px !important;
        }

        /* Student name */
        .student-name {
            color: #e75480 !important;
            font-family: 'Fredoka', sans-serif !important;
            font-size: 27px;
            font-weight: 600;
        }

        /* Student ID badge */
        .id-badge-success {
            background-color: #ffe4ec !important;
            color: #d94f7b !important;
            font-size: 14px;
            font-weight: 600;
            display: inline-block;
            border-radius: 20px;
        }

        /* Profile details */
        .profile-details {
            font-family: 'Fredoka', sans-serif !important;
            font-size: 14px;
            color: #555555;
        }

        .profile-details strong {
            color: #d87093;
        }

        .programme-text {
            color: #d87093 !important;
        }

        .introduction {
            color: #888888 !important;
            font-style: italic;
        }

        /* Divider */
        .pink-divider {
            border-top: 1px dashed #ffc0cb;
            opacity: 1;
        }

        /* Back to Home button */
        .btn-pink-home {
            background-color: #ff91af !important;
            border: 1px solid #ff91af !important;
            color: white !important;
            font-family: 'Fredoka', sans-serif !important;
            font-size: 16px;
            font-weight: 600;
            padding: 11px !important;
            border-radius: 25px !important;
            transition: all 0.3s ease;
        }

        .btn-pink-home:hover {
            background-color: #e75480 !important;
            border-color: #e75480 !important;
            color: white !important;
            transform: translateY(-2px);
        }

    </style>
</head>

<body class="py-5">

    <div class="container text-center success-container">

        <div class="card border-0 custom-card-success">

            <!-- Success Message -->
            <div class="alert success-message">
                <i class="bi bi-heart-fill me-2"></i>
                Profile Saved Successfully!
                <i class="bi bi-stars ms-1"></i>
            </div>

            <% ProfileBean p = (ProfileBean) request.getAttribute("newProfile");
               if(p != null) { %>

                <!-- Student Name -->
                <h3 class="student-name mb-2">
                    <%= p.getName() %>
                </h3>

                <!-- Student ID -->
                <div class="my-3">

                    <span class="badge id-badge-success px-3 py-2">
                        <i class="bi bi-person-badge me-1"></i>
                        Student ID: <%= p.getStudentID() %>
                    </span>

                </div>

                <hr class="pink-divider">

                <!-- Student Information -->
                <div class="profile-details px-2 mt-3">

                    <p class="text-start mb-2">
                        <strong>Programme:</strong>
                        <span class="programme-text">
                            <%= p.getProgramme() %>
                        </span>
                    </p>

                    <p class="text-start mb-2">
                        <strong>Email:</strong>
                        <%= p.getEmail() %>
                    </p>

                    <p class="text-start mb-2">
                        <strong>Hobbies:</strong>
                        <%= p.getHobbies() %>
                    </p>

                    <p class="text-center introduction mt-4 mb-1">
                        "<%= p.getIntroduction() %>"
                    </p>

                </div>

            <% } %>

            <!-- Back to Home -->
            <a href="index.html"
               class="btn btn-pink-home mt-3 w-100 shadow-sm">

                <i class="bi bi-house-heart-fill me-1"></i>
                Back to Home

            </a>

        </div>

    </div>

</body>
</html>
