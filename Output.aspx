<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Output.aspx.cs" Inherits="Project1_18_09_21.Output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            width: 124px;
        }
        .auto-style2 {
            width: 333px;
        }
        .auto-style3 {
            width: 44%;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Tính lương nhân viên: </h1>
               <%
                   string emcode = Request.Form["emcode"];
                   string name = Request.Form["name"];
                   string gender = Request.Form["gender"];
                   string postition = Request.Form["postition"];
                   string day = Request.Form["day"];
                   string salary = Request.Form["salary"];
                   string s = "";
                   string p1 = Request.Form["p1"];
                   string reward = "";
                   string sumSal = "";
                   CheckBoxList chkforeign = (CheckBoxList)PreviousPage.FindControl("foreign");

                   foreach (ListItem item in chkforeign.Items)
                   {
                       if (item.Selected)
                           s = s + item.Text + " - ";
                   }
                   
                   
               %>
                
               <table class="auto-style3">
                   <tr>
                         <td class="auto-style1">Mã nhân viên</td>
                         <td class="auto-style2"><%= emcode%></td>
                    </tr>
                    <tr>
                         <td class="auto-style1">Họ tên:</td>
                         <td class="auto-style2"><%= name%></td>
                    </tr>
                    <tr>
                         <td class="auto-style1">Giới tính:</td>
                         <td class="auto-style2"><%= gender%></td>
                    </tr>
                    <tr>
                         <td class="auto-style1">Ngoại ngữ:</td>
                         <td class="auto-style2"><%= s%></td>
                    </tr>
                    <tr>
                         <td class="auto-style1">Bậc lương:</td>
                         <td class="auto-style2"><%= salary%></td>
                    </tr>
                   <tr>
                         <td class="auto-style1">Lương cơ bản:</td>
                         <td class="auto-style2">800,000</td>
                    </tr>
                   <tr>
                         <td class="auto-style1">Ngày công:</td>
                         <td class="auto-style2"><%= day%></td>
                    </tr>
                   <tr>
                         <td class="auto-style1">Chức vụ:</td>
                         <td class="auto-style2"><%= postition%></td>
                    </tr>
                   <tr>
                         <td class="auto-style1">Phụ cấp:</td>
                         <td class="auto-style2"><%= p1%></td>
                    </tr>
                   <tr>
                         <td class="auto-style1">Thưởng:</td>
                         <td class="auto-style2"><%= reward%></td>
                    </tr>
                   <tr>
                         <td class="auto-style1">Tổng lương:</td>
                         <td class="auto-style2"><%= sumSal%></td>
                    </tr>
               </table>
             <hr />
        </div>
    </form>
</body>
</html>
