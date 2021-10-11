<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="vendorreport.aspx.cs" Inherits="projectbelfield.vendorreport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <title><%: Page.Title %> - Belfield Service Centre</title>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [supp_id], [contact_name], [company_name] FROM [supplier]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT * FROM [purchase_order]"></asp:SqlDataSource>
    <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource2">
        <Series>
            <asp:Series IsValueShownAsLabel="True" Name="Series1" XValueMember="product_name" YValueMembers="product_unit_cost" ChartType="Line" YValuesPerPoint="4">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:Chart ID="Chart7" runat="server" DataSourceID="SqlDataSource2">
        <Series>
            <asp:Series IsValueShownAsLabel="True" Name="Series1" XValueMember="product_name" YValueMembers="total">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    </asp:Content>
