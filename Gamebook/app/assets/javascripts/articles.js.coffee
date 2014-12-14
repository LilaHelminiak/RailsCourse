# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@preview = () ->
  $(
     
     text = document.getElementById('article_text').value
     answers = text.match(/{(.*?)}/g)  
     parse = text 
     for answer in answers
       answer_text = answer.split(';')[0].substr(1)
       parse = replace(parse, answer, '<input type=\"radio\">' + answer_text) 
     parse_newlines = replace(parse, /\n/g,  "<br/>" )     
     document.getElementById('preview').innerHTML = parse_newlines
   )
   
@replace = (text, pattern, replace_msg) -> text.replace pattern, replace_msg
