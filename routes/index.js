var express = require('express');
var exec1 = require('../sql/exec sp_generateARIScsv');
var exec2 = require('../sql/exec sp_generateLeanIXcsv');
//var read1 = require('../sql/exec readARIScsv');
//var read2 = require('../sql/exec readLeanIXcsv');
var process2 = require('../sql/exec sp_processARISData');
//var del1 = require('../sql/deleteARIScsvFile');
var router = express.Router();

//var app = express();

var execLoadARIS = function() {
    console.log('I come from the frontend ARIS Load')
};

var execLoadLeanIX = function() {
    console.log('I come from the frontend LeanIX Load')
};

/* GET home page. */
router.get('/', function(req, res) {
  res.render('index', { title: 'ARIS-LeanIX MAP' });
});

router.post('/', function(req, res) {
    var button1 = req.body.genARIScsv;
    var button2 = req.body.genLeanIXcsv;
    var button3 = req.body.loadARIScsv;
    var button4 = req.body.loadLeanIXcsv;

    console.log(req.body);
    res.sendStatus(204);

    if (button1 == "Generate"){
        //del1.delete();
        exec1.generate();
    }

    if (button2 == "Generate"){
        exec2.generate();
    }

    if (button3 == "Load"){
        //read1.read();
    }

    if (button4 == "Load"){
        //read2.read();
        process2.process();
    }
});

module.exports = router;