var express = require('express');
var router = express.Router();
var apiService = require('../services/api');
var routeCache = require('route-cache');
var TTL = 180;

router.get('/', routeCache.cacheSeconds(TTL), function(req, res) {
  var options ={};
  options.section ='';
  apiService.getSection(options, function (json) {
    res.render('index', json.model);
  });
});

router.get('/channel/:section', routeCache.cacheSeconds(TTL), function(req, res) {
  var options ={};
  options.section ='channel/'+ req.params.section;
  apiService.getSection(options, function (json) {
    res.render('channel', json.model);
  });
});

router.get('/:section(@([A-Za-z0-9_]{2,15}))', routeCache.cacheSeconds(TTL), function(req, res) {
  var options ={};
  options.section = req.params.section;
  apiService.getSection(options, function (json) {
    res.render('user', json.model);
  });
});

router.get('/:section/:post', routeCache.cacheSeconds(TTL), function(req, res) {
  var options={};
  options.section = req.params.section;
  options.id = req.params.post;
  apiService.getPost(options, function (json) {
    res.render('post', json.model);
  });
});

module.exports = router;
