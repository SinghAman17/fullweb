<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="editcountry.aspx.cs" Inherits="fullweb.admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Breadcrumb-->
     <div class="row pt-2 pb-2">
        <div class="col-sm-9">
		    <h4 class="page-title">Country Form</h4>
		    <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javaScript:void();">Admin</a></li>
            <li class="breadcrumb-item"><a href="javaScript:void();">Forms</a></li>
            <li class="breadcrumb-item active" aria-current="page">Form Layouts</li>
         </ol>
	   </div>
	   <div class="col-sm-3">
       <div class="btn-group float-sm-right">
        <button type="button" class="btn btn-light waves-effect waves-light"><i class="fa fa-cog mr-1"></i> Setting</button>
        <button type="button" class="btn btn-light dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown">
        <span class="caret"></span>
        </button>
        <div class="dropdown-menu">
          <a href="javaScript:void();" class="dropdown-item">Action</a>
          <a href="javaScript:void();" class="dropdown-item">Another action</a>
          <a href="javaScript:void();" class="dropdown-item">Something else here</a>
          <div class="dropdown-divider"></div>
          <a href="javaScript:void();" class="dropdown-item">Separated link</a>
        </div>
      </div>
     </div>
     </div>
    <!-- End Breadcrumb-->

			   
			   <div class="card">
			     <div class="card-body">
				   <div class="card-title">Country edit Form</div>
				   <hr>
				    <form runat ="server">
					 <div class="form-group row">
					  <label for="input-21" class="col-sm-2 col-form-label">Country Name</label>
					  <div class="col-sm-10">
					<%--	<input type="text" class="form-control" id="input-21" placeholder="Enter Your Name">--%>
						  <asp:TextBox ID="txt_cname" runat="server" class="form-control"  placeholder="Enter Your Name"></asp:TextBox>
					  </div>
					</div>
					
					<div class="form-group row">
					  <label class="col-sm-2 col-form-label"></label>
					  <div class="col-sm-10">
						<div class="icheck-material-primary">
						<input type="checkbox" id="user-checkbox5" checked=""/>
						<label for="user-checkbox5">Remember me</label>
					  </div>
					  </div>
					</div>
					 <div class="form-group row">
					  <label class="col-sm-2 col-form-label"></label>
					  <div class="col-sm-10">
						<%--<button type="submit" class="btn btn-primary px-5">--%>
						  <asp:Button ID="btn_update" runat="server" Text="Update" class="btn btn-primary px-5" OnClick="btn_update_Click" />
					  </div>
					</div>
					</form>
				 </div>
			 </div>
</asp:Content>
