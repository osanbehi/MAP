var express = require('express');
var exec1 = require('../sql/exec sp_generateARIScsv');
var router = express.Router();

//var app = express();

var execGenARIS = function() {
    console.log('I come from the frontend ARIS Gen')
};

var execGenLeanIX= function() {
    console.log('I come from the frontend LeanIX Gen')
};

var execLoadARIS = function() {
    console.log('I come from the frontend ARIS Load')
};

var execLoadLeanIX = function() {
    console.log('I come from the frontend LeanIX Load')
};

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'ARIS-LeanIX MAP' });
});


router.post('/', function(req, res) {
    var button1 = req.body.genARIScsv;
    var button2 = req.body.genLeanIXcsv;
    var button3 = req.body.loadARIScsv;
    var button4 = req.body.loadLeanIXcsv;

    console.log(req.body);
    res.sendStatus(200);

    if (button1 == "Generate"){
        //execGenARIS();
        exec1.generate();
        //res.render('index');
    }
    if (button2 == "Generate"){
        execGenLeanIX();
    }
    if (button3 == "Load"){
        execLoadARIS();
    }
    if (button4 == "Load"){
        execLoadLeanIX();
    }
});

module.exports = router;