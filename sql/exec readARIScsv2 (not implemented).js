function readARIS2() {

    /*2
    var CSV2SQL = require('csv2sql-lite');
    var csv2sql = CSV2SQL({
        tableName: 'input_ARIS',
        dbName: 'mapdb',
        dropTable: false,
        seperator: ',',
        lineSeperator: '\r\n'
    });

    var fs = require('fs');
    var rstream = fs.createReadStream('../csv/ARIS_output.csv');
    var wstream = fs.createWriteStream('../exec/readARIS.sql');

    //var source = '../sql/mysql.sql';

    rstream.pipe(csv2sql).pipe(wstream);
    2*/

    /*1
    var execsql = require('execsql');
    var dbConfig = {
        host: 'localhost',
        user: 'root',
        password: '123456'
    };
    var sql = 'use mapdb;';
    console.log(__dirname);
    var sqlFile = __dirname + '/mysql.sql';
    //var sqlFile = '../sql/mysql.sql';

    execsql.config(dbConfig);
    execsql.exec(sql);
    execsql.execFile(sqlFile, function(err, results){
            console.log(results);
        });
        execsql.end();

    1*/



    ///*3
     var execSQL = require('exec-sql');
     var path = require('path');

     execSQL.connect('mapdb', 'root', '123456');
     //execSQL.executeDirectory(path.join(__dirname,'views'), function(err) {
         execSQL.executeDirectory('../views', function(err) {
             execSQL.disconnect();
             console.log('Done!');
         });
     //}
     //3*/
}


    //var mysql = require('mysql');

    /*
    var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '123456',
        database: 'mapdb'
    });
    fs.readFile(source, function (err, data) {
        if (err) throw err;
        console.log(data);
        return data;
    });

    connection.connect();
    connection.query(data, function (err, rows) {
        if (err) throw err;
        console.log(rows);
    });
    connection.end();
    */

    //});
//}
    readARIS2();

//module.exports.read = readARIS;
