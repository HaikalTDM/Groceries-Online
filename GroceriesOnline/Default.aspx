﻿<%@ Page Title="BitesShop - Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GroceriesOnline.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carouselExampleIndicators" class="carousel slide mt-3 mb-3" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="Images/Banners/1716191990027.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="Images/Banners/1717202953695.png" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="Images/Banners/1717634727094.jpg" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="container">
        <div class="row" style="padding-bottom:20px;">
            <div class="col">
                <img class="img-fluid rounded-8" src="Images/Banners/adsA.jpg" />
            </div>
            <div class="col">
                <img class="img-fluid rounded-8" src="Images/Banners/adsB.jpg" />
            </div>
            <div class="col">
                <img class="img-fluid rounded-8" src="Images/Banners/adsC.jpg" />
            </div>
            <div class="col">
                <img class="img-fluid rounded-8" src="Images/Banners/adsD.jpg" />
            </div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ItemId" DataSourceID="SqlDataSource1" Width="100%" CssClass="table table-hover" GridLines="None" BorderStyle="None" PageSize="6">
    <Columns>
        <asp:BoundField DataField="ItemTitle" HeaderText="Item" SortExpression="ItemTitle" />
        <asp:BoundField DataField="ItemPrice" HeaderText="Price" SortExpression="ItemPrice" DataFormatString="{0:c2}" />
        <asp:BoundField DataField="ItemDesc" HeaderText="Description" SortExpression="ItemDesc" />
        <asp:ImageField DataImageUrlField="ItemImage" DataImageUrlFormatString="Images/Items/{0}">
            <ControlStyle Height="70px" />
        </asp:ImageField>
    </Columns>
    <HeaderStyle CssClass="th" />
</asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connGrocerShop %>" SelectCommand="SELECT * FROM [Item]"></asp:SqlDataSource>
    
    </asp:Content>
