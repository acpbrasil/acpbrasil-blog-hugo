---
# type: "page"
title: "Está interessado?"
description: "Nos conte um pouco sobre você"
keywords: ["FAQ", "How do I", "questions", "what if", "como", "interessado", "contato"]
# date: 2018-04-09T23:34:06-03:00
---

## Nos conte um pouco sobre você

<form method="post" action="//formspree.io/{{ with .Site.Params.email }}{{.}}{{ end }}">
  <input type="hidden" name="_subject" value="{{ .Site.Params.contact.subject }}" />
  <!-- TODO Mostrar uma página de confirmação? -->
  <!-- <input type="hidden" name="_next" value="/thanks.html" /> -->
  
  <hr>
  <code class="TODO">Escolher como vai ser o formato do formulário:</code>
  <div class="form-group">
    <label for="name">Nome:</label>
    <input id="name" class="form-control" name="name" placeholder="Nome" type="text">
  </div>
  <div class="form-group">
    <label for="name" class="sr-only">Nome</label>
    <input id="name" class="form-control" name="name" placeholder="Nome" type="text">
  </div>
  <hr>

  <div class="form-group">
    <code class="TODO">Usar um campo do tipo dropdown para sexo?</code>
    <label for="gender" class="sr-only">Sexo</label>
    <input id="gender" class="form-control" name="_replyto" placeholder="Sexo" type="gender">
  </div>
  
  <div class="form-group">
    <label for="age" class="sr-only">Idade</label>
    <input id="age" class="form-control" name="age" placeholder="Idade" type="number">
  </div>
  
  <div class="form-group">
    <label for="email" class="sr-only">Email</label>
    <input id="email" class="form-control" name="_replyto" placeholder="Email" type="email">
  </div>

  <code class="TODO">Deixar um campo para que o enfermeiro possa deixar uma mensagem?</code>
  <div class="form-group">
    <label for="message" class="sr-only">Mensagem</label>
    <textarea id="message" cols="30" rows="5" class="form-control" name="message" placeholder="Você quer deixar alguma mensagem?"></textarea>
  </div>

  <code class="TODO">Qual vai ser o label do botão? Enviar?</code>
  <div class="form-group">
    <input class="btn btn-primary btn-lg" value="Enviar" type="submit">
  </div>
  
</form>

<!-- TODO Montar o form -->
<!-- 
Nome:
Sexo:
Idade:
 -->
Estado Civil:
E-mail:
Telefone:
Cidade onde mora:
Universidade da graduação:

Experiência profissional em enfermagem:
( ) Aluno de graduação
( ) Aluno de pós-graduação
( ) 0 – 12 meses
( ) 13 – 17 meses
( ) 18 – 24 meses
( ) acima de 24 meses

Já fez especialização? Se sim, em qual área?
( ) Sim. Qual? ______________________________
( ) Não

Nível de inglês:
( ) Iniciante
( ) Intermediário
( ) Avançado

Já realizou teste de proficiência em inglês (TOEFL ou IELTS)?
( ) Sim
( ) Não
