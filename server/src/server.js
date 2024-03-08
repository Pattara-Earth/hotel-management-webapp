var express = require('express')
var cors = require('cors')
var bodyParser = require('body-parser')
var jsonParser = bodyParser.json()
var app = express()

app.use(cors())

var mysql = require('mysql2');

var connection = mysql.createConnection({
  host     : 'mysql_hotel',
  user     : 'root',
  password : '1150',
  database : 'hotel',
  port: 3306
});
 
connection.connect();
// connection.end();

// --------------- Agent1 Routes ---------------

// Handling GET request to retrieve all records from 'agent1' table
app.get('/agent1', function (req, res, next) {
  connection.query(
    'SELECT * FROM agent1',
    function(err, results, fields){
      if (err){ res.json({status: 'error', message: err}); return }
      res.json(results);
    }
  );
})
// Handling GET request to retrieve record by AGCODE from 'agent1' table
app.get('/agent1/:AGCODE', function (req, res, next) {
  connection.query(
    'SELECT * FROM `agent1` WHERE AGCODE = ?',
    [req.params.AGCODE],
    function(err, results, fields){
      if (err){ res.json({status: 'error', message: err}); return }
      res.json(results);
    }
  );
})
// Handling POST request to create a new record in 'agent1' table
app.post('/agent1/create', jsonParser, function (req, res, next){    
  connection.execute(
    'INSERT INTO `agent1` (AGCODE, AGNAME, AGADDR1, AGADDR2, TEL, CONTACT1) VALUES (?, ?, ?, ?, ?, ?)',
    [req.body.AGCODE, req.body.AGNAME, req.body.AGADDR1, req.body.AGADDR2, req.body.TEL, req.body.CONTACT1],
    function(err, results, fields){
      if (err){res.json({status: 'error', message: err}); return }
      res.json({status: 200, message: 'success'})
    }
  );
})
// Handling PUT request to update a record in 'agent1' table
app.put('/agent1/update', jsonParser, function (req, res, next){
  connection.execute(
    'UPDATE `agent1` SET `AGNAME`= ?, `AGADDR1` = ? , `AGADDR2` = ? , `TEL` = ?, `CONTACT1` = ? WHERE `AGCODE`= ?',
    [req.body.AGNAME, req.body.AGADDR1, req.body.AGADDR2, req.body.TEL, req.body.CONTACT1, req.body.AGCODE],
    function(err, results, fields){
      if (err){res.json({status: 'error', message: err}); return }
      res.json({status: 200, message: 'success'})
    }
  );
})
// Handling DELETE request to delete a record from 'agent1' table
app.delete('/agent1/delete', jsonParser, function (req, res, next){
  connection.execute(
    'DELETE FROM `agent1` WHERE `AGCODE` = ?',
    [req.query.AGCODE],
    function(err, results, fields){
      if (err){res.json({status: 'error', message: err}); return }
      res.json({status: 200, message: 'success'})
    }
  )
})

// --------------- Ampher Routes ---------------

