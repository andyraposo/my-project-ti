<?php

function imprimeMenuInfinito( array $menuTotal , $idPai = 0, $nivel = 0 )
{
        // abrimos a ul do menu principal
        echo str_repeat( "\t" , $nivel ),'<ul>',PHP_EOL;
        // itera o array de acordo com o idPai passado como parâmetro na função
        foreach( $menuTotal[$idPai] as $idMenu => $menuItem)
        {
                // imprime o item do menu
                echo str_repeat( "\t" , $nivel + 1 ),'<li><a href="',$menuItem['link'],'">',$menuItem['name'],'</a>',PHP_EOL;
                // se o menu desta iteração tiver submenus, chama novamente a função
                if( isset( $menuTotal[$idMenu] ) ) imprimeMenuInfinito( $menuTotal , $idMenu , $nivel + 2);
                // fecha o li do item do menu
                echo str_repeat( "\t" , $nivel + 1 ),'</li>',PHP_EOL;
        }
        // fecha o ul do menu principal
        echo str_repeat( "\t" , $nivel ),'</ul>',PHP_EOL;
}

$mysqli = new mysqli('192.168.87.129:3315','portal','portal@','portal');

$query = $mysqli->query('SELECT * FROM menu ORDER BY menuIdPai');
while($row = $query->fetch_object())
{
        $menuItens[$row->menuIdPai][$row->menuId] = array('link' => $row->menuLink,'name' => $row->menuNome);
}
imprimeMenuInfinito($menuItens);
?>