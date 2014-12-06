# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@show = () ->
  $(
     text = document.getElementById('article_text').innerHTML
     parse_radio_buttons = replace(text, /\[ \]/g, "<input type=\"radio\">")
     parse_newlines = replace(parse_radio_buttons, /\n/g,  "<br/>" )
     document.getElementById('preview').innerHTML = parse_newlines
   )
   
@replace = (text, pattern, replace_msg) -> text.replace pattern, replace_msg

