function generateARIS(){

var mysql = require('mysql');
var fs = require('fs');
var path = require('path');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'mapdb'
});

//fs.stat('../csv/ARIS_output.csv', function (err, stats) {
    //console.log(stats);
    //if (err) {
        //return console.error(err);
    //}

    fs.unlink('../csv/ARIS_output.csv',function(err){
        if(err) return console.log(err);
        console.log('file deleted successfully');
    });
//});

connection.connect();

connection.query('CALL sp_generateARIScsv();', function(err, rows) {
    if (err) throw err;
    console.log(rows);
});

connection.end();

};

module.exports.generate = generateARIS;