<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="categoryview.aspx.cs" Inherits="fullweb.admin.WebForm11" %>

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
                                                <th>Id</th>
                                                <th>Name</th>
                                                <th>Despcrition</th>
                                                <th>Is active</th>
                                                <th>Edit</th>
                                                <th>delete</th>

                                            </tr>
                                        </thead>
                        </HeaderTemplate>

                        <ItemTemplate>

                            <tbody>
                                <tr>
                                    <td><%#Eval("Id") %> </td>
                                    <td><%#Eval("cat_name") %></td>
                                    <td><%#Eval("cat_desp") %></td>
                                    <td><%#Eval("cat_isactive") %></td>
                                    <td><a href ='categoryedit.aspx?cat_id=<%# Eval ("Id") %>' >Edit</a></td>
                                    <td><a href ='categorydelete.aspx?cat_id=<%#Eval ("Id") %>'>delete</a></td>

                                </tr>

                            </tbody>

                        </ItemTemplate>

                        <FooterTemplate>
                            </table>
                        </FooterTemplate>

                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category_master]"></asp:SqlDataSource>







                </div>
            </div>
        </div>
       
        <!-- End Row-->







    </form>







</asp:Content>