// Handling GET request to retrieve all records from 'ampher' table
app.get('/ampher', function (req, res, next) {
  connection.query(
    'SELECT * FROM ampher',
    function(err, results, fields){
      if (err){ res.json({status: 'error', message: err}); return }
      res.json(results);
    }
  );
})
// Handling GET request to retrieve record by AMCODE from 'ampher' table
app.get('/ampher/:AMCODE', function (req, res, next) {
  connection.query(
    'SELECT * FROM `ampher` WHERE AMCODE = ?',
    [req.params.AMCODE],
    function(err, results, fields){
      if (err){ res.json({status: 'error', message: err}); return }
      res.json(results);
    }
  );
})
// Handling POST request to create a new record in 'ampher' table
app.post('/ampher/create', jsonParser, function (req, res, next){    
  connection.execute(
    'INSERT INTO `ampher` (AMCODE, AMNAME, PVCODE) VALUES (?, ?, ?)',
    [req.body.AMCODE, req.body.AMNAME, req.body.PVCODE],
    function(err, results, fields){
      if (err){res.json({status: 'error', message: err}); return }
      res.json({status: 200, message: 'success'})
    }
  );
})
// Handling PUT request to update a record in 'ampher' table
app.put('/ampher/update', jsonParser, function (req, res, next){
  connection.execute(
    'UPDATE `ampher` SET `AMNAME`= ?, `PVCODE` = ? WHERE `AMCODE`= ?',
    [req.body.AMNAME, req.body.PVCODE, req.body.AMCODE],
    function(err, results, fields){
      if (err){res.json({status: 'error', message: err}); return }
      res.json({status: 200, message: 'success'})
    }
  );
})
// Handling DELETE request to delete a record from 'ampher' table
app.delete('/ampher/delete', jsonParser, function (req, res, next){
  connection.execute(
    'DELETE FROM `ampher` WHERE `AMCODE` = ?',
    [req.query.AMCODE],
    function(err, results, fields){
      if (err){res.json({status: 'error', message: err}); return }
      res.json({status: 200, message: 'success'})
    }
  )
})

// --------------- Room Types Routes ---------------

// Handling GET request to retrieve all records from 'room_type' table
app.get('/room-types', function (req, res, next) {
  connection.query(
    'SELECT * FROM type_room',
    function(err, results, fields){
      if (err){ res.json({status: 'error', message: err}); return }
      res.json(results);
    }
  );
})
// Handling GET request to retrieve record by TRCODE from 'room_type' table
app.get('/room-types/:TRCODE', function (req, res, next) {
  connection.query(
    'SELECT * FROM `type_room` WHERE TRCODE = ?',
    [req.params.AGCODE],
    function(err, results, fields){
      if (err){ res.json({status: 'error', message: err}); return }
      res.json(results);
    }
  );
})
// Handling POST request to create a new record in 'room_type' table
app.post('/room-types/create', jsonParser, function (req, res, next){    
  connection.execute(
    'INSERT INTO `room_type` (TRCODE, TRNAME, UPRICE, MUPRICE, UPRICE2, TRNAME1, type_bed) VALUES (?, ?, ?, ?, ?, ?, ?)',
    [req.body.TRCODE, req.body.TRNAME, req.body.UPRICE, req.body.MUPRICE, req.body.UPRICE2, req.body.TRNAME1, req.body.type_bed],
    function(err, results, fields){
      if (err){res.json({status: 'error', message: err}); return }
      res.json({status: 200, message: 'success'})
    }
  );
})
// Handling PUT request to update a record in 'room_type' table
app.put('/room-types/update', jsonParser, function (req, res, next){
  connection.execute(
    'UPDATE `room_type` SET `TRNAME`= ?, `UPRICE` = ?, `MUPRICE` = ?, `UPRICE2` = ?, `TRNAME1` = ?, `type_bed` = ? WHERE `TRCODE`= ?',
    [req.body.TRNAME, req.body.UPRICE, req.body.MUPRICE, req.body.UPRICE2, req.body.TRNAME1, req.body.type_bed, req.body.TRCODE],
    function(err, results, fields){
      if (err){res.json({status: 'error', message: err}); return }
      res.json({status: 200, message: 'success'})
    }
  );
})
// Handling DELETE request to delete a record from 'room_type' table
app.delete('/room-types/delete', jsonParser, function (req, res, next){
  connection.execute(
    'DELETE FROM `room_type` WHERE `TRCODE` = ?',
    [req.query.TRCODE],
    function(err, results, fields){
      if (err){res.json({status: 'error', message: err}); return }
      res.json({status: 200, message: 'success'})
    }
  )
})

// Starting Express server to listen on port 3000
app.listen(3000, jsonParser, function () {
  console.log('CORS-enabled rest api mysql server listening on port 3000')
})


