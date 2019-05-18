var express=require('express');
var path=require('path');
var app=express();
var bodyParser=require('body-parser');

app.set('port',3000);
app.use(bodyParser.urlencoded({ extended: true })); 
app.use(bodyParser.json());

var server = app.listen(app.get('port'), function() {
  var port = server.address().port;
  console.log('Running on port ' + port); 
 
});

var nodemailer=require('nodemailer');
var transporter=nodemailer.createTransport({
    service:'Gmail',
    auth:{
        user:'careersatreviewer@gmail.com',
        pass:'Admin@123' 
    }
});

app.get('/apply', function(req,res){
  res.sendFile(path.join(__dirname,'enquiry1.html'));


});

app.post('/apply', function(req,res){

    console.log("Form is:", req.body);
    var body=req.body;
    var email=body.email;
    var fname=body.fname;
    var lname=body.lname;
    
  


   
 
  var mailOptions = {
      from: 'careersatreviewer@gmail.com',
      to: email,
      subject: 'Query Received',
      html: '<p>Hello</p><p>Thank you for contacting us. If we have any openings, our recruiting team will reach out to you to discuss next steps.</p><p>The Movie Reviewer Talent Acquistion Team</p>'
    };

    transporter.sendMail(mailOptions, function(error, info){
      if (error) {
        console.log(error);
      } else {
        console.log('Email sent: ' + info.response);
      }
    });
    res.redirect(path.join(__dirname,'home.html'));


 
      
    
});

