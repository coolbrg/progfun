$(document).ready(function () {
  $('#start_survey').on('click', function () {
    var survey_questions;

    survey_questions = {
      name: 'What is your name?',
      age: 'How old are you (in number only)?',
      color: 'What is your favourite color?',
      song: 'Which kind of song you like? <br>(bollywood, classical, pop, rock)',
      movie: 'What is your favourite movie?'
    };

    var displaySurveyResults = function(responses) {
      var survey_template = _.template($('#survey_template').html());
      $('#survey_results').html(survey_template({ surveys: responses }));
      $('.survey_panel').removeClass('hide');
      $('#start_survey').addClass('hide');
    }

    multiBootbox(survey_questions, displaySurveyResults);
  });
});
