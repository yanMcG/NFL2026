var express = require("express");
var bodyParser = require("body-parser");
// 
var model = require('./model/db.js');  //

const cors = require('cors');

var app = express();

// serves files in public folder
app.use(express.static('public'));

app.use(cors());

// NB:: this must be included to get JSON content sent with requests
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:false}));

///////////////////////////////////////////////////////////////////////////////////////////

// REST API /teams GET route
app.route('/teams')
  .get(function (req, res) {  
    model.getTeams(req, res);
})

app.route('/players')
  .get(function (req, res) {  
    model.getPlayers(req, res);
})


app.route('/fixtures')
  .get(function (req, res) {  
    model.getFixtures(req, res);
})


app.route('/managers')
  .get(function (req, res) {  
    model.getManagers(req, res);
});

app.route('/users')
  .get(function (req, res) {  
    model.getUsers(req, res);
});


//testing to see if can get team name from request
app.route('/teams/increaseRank')
  .put(function (req, res) {
    model.increaseRank(req, res);
  });

//Hoping to call the function in DB, to chnage the home/away scores in database
app.route('/fixtures/:id')
  .put(function (req, res) {
    console.log('server made it this far lads');
    model.updateFixture(req, res);
  });


app.route('/scoring-stats') 
   .get(function (req, res) {  
    model.teamAndFixtures(req, res);
  });

var myServer = app.listen(3000, function() {
  console.log("Server listening on port 3000");
});
