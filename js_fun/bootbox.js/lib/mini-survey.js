(function(global) {
  var multiBootbox = function(surveys, surveyCallback) {
    var _question_kind, _question_text, _survey_answers = {};

    function showPrompt(callback) {
      var f = _.partial(callback, _question_kind);
      bootbox.prompt(_question_text, f);
    }

    function setSurveyQuestion() {
      var first_survey_question_type, first_survey = {};
      first_survey_question_type = _.first(_.keys(surveys));

      if (first_survey_question_type) {
        first_survey[first_survey_question_type] = surveys[first_survey_question_type];
        delete surveys[first_survey_question_type];
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
        surveyCallback(_survey_answers);
      }
    }

    setSurveyQuestion();
    showPrompt(promptCallback);
  }

  window.multiBootbox = multiBootbox;
})(typeof window === 'undefined' ? this : window);


