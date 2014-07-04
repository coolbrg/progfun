$(document).ready(function () {
  $('#start_survey').on('click', function () {
    var survey_question, survey_questions, survey_answers = {};

    survey_questions = [
      { name: 'What is your name?' },
      { age: 'How old are you (in number only)?', values: [15, 25], type: 'range' },
      { color: 'What is your favourite color?', values: ['Red', 'Blue', 'Green', 'Yellow'],
        type: 'radio' },

      { song: 'Which kind of song you like?', values: ['bollywood', 'classical', 'pop', 'rock'],
        type: 'checkbox' },
      { movie: 'What is your favourite movie?' }
    ];

    function displaySurveyResults(responses) {
        var survey_results_div = $('#survey_results');

        survey_results_div.html('');
        _.each(responses, function (value, key) {
            survey_results_div.append('<li><strong>' + key + '</strong>: ' + value + '</li>');
        });
        $('.survey_panel').removeClass('hide');
        $('#start_survey').addClass('hide');
    }

    function showPrompt(form, callback) {
      bootbox.dialog(form, [{
        "label" : "Success!",
        "class" : "class-with-width",
        callback: function() {
          alert("great success");
        }
      }]);
        var f = _.partial(callback, _.keys(variable)[0]);
        bootbox.prompt(_.values(variable)[0], f);
    }

    function getFirstPrompt() {
        var first_survey, name, values, first_prompt = {};
        first_survey = _.first(survey_questions);
        name = _.first(_.keys(first_survey));
        values = _.first(_.values(first_survey));

        if (first_key) {
            first_prompt[first_key] = survey_questions[name];
            delete survey_questions[first_key];
        }
        return first_prompt;
    }

    function promptCallback(variable_name, value) {
        var next_survey_question;
        survey_answers[variable_name] = value;

        next_survey_question = getFirstPrompt();
        if (next_survey_question && !_.isEmpty(next_survey_question)) {
            showPrompt(next_survey_question, promptCallback);
        } else {
            displaySurveyResults(survey_answers);
        }
    }

    survey_question = getFirstPrompt();
    if (survey_question && !_.isEmpty(survey_question)) {
      showPrompt(survey_question, promptCallback);
    } else {
      displaySurveyResults(survey_answers);
    }
  });

});

















/*
bootbox.dialog("I am a custom dialog", [{
  "label" : "Success!",
  "class" : "class-with-width",
  callback: function() {
    alert("great success");
  }
}]);
*/