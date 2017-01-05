var express = require('express');
var exec1 = require('../sql/exec sp_generateARIScsv');
var del1 = require('../sql/deleteARIScsvFile');
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
router.get('/', function(req, res) {
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

        //del1.delete();
        exec1.generate();

        /*
        //execGenARIS();
        console.log('I arrived at the button');
        del1.delete() {
            if (err) {
                console.log('I arrived at the error');
                return console.error(err);
                //console.log(gen);
            } else {
                console.log('I arrived at the generate part');
                exec1.generate();
            }
        //res.render('index');
        });
        */

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