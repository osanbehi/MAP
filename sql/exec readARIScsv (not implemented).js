function readARIS(){

    var mysql = require('mysql');
    var exporter = require('csv-to-mysql');
    //var exporter = require('../node_modules/csv-to-mysql_custom/index');
    /*
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
    */
    //input_ARIS
    exporter('localhost', 'mapdb', 'root', '123456', '../csv/ARIS_output.csv');
}

module.exports.read = readARIS;