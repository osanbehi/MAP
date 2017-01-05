function deleteARISFile(){

    var fs = require('fs');

    if (fs.existsSync('../csv/ARIS_output.csv')) {
        console.log('entré a parte 1');
        fs.unlink('../csv/ARIS_output.csv', function (err) {
            if (err) return console.log(err);
            console.log('ARIS file deleted successfully');
        });
    } else {
        console.log('entré a parte 2');
        console.log('ARIS file not found 123');
    }
}

module.exports.delete = deleteARISFile;
