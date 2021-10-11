<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products report.aspx.cs" Inherits="projectbelfield.Products_report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <title><%: Page.Title %> - Belfield Service Centre</title>

    <asp:Chart ID="Chart3" runat="server" DataMember="DefaultView" DataSourceID="SqlDataSource3" RightToLeft="Yes" Palette="EarthTones">
        <Series>
            <asp:Series IsValueShownAsLabel="True" IsXValueIndexed="True" Name="Series1" XValueMember="product_name" YValueMembers="supp_id" YValueType="Int32">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
        <Titles>
            <asp:Title Name="Title1" Text="PRODUCT STOCK BY SUPPLIER" TextStyle="Frame">
            </asp:Title>
        </Titles>
    </asp:Chart>
    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" DataMember="DefaultView" Palette="Bright" RightToLeft="Yes">
        <Series>
            <asp:Series Name="Series1" XValueMember="product_name" YValueMembers="quantity" IsValueShownAsLabel="True">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
        <Titles>
            <asp:Title Name="Title1" Text="PRODUCT STOCK BY QUANTITY" TextStyle="Frame">
            </asp:Title>
        </Titles>
    </asp:Chart>

    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" RightToLeft="Yes" DataMember="DefaultView" Palette="Fire">
        <Series>
            <asp:Series Name="Series1" XValueMember="product_name" YValueMembers="product_unit_cost" IsValueShownAsLabel="True"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
                <AxisX Enabled="True">
                </AxisX>
            </asp:ChartArea>
        </ChartAreas>
        <Titles>
            <asp:Title Alignment="TopCenter" Name="Title1" Text="PRODUCT STOCK BY PRODUCT UNIT COST" TextStyle="Frame">
            </asp:Title>
        </Titles>
    </asp:Chart>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [product_id], [product_name], [product_mpn], [product_upc], [product_unit_cost], [supp_id] FROM [product]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [product_name], [supp_id], [quantity] FROM [purchase_order]"></asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BelfieldConnectionString %>" SelectCommand="SELECT [supp_id], [product_name] FROM [product]"></asp:SqlDataSource>
    
    </asp:Content>
