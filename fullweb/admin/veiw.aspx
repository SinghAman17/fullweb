<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="fullweb.admin.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header"><i class="fa fa-table"></i>Data Exporting</div>

                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Cpuntry id</th>
                                                <th>Country Name</th>
                                                <th>Edit</th>
                                                <th>Delete</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                        </HeaderTemplate>

                        <ItemTemplate>

                            <tr>
                                <td><%#Eval ("Id") %></td>
                                <td><%#Eval ("name")  %></td>
                                
                                <td><a href='editcountry.aspx?cid=<%#Eval ("Id") %>'>Edit</a></td>
                                <td><a href='deletecountry.aspx?cid=<%#Eval ("Id") %>'>Delete</a></td>

                            </tr>
                        </ItemTemplate>

                        <FooterTemplate>
                            </tbody>
                
                </tfoot>
                            </table>
                        </FooterTemplate>

                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [country_master]"></asp:SqlDataSource>





                </div>
            </div>
        </div>
    </form>
</asp:Content>
