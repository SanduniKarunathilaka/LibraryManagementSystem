<%@ Page Title="Add Publication" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddPublication.aspx.cs" Inherits="LibraryManagementSystem.AddPublication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
<div class="form-horizontal">
            <h4>Add Publication</h4>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Publication Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPublicationName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ControlToValidate="txtPublicationName"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Onclick" />
                </div>
            </div>
    <asp:GridView ID="GridViewPublication"  width="500px" runat="server" AutoGenerateColumns="False" DataKeyNames="PublicationId" OnPageIndexChanging="GridViewPublication_PageIndexChanging" OnRowCancelingEdit="GridViewPublication_RowCancelingEdit" OnRowDeleting="GridViewPublication_RowDeleting" OnRowEditing="GridViewPublication_RowEditing" OnRowUpdating="GridViewPublication_RowUpdating">
                     <Columns>
                        <asp:TemplateField HeaderText="PublicationId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PublicationId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Bind("PublicationId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Publication" DataField="PublicationName"></asp:BoundField>
                        <asp:CommandField ShowEditButton="true" />
                        <asp:CommandField ShowDeleteButton="true" />
                    </Columns>
                </asp:GridView>



    </div>
        </div>
</asp:Content>


