<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="stateview.aspx.cs" Inherits="fullweb.admin.WebForm8" %>
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
                                                <th>State id</th>
                                                <th>country id</th>
                                                <th>state name</th>
                                                <th>Edit</th>
                                                <th>Delete</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                        </HeaderTemplate>

                        <ItemTemplate>

                            <tr>
                                <td><%#Eval ("sid") %></td>
                                <td><%#Eval ("cid")  %></td>
                                <td><%#Eval ("state_name")  %></td>

                                <td><a href ='editcountry.aspx?cid=<%#Eval ("sid") %>'>Edit</a></td>
                                <td><a href ='deletecountry.aspx?cid=<%#Eval ("sid") %>'>Delete</a></td>

                            </tr>
                        </ItemTemplate>

                        <FooterTemplate>
                            </tbody>
                
                </tfoot>
                            </table>
                        </FooterTemplate>

                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [state_master]"></asp:SqlDataSource>
                 




                </div>
            </div>
        </div>
    </form>
</asp:Content>
