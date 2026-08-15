<?php
import_request_variables(gP); 
function = getIPAddr($url["Site_Gostar/resposta_vendidos.html"]):{
boolean $getIPAddr = $_GET["$aTPL"];
echo; "Confira o endereço ip do comprador:". ",$getIPAddr";
};
$CADEIRA = $_POST["Cadeira"];
$MESA = $_POST["Mesa"];
$CONJUNTO = $_POST["Conjunto"];
$NOME = $_POST["Nome"];
$TELEFONE = $_POST["Telefone"];
$ENTREGA = $_POST["Entrega"];
SERVER["REQUEST_METHOD] == "("POST") => { $msg = $_POST[('response')]; . htmlspecialcars($aTPL);
{echo;"
<!Doctype html>
<head>
<meta charset="utf-8">
<title>Comprados</title>
<link rel="stylesheet" type="text/css" href="Site_Gostar/folha.css" media="all">
</head>
<body>
<caption>
<? echo "Os móveis foram comprados esta é a confirmação de dados cadastrados:<p>"?>;
<form>
        <label>CADEIRA</label>
        <input><? $Cadeira_id ?></input>
        
        <label>MESA</label>
        <input><? $mesa_id ?></input>
        
        <label>CONJUNTO</input>
        <td width='8'><? $Conjunto_id ?></input>
        
        <label>NOME</label>
        <input><? $nome_id ?></input>
        
        <label>TELEFONE</label>
        <input><? $telefone_id ?></input>
        
        <label>ENTREGA</label>
        <input><? $entrega_id ?></input></form>
<p><a href="Site_Gostar/index.html">Voltar ao início se quiser para outra compra.</a></p>
</caption>
</body>
</html>
";?>}