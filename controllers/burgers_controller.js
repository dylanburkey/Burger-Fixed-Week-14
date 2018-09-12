// Route Logic

const express = require('express');
const router = express.Router();
const burger = require('../models/burger.js');
const moment = require('moment');

// Redirect the root route '/' to /burgers
router.get('/', function(req, res) {
	res.redirect('/burgers');
});

// At the default /burgers route, use the burger model to retrieve all records
router.get('/burgers', function(req, res) {
	burger.all(function(data) {		
		var hndlbrsObj = {burgers: data };
		console.log(hndlbrsObj);
		res.render('index', hndlbrsObj);
	});
});

// I was playing around with Moment - I did not end up using it
router.post('/burgers/create', function(req, res) {
	burger.create(['burger_name', 'devoured', 'date'], [req.body.name, false, moment().format("YYYY-MM-DD HH:mm:ss")], function() {
		res.redirect('/burgers');
	});	
});


router.put('/burgers/update/:id', function(req, res) {
	var condition = 'id = ' + req.params.id;

	console.log("condition:", condition);

	burger.update({devoured: req.body.devoured }, condition, function() {
		res.redirect('/burgers');
	});
});

module.exports = router;