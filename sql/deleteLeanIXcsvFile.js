function deleteLeanIXFile(){

    var fs = require('fs');

    if (fs.existsSync('../MAP/csv/LeanIX_output.csv')) {
        fs.unlink('../MAP/csv/LeanIX_output.csv', function (err) {
            if (err) return console.log(err);
            console.log('LeanIX file deleted successfully');
        });
    } else {
        console.log('LeanIX file not found');
    }
}

module.exports.delete = deleteLeanIXFile;