var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var MovieSchema = new Schema({
    Name: {type: String, required: true, max: 100},
    Actor: {type: String, required: true},
    Rating: {type: Number, max: 100},
    Year: {type: String, max: 100},
    Category: {type: String, required: true},
    youtubeLink: {type: String, required: true},
    Comments: {type: String},
    M_OR_T: {type: String},
});


// Export the model
module.exports = mongoose.model('Movies', MovieSchema);