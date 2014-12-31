var request = require('request');

module.exports.getSection = function (options, callback) {

  request.get('https://medium.com/' + options.section + '?format=json', function(err, response, body) {
    var json = JSON.parse(body.substring(16));
    if (json.success === false) {
      callback({error:'404 "'+options.section+'" not found'});
      return;
    }
    callback({ route: 'section', section: options.section, model: json.payload});
  });
};

module.exports.getPost = function (options, callback) {

  request.get('https://medium.com/' + options.section + '/'+ options.id +'?format=json', function(err, response, body) {
    var json = JSON.parse(body.substring(16));
    if (json.success === false) {
      callback({error:'404 "'+options.section+'" not found'});
      return;
    }
    callback({ route: 'post', section: options.section, model: json.payload});
  });
};
