//function readARIS(){

    var mysql = require('mysql');
    //var fs = require('fs');
    var exporter = require('csv-to-mysql');
    //var cm = require('csv-mysql');
    //var expect = require('expect');

    var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '123456',
        database: 'mapdb'
    });

    connection.connect();
    connection.query('DROP TABLE IF EXISTS mapdb.ARIS_output;', function(err, rows) {
        if (err) throw err;
        console.log(rows);
    });
    connection.end();

    exporter('localhost', 'mapdb', 'root', '123456', '../csv/ARIS_output.csv');
//}

//module.exports.clean = readARIS;