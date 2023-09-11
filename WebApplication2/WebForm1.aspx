<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">
        <div class =" mt-5 d-flex w-100 justify-content-center align-items-center">
            <asp:DropDownList CssClass =" dropdown-center  " ID="DropDownList1" runat="server"  
             OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem  CssClass =" dropdown-item" Value="Porsche.jpg" Data-Price="525.000,00" Text="Porsche 911 GT2 RS"></asp:ListItem>
                <asp:ListItem  CssClass =" dropdown-item" Value="Audi.jpg" Data-Price="146.350,00" Text="Audi RS7"></asp:ListItem>
                 <asp:ListItem  CssClass =" dropdown-item" Value="Mercedes.jpg" Data-Price="137.940,00" Text="Mercedes-Benz G-Wagon"></asp:ListItem> 
                </asp:DropDownList>
               

        </div>

        <div class ="d-flex  flex-column w-100" >
        
              <asp:Image ID="Image1" CssClass=" mt-5 mx-auto  " Width="500px" runat="server"  />
               <p id="p1" class="mx-auto" runat="server"> </p>
            </div>
      
     <div class =" mt-5 d-flex w-100 justify-content-center align-items-center">
      <asp:CheckBoxList ID="CheckBoxList1" runat="server"  RepeatDirection="Horizontal" RepeatColumns="2">
             
            <asp:ListItem Value="Vernice m." Data-Price="330" Text="Vernice m. 330€"></asp:ListItem>
            <asp:ListItem Value=" Fari Xeno " Data-Price="180"  Text=" Fari Xeno 180€"></asp:ListItem>
            <asp:ListItem Value="Sistema Navigazione" Data-Price="1800" Text="Sistema Navigazione 1.800€"></asp:ListItem>
            <asp:ListItem Value="Line Assistant" Data-Price="2000" Text="Line Assistant 2.000€"></asp:ListItem>
           <asp:ListItem Value="Ruota di scorta" Data-Price="155" Text="Ruota di scorta 155€"></asp:ListItem>
          <asp:ListItem Value="Sedili/volante in pelle" Data-Price="700" Text="Sedili/volante in pelle 700€"></asp:ListItem>
        </asp:CheckBoxList>
      
     </div>
      <div class =" mt-5 d-flex w-100 flex-column justify-content-center align-items-center">
          

         <p>Scegli Durata Garanzia, 120€ annui</p>
          <asp:DropDownList ID="DropDownList2" CssClass="mb-5" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
              <asp:ListItem Value="1 anno" Data-Price="120"  Text="1 Anno"></asp:ListItem>
              <asp:ListItem Value="2 anni" Data-Price="240"  Text="2 Anni"></asp:ListItem>
              <asp:ListItem Value="3 anni" Data-Price="360"  Text="3 Anni"></asp:ListItem>
              <asp:ListItem Value="4 anni" Data-Price="480"  Text="4 Anni"></asp:ListItem>
          </asp:DropDownList>

        
         <asp:Button ID="CalcolaTotale" CssClass="btn btn-outline-primary" runat="server" Text="Calcola Totale" OnClick="CalcolaTotale_Click" />

       
          
     </div>
          <div class=" bg-opacity-50 d-flex w-25 mx-auto border-2 border border-success flex-column align-items-center mt-3">
              <asp:Label ID="Label1" runat="server" Text="Costo Optional:"></asp:Label>
              <asp:Label ID="Label2" runat="server" Text="Costo Garanzia:"></asp:Label>
              <asp:Label ID="Label3" runat="server" Text="Costo Totale:"></asp:Label>
          </div>

    </form>
</body>
</html>
