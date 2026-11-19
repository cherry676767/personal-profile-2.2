
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.profile.model.ProfileBean" %>

<!DOCTYPE html>
<html>
<head>
    <title>All Profiles</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Cute Font -->
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@400;500;600;700&display=swap" rel="stylesheet">

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
            background-attachment: fixed;
            font-family: 'Fredoka', sans-serif !important;
            min-height: 100vh;
        }

        /* Main container */
        .container {
            max-width: 1000px !important;
        }

        /* Page heading */
        .page-title {
            color: #e75480 !important;
            font-size: 27px;
            font-weight: 600;
        }

        /* Profile cards */
        .profile-card {
            background-color: #ffffff !important;
            border: 2px solid #ffc0cb !important;
            border-radius: 18px !important;
            overflow: hidden;
            box-shadow: 0 8px 25px rgba(255, 182, 193, 0.25) !important;
            transition: all 0.3s ease;
        }

        .profile-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 12px 28px rgba(255, 145, 175, 0.3) !important;
        }

        /* Profile header */
        .profile-header {
            background-color: #ffb6c8 !important;
            color: #8f3154 !important;
            padding: 20px !important;
            border: none !important;
        }

        .profile-name {
            color: #8f3154 !important;
            font-size: 20px;
            font-weight: 600;
        }

        /* Student ID */
        .id-badge {
            background-color: #ffe4ec !important;
            color: #d94f7b !important;
            font-size: 12px;
            font-weight: 500;
            padding: 6px 12px;
            border-radius: 20px;
        }

        /* Profile details */
        .profile-body {
            background-color: white !important;
            padding: 22px !important;
            color: #555555;
        }

        .profile-body p {
            font-size: 14px;
            margin-bottom: 10px;
        }

        .profile-body strong {
            color: #d87093;
        }

        .introduction {
            color: #888888;
            font-style: italic;
        }

        /* Card footer */
        .profile-footer {
            background-color: white !important;
            border: none !important;
            padding: 0 22px 20px !important;
        }

        /* Add Profile and Back to Home */
        .btn-pink {
            background-color: #ff91af !important;
            border: 1px solid #ff91af !important;
            color: white !important;
            border-radius: 25px !important;
            padding: 9px 20px !important;
            font-family: 'Fredoka', sans-serif !important;
            font-weight: 600;
            text-decoration: none;
            transition: 0.3s ease;
        }

        .btn-pink:hover {
            background-color: #e75480 !important;
            border-color: #e75480 !important;
            color: white !important;
            transform: translateY(-2px);
        }

        /* Edit button */
        .btn-edit {
            background-color: #ffc0cb !important;
            border: 1px solid #ffc0cb !important;
            color: #8f3154 !important;
            border-radius: 25px !important;
            padding: 7px 20px !important;
            font-family: 'Fredoka', sans-serif !important;
            font-weight: 500;
        }

        .btn-edit:hover {
            background-color: #ff91af !important;
            color: white !important;
        }

        /* Delete button */
        .btn-delete {
            background-color: #e75480 !important;
            border: 1px solid #e75480 !important;
            color: white !important;
            border-radius: 25px !important;
            padding: 7px 20px !important;
            font-family: 'Fredoka', sans-serif !important;
            font-weight: 500;
        }

        .btn-delete:hover {
            background-color: #c74370 !important;
            color: white !important;
        }

        /* No profiles message */
        .alert-info {
            background-color: #ffe4ec !important;
            border: 1.5px solid #ffc0cb !important;
            color: #a63d60 !important;
            border-radius: 15px !important;
            padding: 18px;
        }

        /* Mobile layout */
        @media (max-width: 576px) {
            .page-title {
                font-size: 21px;
            }

            .top-buttons {
                margin-top: 15px;
            }
        }

    </style>
</head>

<body class="py-5">

    <div class="container">

        <!-- Page Heading and Navigation -->
        <div class="d-flex flex-wrap justify-content-between align-items-center mb-4">

            <h3 class="page-title mb-0">
                <i class="bi bi-hearts"></i>
                Student Profiles Details
            </h3>

            <div class="d-flex gap-2 top-buttons">

                <a href="index.html" class="btn btn-pink">
                    <i class="bi bi-plus-circle"></i> Add Profile
                </a>

                <a href="index.html" class="btn btn-pink">
                    <i class="bi bi-house-heart-fill"></i> Back to Home
                </a>

            </div>

        </div>

        <!-- Profile Cards -->
        <div class="row g-4">

            <%
                List<ProfileBean> list =
                    (List<ProfileBean>) request.getAttribute("profileList");

                if (list != null && !list.isEmpty()) {

                    for (ProfileBean p : list) {
            %>

                <div class="col-md-6">

                    <div class="card profile-card h-100">

                        <!-- Profile Header -->
                        <div class="profile-header">

                            <h5 class="profile-name mb-2 text-truncate">
                                <%= p.getName() %>
                            </h5>

                            <span class="badge id-badge">
                                <i class="bi bi-person-badge"></i>
                                Student ID: <%= p.getStudentID() %>
                            </span>

                        </div>

                        <!-- Profile Information -->
                        <div class="card-body profile-body">

                            <p>
                                <strong>Programme:</strong>
                                <%= p.getProgramme() %>
                            </p>

                            <p>
                                <strong>Email:</strong>
                                <%= p.getEmail() %>
                            </p>

                            <p>
                                <strong>Hobbies:</strong>
                                <%= p.getHobbies() %>
                            </p>

                            <p class="introduction mb-0 mt-3 text-center">
                                "<%= p.getIntroduction() %>"
                            </p>

                        </div>

                        <!-- Edit and Delete Buttons -->
                        <div class="card-footer profile-footer d-flex justify-content-between">

                            <a href="EditProfileServlet?studentID=<%= p.getStudentID() %>"
                               class="btn btn-edit btn-sm">

                                <i class="bi bi-pencil-square"></i> Edit

                            </a>

                            <a href="DeleteProfileServlet?studentID=<%= p.getStudentID() %>"
                               class="btn btn-delete btn-sm"
                               onclick="return confirm('Delete profile?');">

                                <i class="bi bi-trash3"></i> Delete

                            </a>

                        </div>

                    </div>

                </div>

            <%
                    }

                } else {
            %>

                <div class="col-12">

                    <div class="alert alert-info text-center fw-bold">
                        <i class="bi bi-heart"></i>
                        No profiles found.
                    </div>

                </div>

            <%
                }
            %>

        </div>

    </div>

</body>
</html>
