<%@ Page Title="Add Book" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="LibraryManagementSystem.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Book</h2>
            <hr />
            <div class="form-group">
                <asp:label id="Label1" runat="server" cssclass="col-md-2 control-label" text="Book Name"></asp:label>
                <div class="col-md-3">
                    <asp:textbox id="txtbName" runat="server" cssclass="form-control"></asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidatorBookName" runat="server" errormessage="This field is required" cssclass="text-danger" controltovalidate="txtbName"></asp:requiredfieldvalidator>
                </div>
            </div>

             <div class="form-group">
                <asp:label id="Label2" runat="server" cssclass="col-md-2 control-label" text="Description"></asp:label>
                <div class="col-md-3">
                    <asp:textbox id="txtbDescription" runat="server" textmode="MultiLine" cssclass="form-control"></asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" errormessage="This field is required" cssclass="text-danger" controltovalidate="txtbDescription"></asp:requiredfieldvalidator>
                </div>
            </div>

                        <div class="form-group">
                <asp:label id="Label3" runat="server" cssclass="col-md-2 control-label" text="Author"></asp:label>
                <div class="col-md-3">
                    <asp:textbox id="txtbAuthor" runat="server" cssclass="form-control"></asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidatorAuthor" runat="server" errormessage="This field is required" cssclass="text-danger" controltovalidate="txtbAuthor"></asp:requiredfieldvalidator>
                </div>
            </div>

            <div class="form-group">
                <asp:label id="Label4" runat="server" cssclass="col-md-2 control-label" text="Branch"></asp:label>
                <div class="col-md-3">
                    <asp:dropdownlist id="ddlBranch" DataTextField = "BranchName" DataValueField = "BranchId" runat="server"></asp:dropdownlist>
                    <asp:requiredfieldvalidator id="RequiredFieldValidatorBranch" runat="server" errormessage="This field is required" cssclass="text-danger" controltovalidate="ddlBranch"></asp:requiredfieldvalidator>
                </div>
            </div>

             <div class="form-group">
                <asp:label id="Label5" runat="server" cssclass="col-md-2 control-label" text="Publication"></asp:label>
                <div class="col-md-3">
                    <asp:dropdownlist id="ddlPublication" DataTextField = "PublicationName" DataValueField = "PublicationId" runat="server"></asp:dropdownlist>
                    <asp:requiredfieldvalidator id="RequiredFieldValidatorPublication" runat="server" errormessage="This field is required" cssclass="text-danger" controltovalidate="ddlPublication"></asp:requiredfieldvalidator>
                </div>
            </div>

              <div class="form-group">
                <asp:label id="Label6" runat="server" cssclass="col-md-2 control-label" text="Price"></asp:label>
                <div class="col-md-3">
                    <asp:textbox id="txtbPrice" runat="server" cssclass="form-control"></asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidatorPrice" runat="server" errormessage="This field is required" cssclass="text-danger" controltovalidate="txtbPrice"></asp:requiredfieldvalidator>
                </div>
            </div>

              <div class="form-group">
                <asp:label id="Label7" runat="server" cssclass="col-md-2 control-label" text="Quantity"></asp:label>
                <div class="col-md-3">
                    <asp:textbox id="txtbQuantity" runat="server" cssclass="form-control"></asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidatorQuantity" runat="server" errormessage="This field is required" cssclass="text-danger" controltovalidate="txtbQuantity"></asp:requiredfieldvalidator>
                </div>
            </div>

             <div class="form-group">
                <asp:label id="Label8" runat="server" cssclass="col-md-2 control-label" text="Upload Book Image"></asp:label>
                <div class="col-md-3">
                    <asp:fileupload id="FileUpload1" runat="server"></asp:fileupload>
                   <!-- <asp:requiredfieldvalidator id="RequiredFieldValidatorFileUpload1" runat="server" errormessage="This field is required" cssclass="text-danger" controltovalidate="FileUpload1"></asp:requiredfieldvalidator>
              -->

                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:button id="btnAddBook" runat="server" text="Add" onclick="btnAddBook_click" /> 
                    
                    <br />
                   
                </div>
            </div>

            </div>
        </div>
        </table>

</asp:Content>
