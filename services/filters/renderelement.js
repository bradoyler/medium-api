var util      = require('util');

module.exports = function (input) {
  var el = 'p';
  if(input.type===3){
    el = 'h3';
  }
  else if(input.type===13) {
    el = 'h4';
  }

  return util.format('<%s class="graff--%s graf--first" name="%s">%s</%s>', el, el, input.name, input.text, el);
};
