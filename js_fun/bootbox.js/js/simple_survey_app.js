$(document).ready(function () {
  $('#start_survey').on('click', function () {
    var survey_questions = [
      { key: 'name', text: 'What is your name?' },
      { key: 'age', text: 'How old are you (in number only)?' },
      { key: 'color', text: 'What is your favourite color?' },
      { key: 'song', text: 'Which kind of song you like? <br>(bollywood, classical, pop, rock)' },
      { key: 'movie', text: 'What is your favourite movie?' },
    ];

    var displaySurveyResults = function(responses) {
      var survey_template = _.template($('#survey_template').html());
      $('#survey_results').html(survey_template({ surveys: responses }));
      $('.survey_panel').removeClass('hide');
      $('#start_survey').addClass('hide');
    }

    miniSurvey(survey_questions, displaySurveyResults);
  });
});
