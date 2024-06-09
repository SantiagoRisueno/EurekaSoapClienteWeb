<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WS_EurekaBank_Client.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>EurekaBank</title>
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: Helvetica, Arial, sans-serif;
            color: #666;
            background: #e6f0fa; /* Fondo pastel */
            font-size: 1em;
            line-height: 1.5em;
            padding-top: 80px;
        }

        h1 {
            font-size: 2.3em;
            line-height: 1.3em;
            margin: 15px 0;
            text-align: center;
            font-weight: 300;
        }

        p {
            margin: 0 0 1.5em 0;
        }

        img {
            max-width: 100%;
            height: auto;
        }

        #main-header {
            background: #0094ff; /* Azul marino */
            color: white;
            height: 80px;
            width: 100%;
            left: 0;
            top: 0;
            position: fixed;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

            #main-header a {
                color: white;
            }

        #logo-header {
            padding: 15px 20px;
            text-decoration: none;
        }

            #logo-header:hover {
                color: #66b2ff;
            }

            #logo-header .site-name {
                display: block;
                font-weight: 700;
                font-size: 1.2em;
            }

            #logo-header .site-desc {
                display: block;
                font-weight: 300;
                font-size: 0.8em;
                color: #b3d1ff;
            }

        nav {
            margin-right: 20px;
        }

            nav ul {
                margin: 0;
                padding: 0;
                list-style: none;
                display: flex;
            }

                nav ul li {
                    display: inline-block;
                }

                    nav ul li a {
                        display: block;
                        padding: 0 15px;
                        line-height: 80px;
                        text-decoration: none;
                        border-radius: 5px; /* Bordes curvos */
                    }

                        nav ul li a:hover {
                            background: #66b2ff;
                        }

        #main-content {
            background: white;
            width: 90%;
            max-width: 800px;
            margin: 20px auto;
            box-shadow: 0 0 10px rgba(0,0,0,.1); /* Sombra */
            border-radius: 10px; /* Bordes curvos */
            padding: 20px; /* Espaciado interno */
        }

        #main-footer {
            background: #0094ff; /* Azul marino */
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
        }

            #main-footer p {
                margin: 0;
            }

            #main-footer a {
                color: white;
            }

        .tab-content {
            display: none;
        }

            .tab-content.active {
                display: block;
            }

        .tab {
            cursor: pointer;
            padding: 10px 15px;
            background: #0094ff; /* Azul marino */
            color: white;
            display: inline-block;
            margin-right: 5px;
            line-height: 60px;
            border-radius: 5px; /* Bordes curvos */
        }

            .tab.active {
                background: #66b2ff;
            }

        .auto-style1 {
            width: 500px;
            height: 115px;
        }

        .auto-style2 {
            width: 128px;
            height: 128px;
        }

        .auto-style3 {
            width: 122px;
            height: 98px;
        }

        .auto-style4 {
            width: 118px;
        }

        .auto-style7 {
            width: 3px;
        }

        .auto-style8 {
            height: 23px;
        }

        .auto-style9 {
            width: 124px;
        }

        table {
            width: 100%;
            background-color: #3981DB; /* Azul marino */
            color: white;
            border-radius: 10px; /* Bordes curvos */
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0,0,0,.1); /* Sombra */
        }

            table td {
                padding: 10px;
            }

                table td img {
                    border-radius: 10px; /* Bordes curvos */
                }

                table td center {
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                }
    </style>
</head>
<body>
    <header id="main-header">
        <a id="logo-header" href="#">
            <span class="site-name">EUREKABANK</span>
            <span class="site-desc">Arquitectura de Software / Monster</span>
        </a>
        <nav>
            <ul>
                <li><a class="tab active" onclick="showTab('deposito')">Depósito</a></li>
                <li><a class="tab" onclick="showTab('movimiento')">Movimiento</a></li>
            </ul>
        </nav>
    </header>
    <img src="imagenes/espe.png" width="50%" height="auto" style="border-radius: 10px; margin: 20px auto; display: block;" />
    <section id="main-content">
        <form id="form1" runat="server">
            <div id="deposito" class="tab-content active">
                <table>
                    <tr>
                        <td colspan="4" style="background-color: #2D687D; color: white">
                            <center>
                                <h3>DEPÓSITO - EUREKABANK</h3>
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="3">
                            <center>
                                <img alt="" class="auto-style2" src="imagenes/money.png" /></center>
                            <td class="auto-style7">
                                <center>Cuenta: </center>
                            </td>
                            <td colspan="2">
                                <center>
                                    <asp:TextBox ID="txtCuenta1" runat="server"></asp:TextBox></center>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <center>Importe:</center>
                        </td>
                        <td colspan="2">
                            <center>
                                <asp:TextBox ID="txtImporte" runat="server"></asp:TextBox></center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <center>
                                <asp:Button ID="btnRegistrar" runat="server" OnClick="btnRegistrar_Click" Text="Registrar"
                                    Style="background-color: #1EC555; color: white; padding: 10px 20px; font-size: 16px; border-radius: 5px;" />
                                <asp:Label ID="lblValidarDeposito" runat="server"></asp:Label>
                            </center>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="movimiento" class="tab-content">
                <table>
                    <tr>
                        <td colspan="4" style="background-color: #2D687D; color: white">
                            <center>
                                <h3>CONSULTA DE MOVIMIENTOS</h3>
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2">
                            <center>
                                <img alt="" class="auto-style3" src="imagenes/search.png" /></center>
                        </td>
                        <td colspan="2">Cuenta:
                        </td>
                        <td>
                            <center>
                                <asp:TextBox ID="txtCuenta2" runat="server"></asp:TextBox></center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <center>
                                <asp:Button ID="btnConsulta" runat="server" OnClick="btnConsulta_Click" Text="Consultar"
                                    Style="background-color: #1EC555; color: white; padding: 10px 20px; font-size: 16px; border-radius: 5px;" />
                                <asp:Label ID="lblValidarConsulta" runat="server"></asp:Label>
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" class="auto-style8">
                            <center>
                                <asp:GridView ID="gvMovimientos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    <Columns>
                                        <asp:BoundField DataField="chr_cuencodigo" HeaderText="Cuenta Cliente" />
                                        <asp:BoundField DataField="int_movinumero" HeaderText="Número Movimiento" />
                                        <asp:BoundField DataField="dtt_movifecha" HeaderText="Fecha Movimiento" />
                                        <asp:BoundField DataField="chr_emplcodigo" HeaderText="Código Empleado" />
                                        <asp:BoundField DataField="chr_tipocodigo" HeaderText="Tipo Transacción" />
                                        <asp:BoundField DataField="dec_moviimporte" HeaderText="Monto" />
                                        <asp:BoundField DataField="chr_cuenreferencia" HeaderText="Observaciones" />
                                    </Columns>
                                </asp:GridView>
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" class="auto-style8" style="background-color: #808080"></td>
                    </tr>
                </table>
            </div>
        </form>
    </section>
    <footer id="main-footer">
        <p>&copy; 2024 - Grupo 7</p>
    </footer>
    <script>
        function showTab(tabId) {
            var tabs = document.getElementsByClassName('tab-content');
            for (var i = 0; i < tabs.length; i++) {
                tabs[i].classList.remove('active');
            }
            document.getElementById(tabId).classList.add('active');

            var tabLinks = document.getElementsByClassName('tab');
            for (var i = 0; i < tabLinks.length; i++) {
                tabLinks[i].classList.remove('active');
            }
            event.currentTarget.classList.add('active');
        }
    </script>
</body>
</html>
