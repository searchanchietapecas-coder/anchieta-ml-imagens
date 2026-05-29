# Pacote para hospedagem das imagens — Anchieta ML

Pasta autocontida pronta para upload em qualquer hosting estatico
(Servidor IIS/Nginx/Apache, GitHub Pages, Netlify, AWS S3 + CloudFront, etc).

## Conteudo

- `imagens/`  - 833 arquivos JPG, nomeados pelo codigo BR Company
- `sku/`      - 831 paginas HTML individuais (uma por SKU)
- `index.html` - catalogo navegavel com busca

## Como publicar

1. Suba a pasta inteira para o servidor.
2. As URLs publicas ficarao:
     `https://<seu-dominio>/imagens/000001.jpg`
3. Atualize o `.env` do gerador:
     ML_URL_PREFIXO_FOTOS=https://<seu-dominio>/imagens/
4. Rode `run.bat` de novo para a planilha XLSX ser regerada com as URLs corretas.

## Observacao sobre o ML

O Mercado Livre aceita URLs de imagem JPG/PNG via HTTPS. A coluna "Fotos"
da planilha sera preenchida com a URL da imagem (nao do HTML).
As paginas HTML deste pacote sao APENAS para revisao visual interna e
para servir as imagens.

Gerado em: 2026-05-29 08:51:41
