<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="SO500001.aspx.cs" Inherits="Page_SO500001" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
    <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%" PrimaryView="Filter" TypeName="Targets.ProcessPayments">
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
    <px:PXFormView ID="form" runat="server" DataSourceID="ds" Style="z-index: 100" 
		Width="100%" DataMember="Filter">
		<Template>
			<px:PXLayoutRule runat="server" StartRow="True"/>
		</Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
    <px:PXGrid ID="grid" runat="server" DataSourceID="ds" Style="z-index: 100" 
		Width="100%" Height="150px" SkinID="Inquire" TabIndex="300" TemporaryFilterCaption="Filter Applied">
		<Levels>
			<px:PXGridLevel DataKeyNames="OrderType,OrderNbr" DataMember="Payments">
			    <Columns>
                    <px:PXGridColumn AllowCheckAll="True" DataField="Selected" Type="CheckBox" Width="60px">
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="OrderType">
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="OrderNbr">
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="OrderTotal" TextAlign="Right" Width="100px">
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="UsrExternalPayment" TextAlign="Right" Width="100px">
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="SOAdjust__AdjAmt" TextAlign="Right" Width="100px">
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="PaymentCntr" TextAlign="Right">
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="UsrPayment" TextAlign="Right" Width="100px">
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="PaymentMethodID">
                    </px:PXGridColumn>
                </Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
	</px:PXGrid>
</asp:Content>
