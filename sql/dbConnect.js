var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'arisdb'
});

connection.connect();

connection.query('SELECT * FROM Object_Occurrence WHERE d_guid=?', ["e9b60299-b6ee-11e6-2448-005056bd44d2"],function(err, rows, fields) {
    if (err) throw err;
    console.log(rows);
});

connection.end();