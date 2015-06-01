<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="game.ascx.cs" Inherits="Assignment1_Enterprise.game" %>

<asp:Panel ID="games" runat="server">
    <div class="form-group">
    <table class="table-group">    
        <tr>
            <td>
                <asp:Label ID="lblResult" runat="server" Text="Result:"></asp:Label>                
            </td>
            <td>
                <asp:RadioButtonList ID="rblResult" runat="server">
                    <asp:ListItem Text="Win" Value ="0"></asp:ListItem>
                    <asp:ListItem Text="Loss" Value="1"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblScored" runat="server" Text="Scored:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtScored" runat="server" TextMode="Number" />
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="lblAllowed" runat="server" Text="Allowed:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAllowed" runat="server" TextMode="Number" />
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblSpectators" runat="server" Text="Spectators:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSpectators" runat="server" TextMode="Number"/>
            </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
            <td>&nbsp;</td>           
            <td>
                <div>
                <asp:RequiredFieldValidator ID="rfvResult" runat="server"
                    ErrorMessage="Result must be Selected" CssClass="alert alert-danger" 
                    ControlToValidate="rblResult" Display="Dynamic">
                </asp:RequiredFieldValidator>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="Result must be Selected" CssClass="alert alert-danger" 
                    ControlToValidate="txtScored" Display="Dynamic">
                </asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="Result must be Selected" CssClass="alert alert-danger" 
                    ControlToValidate="txtAllowed" Display="Dynamic">
                </asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="Result must be Selected" CssClass="alert alert-danger" 
                    ControlToValidate="txtSpectators" Display="Dynamic">
                </asp:RequiredFieldValidator>                
                <asp:RangeValidator ID="rvScore" runat="server" 
                    ErrorMessage="Scored must be zeor Higher"
                    MinimumValue="0.01" MaximumValue="999999999"
                    CssClass="alert alert-danger" ControlToValidate="txtScored"
                    Type="Double" Display="Dynamic">
                </asp:RangeValidator>
                    
                <asp:CompareValidator ID="cvNumbers" runat="server" 
                    ControlToValidate="txtAllowed" ControlToCompare="txtScored"
                    CssClass="alert alert-danger" Operator="NotEqual" type="Integer"
                    ErrorMessage="For and Against must be different" Display="Dynamic">
                </asp:CompareValidator>

                <asp:RangeValidator ID="rvAllowed" runat="server" 
                    ErrorMessage="Allowed must be zeor Higher"
                    MinimumValue="0.01" MaximumValue="999999999"
                    CssClass="alert alert-danger" ControlToValidate="txtAllowed"
                    Type="Double" Display="Dynamic">
                </asp:RangeValidator>

                <asp:RangeValidator ID="rvSpectators" runat="server" 
                    ErrorMessage="Spectators must be zeor Higher"
                    MinimumValue="0.01" MaximumValue="999999999"
                    CssClass="alert alert-danger" ControlToValidate="txtSpectators"
                    Type="Double" Display="Dynamic">
                </asp:RangeValidator>

            </div>
                    </td>
        </tr>
    </table>
</div>

</asp:Panel>

