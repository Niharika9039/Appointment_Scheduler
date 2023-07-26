<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Appointment_Scheduler.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <center>
        <asp:GridView ID="appointmentsGrid" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" HorizontalAlign="Center" 
            OnRowEditing="appointmentsGrid_RowEditing" 
            OnRowDeleting="appointmentsGrid_RowDeleting" 
            OnRowUpdating="appointmentsGrid_RowUpdating" 
            OnRowCancelingEdit="appointmentsGrid_RowCancelingEdit"
            OnRowDataBound="appointmentsGrid_RowDataBound"
            DataKeyNames="id"
            class="table table-bordered table-hover"
            AutoPostBack="True">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" />
                <asp:BoundField DataField="full_name" HeaderText="Full Name" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="client_name" HeaderText="Client Name" />
                <asp:BoundField DataField="date_time" HeaderText="Appointment Date &amp; Time" DataFormatString="{0:MM/dd/yyyy HH:mm}" />

                <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True">
                    <ControlStyle BackColor="#009933" BorderColor="#006600" BorderStyle="Solid" Font-Bold="True" ForeColor="White"/>
                </asp:CommandField>

                <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True">
                    <ControlStyle BackColor="Red" BorderColor="Maroon" BorderStyle="Solid" Font-Bold="True" ForeColor="White" />
                </asp:CommandField>
            </Columns>

            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle ForeColor="#4A3C8C" HorizontalAlign="Right" BackColor="#E7E7FF" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
            </center>
        <asp:Timer ID="timerAutoDelete" runat="server" Interval="60000" Enabled="true" OnTick="timerAutoDelete_Tick"></asp:Timer>
        <asp:Button ID="btnSendMessage" runat="server" Text="Send SMS Message" OnClick="btnSendMessage_Click" />
    </form>
</body>
</html>
