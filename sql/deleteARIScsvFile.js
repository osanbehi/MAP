function deleteARISFile(){

    var fs = require('fs');

    if (fs.existsSync('../MAP/csv/ARIS_output.csv')) {
        fs.unlink('../MAP/csv/ARIS_output.csv', function (err) {
            if (err) return console.log(err);
            console.log('ARIS file deleted successfully');
        });
    } else {
        console.log('ARIS file not found');
    }
}

module.exports.delete = deleteARISFile;
