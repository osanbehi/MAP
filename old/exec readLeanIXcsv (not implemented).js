function readLeanIX(){

    var mysql = require('mysql');
    var exporter = require('csv-to-mysql');

    var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '123456',
        database: 'mapdb'
    });

    connection.connect();
    connection.query('DROP TABLE IF EXISTS mapdb.LeanIX_output;', function(err, rows) {
        if (err) throw err;
        console.log(rows);
    });
    connection.end();

    exporter('localhost', 'mapdb', 'root', '123456', '../csv/LeanIX_output.csv');
}

module.exports.read = readLeanIX;