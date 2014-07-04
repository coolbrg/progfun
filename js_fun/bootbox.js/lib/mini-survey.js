(function(global) {
  var Iterator = function(items) {
    this.index = 0;
    this.items = items;
    this.next = function() {
      return this.items[this.index++];
    };
  };

  var miniSurvey = function(surveys, surveyCallback) {
    var _survey_answers = {},
        iter = new Iterator(surveys);

    function showPrompt(survey, callback) {
      var _f = _.partial(callback, survey.key);
      bootbox.prompt(survey.text, _f);
    }

    function promptCallback(name, value) {
      var survey;
      _survey_answers[name] = value;
      survey = iter.next();
      if (survey) {
        showPrompt(survey, promptCallback);
      } else {
        surveyCallback(_survey_answers);
      }
    }

    showPrompt(iter.next(), promptCallback);
  };

  global.miniSurvey = miniSurvey;
})(typeof window === 'undefined' ? this : window);


