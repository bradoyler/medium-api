var express = require('express');
var request = require('request');
var routeCache = require('route-cache');
var router = express.Router();

router.get('/', function(req, res) {
  res.json({ title: 'welcome' });
});

router.get('/:section', routeCache.cacheSeconds(180), function(req, res) {
  var section = req.params.section;
  request.get('https://medium.com/' + section + '?format=json', function(err, response, body) {
    var json = JSON.parse(body.substring(16));
    if (json.success === false) {
      res.json({error:'404 "'+section+'" not found'});
      return;
    }
    res.json({ route: 'section', section: section, model: json.payload});
  });
});

router.get('/:section/:article', routeCache.cacheSeconds(180), function(req, res) {
  var section = req.params.section;
  var id = req.params.article;
  request.get('https://medium.com/' + section + '/'+ id +'?format=json', function(err, response, body) {
    var json = JSON.parse(body.substring(16));
    if (json.success === false) {
      res.json({error:'404 "'+section+'" not found'});
      return;
    }
    res.json({ route:'article', section: section, model: json.payload});
  });
});

module.exports = router;
