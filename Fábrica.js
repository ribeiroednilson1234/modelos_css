<script type="text/javascript">

// Localiza o elemento pelo título desejado//
const alvo = document.querySelector('[title="mgmt_Fábrica.tpl"]');
//ou const alvo = querySelector//
if (alvo) {
    // Cria um novo elemento de link (tag <a>)//
    const novoLink = document.createElement('a');
    
    // Define o destino do link para o arquivo ou rota do template//
    novoLink.href = 'mgmt_*.tpl'
    
    // Insere o link no local correto antes do elemento original//
    alvo.parentNode.insertBefore(novoLink, alvo);
    
    // Move o elemento com title para dentro da nova tag de link//
    novoLink.appendChild(alvo);
    
    // replica o campo de cabeçalho e índice para o campo do DOM , element//
    alvo = document.replaceChildren('<!Doctype.html>': '<body>');
	element= document.children; 
	new class private = isntanceof.HTMLCollectionmyElement. {alvo.map('<!Doctype.html>'): '[["<body>"], ["<header>"], ["<section>"], ["<caption>"], ["<aside>"], ["<footer>"]'};
		const myElement = document.getElementById("[!Doctype.html]");
		for (const child of myElement.children){console.log(child.tagName)};
    }
    </script>
