$(document).ready(function () {
  $('#start_survey').on('click', function () {
    var _question_kind, _question_text,
        _survey_questions, _survey_answers = {};

    _survey_questions = {
      name: 'What is your name?',
      age: 'How old are you (in number only)?',
      color: 'What is your favourite color?',
      song: 'Which kind of song you like? <br>(bollywood, classical, pop, rock)',
      movie: 'What is your favourite movie?'
    };

    function displaySurveyResults(responses) {
      var survey_template = _.template($('#survey_template').html());
      $('#survey_results').html(survey_template({ surveys: responses }));
      $('.survey_panel').removeClass('hide');
      $('#start_survey').addClass('hide');
    }

    function showPrompt(callback) {
      var f = _.partial(callback, _question_kind);
      bootbox.prompt(_question_text, f);
    }

    function setSurveyQuestion() {
      var first_survey_question_type, first_survey = {};
      first_survey_question_type = _.first(_.keys(_survey_questions));

      if (first_survey_question_type) {
        first_survey[first_survey_question_type] = _survey_questions[first_survey_question_type];
        delete _survey_questions[first_survey_question_type];
      }
      _question_kind = _.first(_.keys(first_survey));
      _question_text = _.first(_.values(first_survey));
    }

    function promptCallback(variable_name, value) {
      _survey_answers[variable_name] = value;
      setSurveyQuestion();
      if (_question_kind) {
        showPrompt(promptCallback);
      } else {
        displaySurveyResults(_survey_answers);
      }
    }

    setSurveyQuestion();
    showPrompt(promptCallback);
  });
});
