var mysql = require('mysql');

///////////////////////////////////////////////////////////////////////////////////////////

// Setup MySQL connection
// timezone is very NB

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'gaanfl2026',
  timezone: 'utc+0'  
});

connection.connect(function(err){
	if(err) throw err;
	console.log(`Sucessfully connected to MySQL database gaanfl2026`);
});

///////////////////////////////////////////////////////////////////////////////////////////

// GET /players
exports.getPlayers = function(req,res){

    connection.query(`SELECT * FROM players`, function(err, rows, fields) {
        if (err) throw err;

        res.status(200);  // OK
        res.send(JSON.stringify(rows));	  
    });	
}

exports.getTeams = function(req,res){

    connection.query(`SELECT * FROM teams`, function(err, rows, fields) {
        if (err) throw err;

        res.status(200);  // OK
        res.send(JSON.stringify(rows));	  
    });	
}


exports.getFixtures = function(req,res){

    connection.query(`SELECT * FROM fixtures`, function(err, rows, fields) {
        if (err) throw err;

        res.status(200);  // OK
        res.send(JSON.stringify(rows));	  
    });	
}


exports.getUsers = function(req,res){

    connection.query(`SELECT * FROM users`, function(err, rows, fields) {
        if (err) throw err;

        res.status(200);  // OK
        res.send(JSON.stringify(rows));	  
    });	
}

exports.getManagers = function(req,res){

    connection.query(`SELECT * FROM managers`, function(err, rows, fields) {
        if (err) throw err;

        res.status(200);  // OK
        res.send(JSON.stringify(rows));	  
    });	
}


exports.getTeam = function(req,res){

    connection.query(`SELECT * FROM players WHERE id=${req.params.id}`, function(err, rows, fields) {
        if (err) throw err;

        res.status(200);  // OK
        res.send(JSON.stringify(rows));	  
    });	
}
