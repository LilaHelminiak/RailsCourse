# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@check = () ->
	$(     
			userAnswer = $('#userAnswer')
			answer = $('#answer')
			score = parseInt($('#word_score').val(), 10)
			if answer.text().trim() != userAnswer.val()
				answer.css("color", "red");
				score--
			else 
				answer.css("color", "green");
				score++
			$('#word_score').val score
			answer.show()
			userAnswer.prop( "disabled", true );
			$('#next_button').attr("disabled", false)
			$('#validate_button').attr("disabled", true)
	)
	
$('#submit_link').submit (e) ->  
  valuesToSubmit = $('#word_score').val()
  $.ajax
   type: 'POST'
   url: '/edit'
   data: valuesToSubmit
   dataType: 'JSON'
  .success () ->
   alert "done"

