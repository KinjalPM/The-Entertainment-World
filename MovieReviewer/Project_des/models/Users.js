var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var UserSchema = new Schema({
    emailId: {type: String, required: true, max: 100},
    password: {type: String, required: true},
    UserName: {type: String, max: 100},
    Subscription: {type: Boolean},
    Watchlist: {type: String},
});


// Export the model
module.exports = mongoose.model('User', UserSchema);