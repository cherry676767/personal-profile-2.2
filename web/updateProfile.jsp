
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.profile.model.ProfileBean" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>

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
            background-repeat: no-repeat;
            font-family: 'Fredoka', sans-serif !important;
            min-height: 100vh;
        }

        /* Main container */
        .edit-container {
            max-width: 550px;
            margin: auto;
        }

        /* Edit card */
        .edit-card {
            background-color: rgba(255, 255, 255, 0.95) !important;
            border: 2px solid #ffc0cb !important;
            border-radius: 20px !important;
            box-shadow: 0 8px 30px rgba(255, 182, 193, 0.3) !important;
            padding: 30px !important;
        }

        /* Heading */
        .edit-title {
            color: #e75480 !important;
            font-family: 'Fredoka', sans-serif !important;
            font-size: 27px;
            font-weight: 600;
        }

        /* Labels */
        .form-label {
            color: #d87093 !important;
            font-size: 14px;
            font-weight: 600;
        }

        /* Input fields */
        .form-control {
            border: 1.5px solid #ffc0cb !important;
            border-radius: 10px !important;
            padding: 10px 12px !important;
            font-family: 'Fredoka', sans-serif !important;
            font-size: 14px !important;
        }

        .form-control:focus {
            border-color: #ff91af !important;
            box-shadow: 0 0 0 0.25rem rgba(255, 145, 175, 0.2) !important;
        }

        /* Read-only Student ID */
        .form-control:read-only {
            background-color: #fff0f5 !important;
            color: #a63d60;
        }

        /* Save Changes button */
        .btn-pink {
            background-color: #ff91af !important;
            border: 1px solid #ff91af !important;
            color: white !important;
            border-radius: 25px !important;
            padding: 11px !important;
            font-family: 'Fredoka', sans-serif !important;
            font-size: 16px !important;
            font-weight: 600 !important;
            transition: all 0.3s ease;
        }

        .btn-pink:hover {
            background-color: #e75480 !important;
            border-color: #e75480 !important;
            color: white !important;
            transform: translateY(-2px);
        }

    </style>
</head>

<body class="py-5">

    <div class="container edit-container">

        <div class="card edit-card">

            <h4 class="edit-title fw-bold mb-4 text-center">
                <i class="bi bi-pencil-square"></i>
                Update My Profile
                <i class="bi bi-stars"></i>
            </h4>

            <% ProfileBean p = (ProfileBean) request.getAttribute("profile");
               if(p != null) { %>

                <form action="UpdateProfileServlet" method="POST">

                    <div class="mb-3">
                        <label class="form-label">Student ID (Read-only)</label>
                        <input type="text" name="studentID"
                               class="form-control"
                               value="<%= p.getStudentID() %>" readonly>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Name</label>
                        <input type="text" name="name"
                               class="form-control"
                               value="<%= p.getName() %>" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Programme</label>
                        <input type="text" name="programme"
                               class="form-control"
                               value="<%= p.getProgramme() %>" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input type="email" name="email"
                               class="form-control"
                               value="<%= p.getEmail() %>" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Hobbies</label>
                        <input type="text" name="hobbies"
                               class="form-control"
                               value="<%= p.getHobbies() %>" required>
                    </div>

                    <div class="mb-4">
                        <label class="form-label">Short Self Introduction</label>
                        <textarea name="introduction"
                                  class="form-control"
                                  rows="3" required><%= p.getIntroduction() %></textarea>
                    </div>

                    <button type="submit"
                            class="btn btn-pink w-100">
                        <i class="bi bi-heart-fill"></i>
                        Save Changes
                    </button>

                </form>

            <% } %>

        </div>

    </div>

</body>
</html>
