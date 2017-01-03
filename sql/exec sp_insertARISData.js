var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'mapdb'
});

connection.connect();

connection.query('CALL sp_insertARISData();', function(err, rows) {
    if (err) throw err;
    console.log(rows);
});

connection.end();