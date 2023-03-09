<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Library._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="jumbotron">
        <h1 class="w3-xxxlarge w3-text-red"><b>This isn't the library we need, but the library we deserve</b></h1>
    </div>

    <div>
        <div >
            <h2>Welcome</h2>
            <p>
                Welcome to our great library. This library has all the books and CD that you are looking for. All of you are students who try find the best books for your courses.
                With great power comes great responsibility, that's why you want the best books to surpass any challenge in your course.
            </p>
        </div>
        <div>
            <h2><i>Start Reading</i></h2>
            <p>To see all the books and CD that this great library has go to the navigationbar on the right and click on items or click on the button bellow</p>
            <a runat="server" href="~/Account/Register" class="w3-bar-item w3-button w3-hover-white" style="border: thin solid #666666; background-color: #FFFF99; font-family: Roboto; font-size: medium; font-style: normal; font-weight: bolder;">Items</a>
        </div>
        <div style="font-family: Roboto; font-style: italic">
            <h2>Members Assemble!</h2>
            <div>
             <p>
                <a runat="server" href="~/Account/Register" class="w3-bar-item w3-button w3-hover-white" style="border: thin solid #666666; background-color: #66FFFF; font-family: Roboto; font-size: medium; font-style: normal; font-weight: bolder;">Register</a>
                 <a runat="server" href="~/Account/Login" class="w3-bar-item w3-button w3-hover-white" style="border: thin solid #666666; background-color: #66FFFF; font-family: Roboto; font-size: medium; font-style: normal; font-weight: bolder;" >Log in</a>
             </p>
            </div>
            <div >
            <h2>Contact Us</h2>
            <p>
                Email: a.saurabastida@gmail.com
            </p>
            <p>
                Twitter: arturosauraa
            </p>
            <p>
                FaceBook: A.SauraBastida
            </p>
        </div>
            <br />
            <br />
            <script>
                function redirect() {
                    location.href = '~/Account/Register';
                }
            </script>

    </div>

    </div>
</asp:Content>
