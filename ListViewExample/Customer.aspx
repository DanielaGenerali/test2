<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="ListViewExample.Customer1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <asp:ListView runat="server" ItemPlaceholderID="placeHolderCustomer" ID="LstCustomers">
            <LayoutTemplate>
                <div>
                    <asp:PlaceHolder runat="server" ID="placeHolderCustomer" />
                </div>
            </LayoutTemplate>
            <ItemTemplate>
                 Customer Name:<asp:Label ID="Label1" Text='<%# Eval("CustomerName") %>' runat="server" /><br />
                 Email:<asp:Label ID="Label2" Text='<%# Eval("Email") %>' runat="server" /><br />
                 Website:<asp:Label ID="Label3" Text='<%# Eval("Website") %>' runat="server" />
                <asp:ListView ID="ListView1" runat="server" DataSource='<%# Eval("Address") %>' ItemPlaceholderID="addressPlaceHolder">
                    <LayoutTemplate>
                        <div style="padding-left: 30px;">
                            <table border="1" cellpadding="0" cellspacing="0">
                                <asp:PlaceHolder runat="server" ID="addressPlaceHolder" />
                             </table>
                        </div>
                        <hr />
                    </LayoutTemplate>
                    <ItemTemplate>

                        <tr>
                            <td>
                                <asp:Label ID="Label4" Text='<%# Eval("Country") %>' runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label3" Text='<%# Eval("State") %>' runat="server" />
                            </td>
                            <td>

                                <asp:Label ID="Label5" Text='<%# Eval("City") %>' runat="server" />
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </ItemTemplate>
        </asp:ListView> 





        </div>
    </form>
</body>
</html>
