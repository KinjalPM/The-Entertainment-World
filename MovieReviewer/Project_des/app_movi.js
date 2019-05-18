// app.js

var express = require('express');
var bodyParser = require('body-parser');
var movie = require('./routes/user'); // Imports routes for the products
var cors = require('cors');

var app = express();
app.use(cors());


// Set up mongoose connection
var mongoose = require('mongoose');
var dev_db_url = 'mongodb://localhost:27017/project_movies';
var mongoDB = process.env.MONGODB_URI || dev_db_url;
mongoose.connect(mongoDB);
mongoose.Promise = global.Promise;
var db = mongoose.connection;
db.on('error', console.error.bind(console, 'MongoDB connection error:'));

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
app.use('/movies', movie);


var port = 1234;

app.listen(port, () => {
    console.log('Server is up and running on port numner ' + port);
});
