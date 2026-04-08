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

        res.status(200); 
        res.send(JSON.stringify(rows));	  
    });	
}

exports.getTeams = function(req,res){

    connection.query(`SELECT * FROM teams`, function(err, rows, fields) {
        if (err) throw err;

        res.status(200);  
        res.send(JSON.stringify(rows));	  
    });	
}


exports.getFixtures = function(req,res){

    connection.query(`SELECT * FROM fixtures`, function(err, rows, fields) {
        if (err) throw err;

        res.status(200);  
        res.send(JSON.stringify(rows));	  
    });	
}


exports.getUsers = function(req,res){

    connection.query(`SELECT * FROM users`, function(err, rows, fields) {
        if (err) throw err;

        res.status(200);
        res.send(JSON.stringify(rows));	  
    });	
}

exports.getManagers = function(req,res){

    connection.query(`SELECT * FROM managers`, function(err, rows, fields) {
        if (err) throw err;

        res.status(200);
        res.send(JSON.stringify(rows));	  
    });	
}


exports.getTeam = function(req,res){

    connection.query(`SELECT * FROM players WHERE id=${req.params.id}`, function(err, rows, fields) {
        if (err) throw err;

        res.status(200);
        res.send(JSON.stringify(rows));	  
    });	
}



module.exports.increaseRank = function(req, res) {
    let teamName = req.body.name;
    console.log("team chose:", teamName);
    connection.query(
        `UPDATE teams SET powerrank = powerrank + 1 WHERE name = ?`,
        [teamName],
        function(err, result) {
            if(err) {
                console.log("ITS NOT WORKING HELPP MEE:", err);
                res.status(500).json({ error: err });
            } else {
                res.status(200).json(result);
            }
        }
    );
}