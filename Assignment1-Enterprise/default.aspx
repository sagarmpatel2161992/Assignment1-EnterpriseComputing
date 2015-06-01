<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Assignment1_Enterprise._default" %>
<%@ Register Src="~/game.ascx" TagPrefix="uc" TagName="game" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="game-1">
        <h1>Game 1</h1>
        <uc:game ID="game1"  runat="server"/>
    </div>
    <div id="game-2">
        <h1>Game 2</h1>
        <uc:game ID="game2" runat="server"/>
    </div>
    <div id="game-3">
        <h1>Game 3</h1>
        <uc:game ID="game3" runat="server"/>
    </div>
    <div id="game-4">
        <h1>Game 4</h1>
        <uc:game ID="game4" runat="server"/>
    </div>
      <div class="form-group">
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" Width="113px" />
    </div>
<div id="result">
    <h4> Result</h4>
    <div>
        Number Of Game Won: <asp:Label ID="lblNumOfWin" runat="server"></asp:Label>
    </div>

    <div>
        Number Of Game Lost: <asp:Label ID="lblNumOfLoss" runat="server"> </asp:Label>
    </div>
    <div>
        Winning Percentage: <asp:Label ID="lblWinPercent" runat="server"> </asp:Label>
    </div>
    <div>
       Total Point Scored: <asp:Label ID="lblPointScored" runat="server"> </asp:Label>
    </div>
    <div>
        Total Point Allowed: <asp:Label ID="lblPointAllowed" runat="server"> </asp:Label>
    </div>
    <div>
        Point Difference: <asp:Label ID="lblPointDifference" runat="server"> </asp:Label>
    </div>
    <div>
        Total Spectators: <asp:Label ID="lblTotalSpectator" runat="server"> </asp:Label>
    </div>
    <div>
        Average Spectators: <asp:Label ID="lblAverageSpectator" runat="server"> </asp:Label>
    </div>
    </div>
</asp:Content>
