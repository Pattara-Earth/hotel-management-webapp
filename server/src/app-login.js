var express = require('express')
var cors = require('cors')
var bodyParser = require('body-parser')
var jsonParser = bodyParser.json()
var app = express()
const bcrypt = require('bcrypt')
const saltRounds = 10;
var jwt = require('jsonwebtoken');
const secret = 'hotel-web' // secret for generate json token

app.use(cors())

var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '1150',
    database : 'hotel',
    port: 3306
  });

// register
app.post('/register', jsonParser, function (req, res, next){
    bcrypt.hash(req.body.PWD1, saltRounds, function(err, hash) {
        connection.execute(
            'INSERT INTO `USERS` (USR1, PWD1, UNAME, IMAGE1) VALUES (?, ?, ?, ?)',
            [req.body.USR1, hash, req.body.UNAME, req.body.IMAGE1],
            function(err, results, fields){
                if (err){
                    res.json({status: 'error', message: err})
                    return
                }
                res.json({status: 200, message: 'insert success'})
            }
        );
    });
})

// login
app.post('/login', jsonParser, function (req, res, next){
    connection.execute(
        'SELECT * FROM USERS WHERE USR1=?',
        [req.body.USR1],
        function(err, users, fields){
            if (err) {res.json({status: 'error', message: err}); return } 
            if (users.length == 0){res.json({status: 'error', message: 'no users found'}); return }
            // compare hash password
            bcrypt.compare(req.body.PWD1, users[0].PWD1, function(err, isLogin) {
                if(isLogin){
                    // generate json token
                    var token = jwt.sign({ USR1: users[0].USR1 }, secret, {expiresIn: '7d'});
                    res.json({status: 200, message: 'login success', token})
                    
                }else{
                    res.json({status: 'error', message: 'incorrect password'})
                }
            });
        }
    );
})

// authorization
app.post('/authen', jsonParser, function (req, res, next) {
    // verify token
    const token = req.headers.authorization.split(' ')[1]
    jwt.verify(token, secret, function (err, decoded) {
        if (err) { res.json({status: 'error', message: err}); return } 
        else { res.json({status: 200, decoded}) } 
    })
})


// Table ampher
// selcet from ampher (get)
app.get('/ampher', function (req, res, next) {
    connection.query(
      'SELECT * FROM ampher',
      function(err, results, fields){
        if (err){
          res.json({status: 'error', message: err})
        }
        res.json(results);
      }
    );
  })
  // post ampher
  app.post('/ampher')

app.listen(3000, jsonParser, function () {
    console.log('CORS-enabled web server listening on port 3000')
  })


