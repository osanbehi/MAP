function processLeanIX(){

    var mysql = require('mysql');
    var fs = require('fs');
    var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '123456',
        database: 'mapdb'
    });

    connection.connect();

    connection.query('CALL sp_processLeanIXData();', function(err, rows) {
        if (err) throw err;
        console.log(rows);
    });

    connection.end();
}

module.exports.process = processLeanIX;