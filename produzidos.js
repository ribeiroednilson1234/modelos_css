javascript

// Localiza o elemento pelo título desejado//
const alvo = document.querySelector('[title="mgmt_PRODUZIDOS.tpl"]');
//ou const alvo = querySelector//
if (alvo) {
    // Cria um novo elemento de link (tag <a>)//
    const novoLink = document.createElement('a');
    
    // Define o destino do link para o arquivo ou rota do template//
    novoLink.href = 'mgmt.tpl';
    
    // Insere o link no local correto antes do elemento original//
    alvo.parentNode.insertBefore(novoLink, alvo);
    
    // Move o elemento com title para dentro da nova tag de link//
    novoLink.appendChild(alvo);
}

