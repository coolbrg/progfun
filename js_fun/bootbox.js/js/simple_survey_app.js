$(document).ready(function () {
  $('#start_survey').on('click', function () {
    var survey_question, survey_questions, survey_answers = {};

    survey_questions = {
      name: 'What is your name?',
      age: 'How old are you (in number only)?',
      color: 'What is your favourite color?',
      song: 'Which kind of song you like? <br>(bollywood, classical, pop, rock)',
      movie: 'What is your favourite movie?'
    };

    function displaySurveyResults(responses) {
        var survey_results_div = $('#survey_results');

        survey_results_div.html('');
        _.each(responses, function (value, key) {
            survey_results_div.append('<li><strong>' + key + '</strong>: ' + value + '</li>');
        });
        $('.survey_panel').removeClass('hide');
        $('#start_survey').addClass('hide');
    }

    function showPrompt(variable, callback) {
        var f = _.partial(callback, _.keys(variable)[0]);
        bootbox.prompt(_.values(variable)[0], f);
    }

    function getFirstPrompt() {
        var survey_name, first_prompt = {};
        survey_name = _.first(_.keys(survey_questions));

        if (survey_name) {
            first_prompt[survey_name] = survey_questions[survey_name];
            delete survey_questions[survey_name];
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
    if(survey_question && !_.isEmpty(survey_question)) {
      showPrompt(survey_question, promptCallback);
    } else {
      displaySurveyResults(survey_answers);
    }
  });
});
