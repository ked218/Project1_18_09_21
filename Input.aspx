<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Input.aspx.cs" Inherits="Project1_18_09_21.Input" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        label{
            width:120px;
            float: left;
        }
        h2{
            color:blue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Thông tin nhân viên</h2>
            <p>
                <label>Mã nhân viên</label>
                <asp:TextBox ID="emcode" runat="server" />
            </p>
            <p>
                <label>Họ tên</label>
                <asp:TextBox ID="name" runat="server" />
            </p>
            <p>
                <label>Giới tính</label>
                <asp:RadioButtonList ID="gender" runat="server" Height="77px" Width="102px">
                    <asp:ListItem Text="Nam" value="Nam"/>
                    <asp:ListItem Text="Nữ" Value="Nữ" />
                </asp:RadioButtonList>
            </p>
            <p>
                <label>Ngoại ngữ</label>
                <asp:CheckBoxList ID="foreign" runat="server" Height="85px" Width="86px">
                    <asp:ListItem Text="Anh" Value="Eng" />
                    <asp:ListItem Text="Pháp" Value="Fre"/>
                    <asp:ListItem Text="Nga" Value="Rus"/>
                </asp:CheckBoxList>
            </p>
            <p>
                <label>Bậc lương</label>
                <asp:TextBox ID="salary" runat="server" Height="25px" />
            </p>
            <p>
                <label>Số ngày công</label>
                <asp:TextBox ID="day" runat="server" />
            </p>
            <p>
                <label>Chức vụ</label>
                <asp:DropDownList id="postition" runat="server">
                    <asp:ListItem Text="Trưởng phòng" Value="Trưởng phòng" />
                    <asp:ListItem Text="Phó phòng" Value="Phó phòng"/>
                    <asp:ListItem Text="Nhân viên" Value="Nhân viên"/>
                </asp:DropDownList>
            </p>
            <p>
                <asp:Button ID="b1" Text="Tính lương" runat="server" PostBackUrl="Output.aspx" />
                <asp:Button ID="b2" Text="Nhập lại" runat="server" />
            </p>
            <asp:Label Text="tieude" ForeColor="Blue" Font-Size="Large" Font-Bold="true" runat="server" /> <br />
            <asp:Label Text="lblemcode" Font-Size="Large" runat="server" /> <br />
            <asp:Label Text="lblname" Font-Size="Large" runat="server" /> <br />
            <asp:Label Text="lblgender" Font-Size="Large" runat="server" /> <br />
            <asp:Label Text="lblforeign" Font-Size="Large" runat="server" /> <br />
            <asp:Label Text="lblsalary" Font-Size="Large" runat="server" /> <br />
            <asp:Label Text="lblday" Font-Size="Large" runat="server" /> <br />
            <asp:Label Text="lblpostition" Font-Size="Large" runat="server" /> <br />

        </div>
    </form>
</body>
</html>
