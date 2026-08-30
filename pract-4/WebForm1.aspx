<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="pract_4.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Event Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>Student Event Registration System</h2>

            Name:
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server"
                ControlToValidate="txtName"
                ErrorMessage="Enter Name"
                ForeColor="Red" />
            <br /><br />

            Enrollment No:
            <asp:TextBox ID="txtGR" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvGR" runat="server"
                ControlToValidate="txtGR"
                ErrorMessage="Enter Enrollment No"
                ForeColor="Red" />
            <br /><br />

            Age:
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="rvAge" runat="server"
                ControlToValidate="txtAge"
                MinimumValue="18"
                MaximumValue="60"
                Type="Integer"
                ErrorMessage="Age must be 18-60"
                ForeColor="Red" />
            <br /><br />

            Select Event:
            <asp:DropDownList ID="ddlEvent" runat="server">
                <asp:ListItem>Select Event</asp:ListItem>
                <asp:ListItem>Tech Talk</asp:ListItem>
                <asp:ListItem>Project Expo</asp:ListItem>
                <asp:ListItem>Coding Contest</asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            Department:
            <br />
            <asp:CheckBoxList ID="cblBranch" runat="server">
                <asp:ListItem>Computer</asp:ListItem>
                <asp:ListItem>IT</asp:ListItem>
                <asp:ListItem>Electrical</asp:ListItem>
                <asp:ListItem>Mechanical</asp:ListItem>
            </asp:CheckBoxList>
            <br />

            Gender:
            <br />
            <asp:RadioButtonList ID="rblGender" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <br />

            Email:
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Enter Email"
                ForeColor="Red" />
            <br /><br />

            Password:
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="Enter Password"
                ForeColor="Red" />
            <br /><br />

            Confirm Password:
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="cvPassword" runat="server"
                ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword"
                ErrorMessage="Password does not match"
                ForeColor="Red" />
            <br /><br />

            Event Date:
            <br />
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />

            <asp:Button ID="btnRegister" runat="server"
                Text="Register"
                OnClick="btnRegister_Click" />
            <br /><br />

            <asp:ValidationSummary ID="ValidationSummary1"
                runat="server"
                ForeColor="Red" />
            <br />

            <asp:Label ID="lblMessage" runat="server"
                ForeColor="Green"></asp:Label>

        </div>
    </form>
</body>
</html>
