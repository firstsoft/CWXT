﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CWFamilySpecHelpList.aspx.cs" Inherits="CWXT.JHSY.CWFamilySpecHelp.CWFamilySpecHelpList" %>

<%@ Register TagPrefix="vs" Namespace="Vladsm.Web.UI.WebControls" Assembly="GroupRadioButton" %>
<%@ Register TagPrefix="uccs" TagName="CustomPaging" Src="~/CustomControls/CustomPaging.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>计生家庭特别扶助统计</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR" />
    <meta content="C#" name="CODE_LANGUAGE" />
    <meta content="JavaScript" name="vs_defaultClientScript" />
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
</head>
<body class="common">
    <form id="Form1" method="post" runat="server">
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td>
                    <span class="txtPageTitle">计生家庭特别扶助统计</span>
                </td>
                <td>
                    <iewc:Toolbar ID="Toolbar" runat="server" CssClass="MSToolBar">
                        <iewc:ToolbarButton ID="btnQuery" ImageUrl="../../image/AnswerIcon.gif" ToolTip="查询" Text="&nbsp;查询"></iewc:ToolbarButton>
                    </iewc:Toolbar>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr />
                </td>
            </tr>
        </table>
        <table class="panel" cellspacing="0" cellpadding="0">
            <tr>
                <td>
                    <table class="detailInfo" cellspacing="0" cellpadding="3">
                        <tr>
                            <td>
                                <asp:Label ID="lblQueryDesc" runat="server"></asp:Label>
                            </td>
                            <td class="ToolBarStyle">
                                <asp:ImageButton ID="btnNew" runat="server" AlternateText="新增" CssClass="ImageButtonStyle" ImageUrl="~/image/BTN_NEW_UP.gif"></asp:ImageButton>
                                <asp:ImageButton ID="btnEdit" runat="server" AlternateText="编辑" CssClass="ImageButtonStyle" ImageUrl="~/image/BTN_EDIT_UP.gif"></asp:ImageButton>
                                <asp:ImageButton ID="btnDel" runat="server" AlternateText="删除" CssClass="ImageButtonStyle" ImageUrl="~/image/BTN_DEL_UP.gif"></asp:ImageButton>
                                <asp:ImageButton ID="btnView" runat="server" AlternateText="查看" CssClass="ImageButtonStyle" ImageUrl="~/image/BTN_VIEW_UP.gif"></asp:ImageButton>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:DataGrid ID="dgCWFamilySpecHelp" CssClass="DGStyle" runat="server" AutoGenerateColumns="False" AllowCustomPaging="True">
                                    <HeaderStyle CssClass="DGHeaderStyle"></HeaderStyle>
                                    <ItemStyle CssClass="DGItemStyle"></ItemStyle>
                                    <AlternatingItemStyle CssClass="DGAlternatingItemStyle"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:TemplateColumn HeaderStyle-Width="1%" HeaderStyle-Wrap="False">
                                            <ItemTemplate>
                                                <vs:GroupRadioButton ID="Radiobutton1" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:BoundColumn DataField="PKID" Visible="False"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="CWVillageName" HeaderText="所属村镇"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="AppIDCardNo" HeaderText="身份证号码"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="AppName" HeaderText="申请人姓名"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="SexInfo" HeaderText="性别"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="HolderPorpInfo" HeaderText="户口性质"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="HelpTypeInfo" HeaderText="扶助类型"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="RealMonth" HeaderText="享受时间"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="HelpMoney" HeaderText="享受金额"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="HelpNo" HeaderText="发放证编号"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="HelpYear" HeaderText="年份"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="CreateUserName" HeaderText="创建人"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="CreateTime" HeaderText="创建时间" DataFormatString="{0:yyyy-MM-dd HH:mm:ss}"></asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid>
                                <uccs:CustomPaging ID="ucCustomPaging" runat="server"></uccs:CustomPaging>
                                <asp:LinkButton ID="btnRefreshData" runat="server"></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
