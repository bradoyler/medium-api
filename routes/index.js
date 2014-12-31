var express = require('express');
var router = express.Router();
var apiService = require('../services/api');
var routeCache = require('route-cache');
var TTL = 180;

router.get('/', function(req, res) {
  res.render('index', { title: 'Medium API' });
});

router.get('/demo/:section', routeCache.cacheSeconds(TTL), function(req, res) {
  var options ={};
  options.section = req.params.section;
  apiService.getSection(options, function (json) {
    res.json(json.model);
  });
});

router.get('/demo/:section/:post', routeCache.cacheSeconds(TTL), function(req, res) {
  var options={};
  options.section = req.params.section;
  options.id = req.params.post;
  apiService.getPost(options, function (json) {
    res.render('post', json.model);
  });
});

module.exports = router;
