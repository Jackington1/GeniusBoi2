<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_in.aspx.cs" Inherits="JARTraining2.WebForm1" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        /* Set a style for all buttons */
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

            button:hover {
                opacity: 0.8;
            }

        /* Extra styles for the cancel button */
        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        /* Center the image and position the close button */
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
            position: relative;
        }

        img.avatar {
            width: 40%;
            /* border-radius: 50%; */
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            padding-top: 60px;
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
        }

        /* The Close Button (x) */
        .close {
            position: absolute;
            right: 25px;
            top: 0;
            color: #000;
            font-size: 35px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: red;
                cursor: pointer;
            }

        /* Add Zoom Animation */
        .animate {
            -webkit-animation: animatezoom 0.6s;
            animation: animatezoom 0.6s
        }

        @-webkit-keyframes animatezoom {
            from {
                -webkit-transform: scale(0)
            }

            to {
                -webkit-transform: scale(1)
            }
        }

        @keyframes animatezoom {
            from {
                transform: scale(0)
            }

            to {
                transform: scale(1)
            }
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }

            .cancelbtn {
                width: 100%;
            }
        }
    </style>

    <style>
        @import "compass/css3";

        $padding-horizontal:20px;
        $highlight-color:#16abf0;
        body {
            background: #34495e;
            color: white;
            text-align: center;
            font-family: Helvetica, Arial, sans-serif;
            font-size: 10pt;
        }

        h1 {
            font-size: 3em;
        }

        a {
            color: inherit;
        }

        form {
            width: 500px;
            margin: 0 auto;
            background: white;
            border-radius: 10px;
            margin-bottom: 20px;
            //padding:20px;
        }

        input, .floating-placeholder {
            font-family: Helvetica, Arial, sans-serif;
            font-size: 20pt;
            line-height: 2.6em;
            height: 2.6em;
            margin: 0;
            padding: 0;
            width: 100%;
        }

            .floating-placeholder input:focus + label {
                color: $highlight-color;
            }

            .floating-placeholder input[value] + label {
                color: red;
            }

        .floating-placeholder {
            position: relative;
        }

            .floating-placeholder input {
                font-size: 20pt;
                border: none;
                outline: none;
                position: absolute;
                top: 0;
                left: 0;
                display: block;
                background: transparent;
                z-index: 2;
                border-bottom: 1px solid #ccc;
                text-indent: $padding-horizontal;
            }

            .floating-placeholder:last-child input {
                border-bottom: none;
            }

            .floating-placeholder label {
                display: block;
                position: absolute;
                top: 0;
                left: $padding-horizontal;
                font-size: 20pt;
                z-index: 1;
                @include transform-origin(0,0.0em);
                @include transition(transform 160ms, color 200ms);
                @include transform(scale(1,1) rotateY(0));
                color: #999;
            }

        .floating-placeholder-float label {
            @include transform(scale(0.55,0.55) rotateY(0));
        }

        .floating-placeholder-float input {
            line-height: 3.4em;
        }

        .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
}

        .button4 {border-radius: 12px;}
    </style>

    <script>
        $(document).ready(function () {
  function updateText(event){
    var input=$(this);
    setTimeout(function(){
      var val=input.val();
      if(val!="")
        input.parent().addClass("floating-placeholder-float");
      else
        input.parent().removeClass("floating-placeholder-float");
    },1)
  }
  $(".floating-placeholder input").keydown(updateText);
  $(".floating-placeholder input").change(updateText);
        });

    </script>

</head>
<body>

    <h2 style="text-align: center">Skillz Boysss Login Form</h2>

    <button onclick="document.getElementById('id01').style.display='block'" style="width: auto text-align: center">Login</button>

    <button onclick="document.getElementById('id02').style.display='block'" style="width: auto text-align: center">Register</button>

    <div id="id01" class="modal">

        <form class="modal-content animate" id="form1" runat="server" action="Sign_in">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                <img src="img_avatar2.png" alt="Avatar" class="avatar">
            </div>

            <div class="container">

                <td style="text-align: center" class="auto-style3">
                    <asp:Label ID="lblUserN" runat="server" Font-Size="X-Large" Text="UserId :"></asp:Label>
                </td>
                <td style="text-align: center" class="auto-style2">
                    <asp:TextBox ID="txtUserN" runat="server" Font-Size="X-Large"></asp:TextBox>
                </td>

                <td style="text-align: center" class="auto-style3">
                    <asp:Label ID="lblPassword" runat="server" Font-Size="X-Large" Text="Password :"></asp:Label>
                </td>
                <td style="text-align: center" class="auto-style2">
                    <asp:TextBox ID="txtPassword" runat="server" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
                </td>

                <td class="auto-style3"></td>
                <td class="auto-style2">
                    <asp:Label ID="lblInvalid" runat="server" Font-Bold="True" ForeColor="Red" Text="Invalid Username/Password" Visible="false"></asp:Label>
                </td>

                <td class="auto-style3"></td>
                <td style="text-align: center" class="auto-style2">
                    <asp:Button ID="btnLogin" runat="server" BorderStyle="None" Font-Size="X-Large" OnClick="btnSubmit_Click" Text="Log In" />
                </td>

                <td class="auto-style3"></td>
                <td class="auto-style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JAR_trainingConnectionString %>" SelectCommand="SELECT [User_Name], [Password] FROM [user_id_t]"></asp:SqlDataSource>
                </td>

            </div>


            <div class="container" style="background-color: #f1f1f1">
                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
        </form>
    </div>

    <div id="id02" class="modal">
        <form class="modal-content animate" id="form2" action="Sign_in">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                <img src="img_avatar3.png" alt="Avatar" class="avatar">
                <br />
                <form>
                    <div class="floating-placeholder">
                        <input id="name" name="name" type="text" />
                        <label for="name">First Name</label>
                    </div>
                    <div class="floating-placeholder">
                        <input id="address" name="address" type="text" />
                        <label for="address">Second Name</label>
                    </div>
                    <div class="floating-placeholder">
                        <input id="city" name="city" type="text" />
                        <label for="city">Desired Username</label>
                    </div>
                    <div class="floating-placeholder">
                        <input id="password" name="password" type="password" />
                        <label for="password">Password</label>
                    </div>
                    <button class="button button4">Enter</button>
                </form>

            </div>
    </div>






    <script>
        // Get the modal
        var modal = document.getElementById('id01');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        // Get the modal
        var modal = document.getElementById('id02');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>

</body>
</html>






<%--

<html>
<head>
    <title> Index </title>
</head>
<link rel="stylesheet" type="text/css" href="/static/css/mystyle2.css"/>
<body>Log In</body>

<form action="LogIn">
    UserName:<br>
    <input type="text" name="userName"> <br>
    Password: <input type="text" name="passWord"><br>
    <input type="submit" value="Submit">
</form>

</html>--%>
