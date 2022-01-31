<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="control.aspx.cs" Inherits="fullweb.admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
			<div class="col-lg-6">
			   <div class="card">
                 <div class="card-header text-uppercase">Basic Input</div>
                  <div class="card-body">
				     <input type="text" class="form-control">
				  </div>
				</div>
			</div>
			<div class="col-lg-6">
			   <div class="card">
                 <div class="card-header text-uppercase">Input with placeholder</div>
                  <div class="card-body">
				    <input type="text" class="form-control" placeholder="Enter Email Address">
				  </div>
				</div>
			</div>
		</div><!--End Row-->

		
		<div class="row">
			<div class="col-lg-6">
			   <div class="card">
                 <div class="card-header text-uppercase">Disabled input</div>
                  <div class="card-body">
				     <input type="text" id="disabled-input" disabled="disabled" class="form-control">
				  </div>
				</div>
			</div>
			<div class="col-lg-6">
			   <div class="card">
                 <div class="card-header text-uppercase">Readonly input</div>
                  <div class="card-body">
				    <input type="text" readonly="readonly" class="form-control">
				  </div>
				</div>
			</div>
		</div><!--End Row-->
		
		<div class="row">
			<div class="col-lg-6">
			   <div class="card">
                 <div class="card-header text-uppercase">Rounded input</div>
                  <div class="card-body">
				     <input type="text" class="form-control form-control-rounded">
				  </div>
				</div>
			</div>
			<div class="col-lg-6">
			   <div class="card">
                 <div class="card-header text-uppercase">Square input</div>
                  <div class="card-body">
				    <input type="text" class="form-control form-control-square" placeholder="Enter Email Address">
				  </div>
				</div>
			</div>
		</div><!--End Row-->
	
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
             <div class="card-header text-uppercase">Other Input</div>
             <div class="card-body">
			 
			 <form>
				
				<div class="form-group row">
				  <label for="basic-textarea" class="col-sm-3 col-form-label">TEXTAREA INPUT</label>
				  <div class="col-sm-9">
					<textarea rows="4" class="form-control" id="basic-textarea"></textarea>
				  </div>
				</div>
				
				<div class="form-group row">
				  <label for="basic-select" class="col-sm-3 col-form-label">Select Input</label>
				  <div class="col-sm-9">
					<select class="form-control" id="basic-select">
                          <option>Option 1</option>
                          <option>Option 2</option>
                          <option>Option 3</option>
                          <option>Option 4</option>
                          <option>Option 5</option>
                        </select>
				  </div>
				</div>
				
				<div class="form-group row">
				  <label for="multiple-select" class="col-sm-3 col-form-label">MULTIPLE SELECT</label>
				  <div class="col-sm-9">
					<select multiple="multiple" class="form-control" id="multiple-select">
                          <option>Option 1</option>
                          <option>Option 2</option>
                          <option>Option 3</option>
                          <option>Option 4</option>
                          <option>Option 5</option>
                       </select>
				  </div>
				</div>
				
			 </form>
			 
             </div>
          </div>
        </div>
      </div><!--End Row-->

	  
       <div class="row">
        <div class="col-lg-12">
          <div class="card">
             <div class="card-header text-uppercase">Inputs Sizing Options</div>
             <div class="card-body">
			 
			  <form>
			 
			    <div class="form-group row">
				  <label for="Xlarge-input" class="col-sm-3 col-form-label">Extra large input</label>
				  <div class="col-sm-9">
					<input type="text" class="form-control form-control-xl" id="Xlarge-input">
				  </div>
				</div>
				
				<div class="form-group row">
				  <label for="large-input" class="col-sm-3 col-form-label">Large input</label>
				  <div class="col-sm-9">
					<input type="text" class="form-control form-control-lg" id="large-input">
				  </div>
				</div>
				
				<div class="form-group row">
				  <label for="default-input" class="col-sm-3 col-form-label">Default input</label>
				  <div class="col-sm-9">
					<input type="text" class="form-control" id="default-input">
				  </div>
				</div>
				
				<div class="form-group row">
				  <label for="small-input" class="col-sm-3 col-form-label">Small input</label>
				  <div class="col-sm-9">
					<input type="text" class="form-control" id="small-input">
				  </div>
				</div>
				
		     </form>

</asp:Content>
