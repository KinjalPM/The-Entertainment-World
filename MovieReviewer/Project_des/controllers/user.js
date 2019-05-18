var Movies = require('../models/Movies');
var Users = require('../models/Users');


//Simple version, without validation or sanitation


exports.movie_details = function (req, res) {
    Movies.find(function (err, user) {
        if (err) return next(err);
        res.send(user);
    })
};

exports.user_create = function (req, res) {
    var usr = new Users(
        {
            emailId: req.body.emailId,
            password: req.body.password,
            UserName: req.body.UserName,
            Subscription: false,
            Watchlist: "",
        }
    );
    usr.save(function (err) {
        res.send('Succeess')
    })
};

exports.user_details = function (req, res) {
    Users.find(function (err, user) {
        if (err) return next(err);
        res.send(user);
    })
};

exports.user_find = function (req, res) {
    Users.findOne({emailId: req.params.emailId},function (err, user) {
        if (err) return next(err);
        if(user)
            res.send('Success'+'@'+user.password);
    });
};

exports.comment_update = function (req, res) {
    Movies.findByIdAndUpdate(req.params.id, {$set: req.body}, function (err, user) {
        if (err) return next(err);
        res.send('Comment udpated.');
    });
};