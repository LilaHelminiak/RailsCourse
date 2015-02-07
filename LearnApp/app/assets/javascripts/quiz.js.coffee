# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@check = (count) ->
	$(     
		for i in [0...count] by 1
			userAnswer = $('#userAnswer' + i.toString())
			answer = $('#answer' + i.toString())
			if answer.text().trim() != userAnswer.val()
				answer.css("color", "red");
			else answer.css("color", "green");
			answer.show()
			userAnswer.prop( "disabled", true );
	)

