function generateARIS(){

    var mysql = require('mysql');
    var fs = require('fs');
    //var path = require('path');
    var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '123456',
        database: 'mapdb'
    });

    connection.connect();

    connection.query('CALL sp_generateARIScsv();', function(err, rows) {
        if (err) throw err;
        console.log(rows);
    });

    connection.end();
}

module.exports.generate = generateARIS;