<%@ Page Title="Add Branch" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddBranch.aspx.cs" Inherits="LibraryManagementSystem.AddBranch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
<div class="form-horizontal">
            <h4>Add Branch</h4>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Branch Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtBranchName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ControlToValidate="txtBranchName"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Onclick" />
                </div>
            </div>
    <asp:GridView ID="GridViewBranch"  width="500px" runat="server" AutoGenerateColumns="False" DataKeyNames="BranchId" OnPageIndexChanging="GridViewBranch_PageIndexChanging" OnRowCancelingEdit="GridViewBranch_RowCancelingEdit" OnRowDeleting="GridViewBranch_RowDeleting" OnRowEditing="GridViewBranch_RowEditing" OnRowUpdating="GridViewBranch_RowUpdating">
                    <Columns>
                        <asp:TemplateField HeaderText="BranchId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BranchId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Bind("BranchId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Branch" DataField="BranchName"></asp:BoundField>
                        <asp:CommandField ShowEditButton="true" />
                        <asp:CommandField ShowDeleteButton="true" />
                    </Columns>
                </asp:GridView>
    </div>
        </div>
</asp:Content>
