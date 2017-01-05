function cleanARISInput(){

    var mysql = require('mysql');
    var fs = require('fs');
    var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '123456',
        database: 'mapdb'
    });

    connection.connect();

    connection.query('DELETE FROM mapdb.Input_ARIS;', function(err, rows) {
        if (err) throw err;
        console.log(rows);
    });

    /*
    connection.query('LOAD DATA LOCAL INFILE ? INTO TABLE mapdb.Input_ARIS (d_guid, m_guid, m_name, m_description, m_group_path) FIELDS ESCAPED BY ? TERMINATED BY ? ENCLOSED BY ? LINES TERMINATED BY ? IGNORE 0 ROWS;', ['C:/MAP/csv/ARIS_output.csv', '"', ',', '"', '\r\n'] ,function(err, rows) {
        if (err) throw err;
        console.log(rows);
    });
    */

    connection.end();
}

module.exports.clean = cleanARISInput;