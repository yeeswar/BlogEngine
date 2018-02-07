<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPost.aspx.cs" Inherits="AddPost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div>  
        <h1>Add Post</h1>  
        <label>Title</label>  
        <asp:TextBox ID="txtTitle" runat="server" TextMode="SingleLine"></asp:TextBox><br />  
        <label>Author</label>  
        <asp:TextBox ID="txtAuth" runat="server" TextMode="SingleLine"></asp:TextBox><br />  
        <label>Post Content</label>  
        <asp:TextBox ID="txtCont" runat="server" TextMode="MultiLine"></asp:TextBox><br />  
        <asp:Button ID="btnAdd" runat="server" Text="Add Post!" OnClick="btnAdd_Click"/>  
    </div>  
    </div>
    </form>
</body>
</html>
