
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.profile.model.ProfileBean" %>

<!DOCTYPE html>
<html>
<head>
    <title>Search Profile</title>

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
            background-attachment: fixed;
            font-family: 'Fredoka', sans-serif !important;
            min-height: 100vh;
        }

        /* Main container */
        .container {
            max-width: 650px !important;
        }

        /* Search card */
        .search-box-card {
            background-color: rgba(255, 255, 255, 0.95) !important;
            border: 2px solid #ffc0cb !important;
            border-radius: 20px !important;
            box-shadow: 0 8px 30px rgba(255, 182, 193, 0.3) !important;
            padding: 30px !important;
        }

        /* Heading */
        .title-blue {
            color: #e75480 !important;
            font-family: 'Fredoka', sans-serif !important;
            font-size: 25px !important;
            font-weight: 600 !important;
        }

        /* Search input */
        .form-control {
            border: 1.5px solid #ffc0cb !important;
            border-radius: 12px !important;
            font-family: 'Fredoka', sans-serif !important;
            font-size: 15px !important;
            padding: 12px 15px !important;
        }

        .form-control:focus {
            border-color: #ff91af !important;
            box-shadow: 0 0 0 0.25rem rgba(255, 145, 175, 0.2) !important;
        }

        /* Search button */
        .btn-search-blue {
            background-color: #ff91af !important;
            border: 1px solid #ff91af !important;
            color: white !important;
            border-radius: 12px !important;
            font-family: 'Fredoka', sans-serif !important;
            font-weight: 600 !important;
            padding: 10px 25px !important;
        }

        .btn-search-blue:hover {
            background-color: #e75480 !important;
            border-color: #e75480 !important;
            color: white !important;
        }

        /* Back to Home */
        .link-blue {
            color: #e75480 !important;
            font-family: 'Fredoka', sans-serif !important;
            font-size: 14px !important;
            font-weight: 600 !important;
            text-decoration: none !important;
        }

        .link-blue:hover {
            color: #c74370 !important;
            text-decoration: underline !important;
        }

        /* Search result cards */
        .search-result-card {
            background-color: white !important;
            border: 2px solid #ffc0cb !important;
            border-radius: 18px !important;
            box-shadow: 0 8px 25px rgba(255, 182, 193, 0.25) !important;
            padding: 22px !important;
        }

        .search-result-card h4 {
            color: #e75480 !important;
            font-weight: 600 !important;
        }

        .search-result-card hr {
            border-top: 1px dashed #ffc0cb !important;
            opacity: 1;
        }

        .search-result-card p {
            font-size: 14px;
        }

        /* Student ID badge */
        .id-badge {
            background-color: #ffe4ec !important;
            color: #d94f7b !important;
            font-size: 12px;
        }

        /* No matching profiles */
        .alert-warning {
            background-color: #ffe4ec !important;
            border: 1.5px solid #ffc0cb !important;
            color: #a63d60 !important;
            border-radius: 15px !important;
            padding: 15px !important;
            font-family: 'Fredoka', sans-serif !important;
            font-weight: 500;
        }

    </style>
</head>

<body class="py-5">

    <div class="container">

        <!-- Search Form -->
        <div class="card search-box-card mb-4">

            <h4 class="fw-bold mb-4 text-center title-blue">
                <i class="bi bi-search-heart"></i>
                Search Student Profile
                <i class="bi bi-stars"></i>
            </h4>

            <form action="SearchProfileServlet" method="GET">

                <div class="input-group mb-3">

                    <input
                        type="text"
                        name="query"
                        class="form-control"
                        placeholder="Enter Student ID or Name..."
                        required>

                    <button class="btn btn-search-blue px-4" type="submit">
                        <i class="bi bi-search"></i> Search
                    </button>

                </div>

            </form>

            <div class="text-center mt-2">
                <a href="index.html" class="link-blue">
                    <i class="bi bi-house-heart-fill"></i>
                    Back to Home
                </a>
            </div>

        </div>

        <!-- Search Results -->

        <% List<ProfileBean> results = (List<ProfileBean>) request.getAttribute("searchResults");

           if (results != null) {

               if(!results.isEmpty()) {

                   for(ProfileBean p : results) { %>

                    <div class="card search-result-card mb-3">

                        <div class="d-flex justify-content-between align-items-center mb-2">

                            <h4 class="fw-bold mb-0">
                                <%= p.getName() %>
                            </h4>

                            <span class="badge id-badge rounded-pill px-3 py-2">
                                Student ID: <%= p.getStudentID() %>
                            </span>

                        </div>

                        <hr class="my-2">

                        <div class="mt-2">

                            <p class="mb-1">
                                <strong>Programme:</strong>
                                <span style="color: #d87093;">
                                    <%= p.getProgramme() %>
                                </span>
                            </p>

                            <p class="mb-1">
                                <strong>Email:</strong>
                                <%= p.getEmail() %>
                            </p>

                            <p class="mb-2">
                                <strong>Hobbies:</strong>
                                <span class="text-muted">
                                    <%= p.getHobbies() %>
                                </span>
                            </p>

                            <p class="mb-0 mt-3 text-center text-muted">
                                <i>"<%= p.getIntroduction() %>"</i>
                            </p>

                        </div>

                    </div>

               <% }

               } else { %>

                    <div class="alert alert-warning text-center fw-bold">
                        <i class="bi bi-heartbreak-fill"></i>
                        No matching profiles found.
                    </div>

        <% }

           } %>

    </div>

</body>
</html>
