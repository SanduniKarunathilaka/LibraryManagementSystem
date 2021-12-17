<%@ Page Title="Book Report" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BookReport.aspx.cs" Inherits="LibraryManagementSystem.BookReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
        <div class="form-horizontal">
            <h2>View Book</h2>
            <hr />
    <div class="form-group">
                <asp:label id="LabelselectBranch" runat="server" cssclass="col-md-2 control-label" text="Select Branch"></asp:label>
                <div class="col-md-3">
                    <asp:dropdownlist id="ddlBranch" DataTextField = "BranchName" DataValueField = "BranchId" runat="server"></asp:dropdownlist>
                    <asp:requiredfieldvalidator id="RequiredFieldValidatorBranch" runat="server" errormessage="This field is required" cssclass="text-danger" controltovalidate="ddlBranch"></asp:requiredfieldvalidator>
                </div>
        <asp:Button ID="btnViewBranch" runat="server" OnClick="btnViewBranch_click" class="btn btn-secondary btn-sm" Text="View" />
            </div>

    <div class="form-group">
                <asp:label id="Labelselectpublication" runat="server" cssclass="col-md-2 control-label" text="Select Publication"></asp:label>
                <div class="col-md-3">
                    <asp:dropdownlist id="ddlPublication" DataTextField = "PublicationName" DataValueField = "PublicationId" runat="server"></asp:dropdownlist>
                    <asp:requiredfieldvalidator id="RequiredFieldValidatorPublication" runat="server" errormessage="This field is required" cssclass="text-danger" controltovalidate="ddlPublication"></asp:requiredfieldvalidator>
                </div>
        <asp:Button ID="btnViewPublication" runat="server" OnClick="btnViewPublication_click" class="btn btn-secondary btn-sm" Text="View" />
            </div>

            <asp:GridView ID="GridView1"  width="500px" runat="server" AutoGenerateColumns="False" DataKeyNames="BookId" >
                    <Columns>
                        
                        <asp:BoundField HeaderText="Name" DataField="BookName"></asp:BoundField>
                        <asp:BoundField HeaderText="Price" DataField="Price"></asp:BoundField>
                        <asp:BoundField HeaderText=" Quantity" DataField="Quantity"></asp:BoundField>
                        
                        
                    </Columns>
                </asp:GridView>


        </table>
</asp:Content>
