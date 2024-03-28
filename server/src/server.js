const express = require('express')
var bodyParser = require('body-parser')
var mysql = require('mysql2/promise');
var app = express()

app.use(bodyParser.json())

const port = 3000 // Define port

let conn = null // hold the database connection

// Initialize MySQL connection function
const initMySQL = async () => {
    conn = await mysql.createConnection({
        host     : 'mysql_hotel',
        user     : 'root',
        password : '1150',
        database : 'hotel',
        port: 3306
    })
}

// ------------------ type_room API Routes ------------------

// Handling GET request to retrieve all records from 'type_room' table
app.get('/api/type_room', async (req, res) => {
    try {
        const results = await conn.query('SELECT * FROM type_room')
        res.json({status: 'ok', data: results[0]})
    } catch (err) {
        res.json({status: 'error', message: err})
    }
})

// Handling GET request to retrieve record by TRCODE from 'type_room' table
app.get('/api/type_room/:TRCODE', async (req, res) => {
    try {
        const results = await conn.query(
            'SELECT * FROM `type_room` WHERE TRCODE = ?', 
            req.params.TRCODE
        )
        res.json({status: 'ok', data: results[0]})
    } catch (err) {
        res.json({status: 'error', message: err})
    }
})

// Handling POST request to create a new record in 'type_room' table
app.post('/api/type_room', async (req, res) => {
    try {
        const results = await conn.query('INSERT INTO `type_room` SET ?', req.body)
        res.json({status: 'ok', data: results[0]})
    } catch (err) {
        res.json({status: 'error', message: err})
    }
})

// Handling PUT request to update a record by TRCODE in 'type_room' table
app.put('/api/type_room/:TRCODE', async (req, res) => {
    try {
        const results = await conn.query(
            'UPDATE `type_room` SET ? WHERE TRCODE = ?',
            [req.body, req.params.TRCODE]
        )
        res.json({status: 'ok', data: results[0]})
    } catch (err) {
        res.json({status: 'error', message: err})
    }
})

// Handling DELETE request to delete a record by TRCODE in 'type_room' table
app.delete('/api/type_room/:TRCODE', async (req, res) => {
    try {
        const results = await conn.query(
            'DELETE from `type_room` WHERE TRCODE = ?',
            req.params.TRCODE
        )
        res.json({status: 'ok', data: results[0]})
    } catch (err) {
        res.json({status: 'error', message: err})
    }  
})

// ------------------ room1 API Routes ------------------

// Handling GET request to retrieve all records from 'room1' table
app.get('/api/room1', async (req, res) => {
    try {
        const results = await conn.query('SELECT * FROM room1')
        res.json({status: 'ok', data: results[0]})
    } catch (err) {
        res.json({status: 'error', message: err})
    }
})

// Handling GET request to retrieve record by RNO from 'room1' table
app.get('/api/room1/:RNO', async (req, res) => {
    try {
        const results = await conn.query(
            'SELECT * FROM `room1` WHERE RNO = ?', 
            req.params.RNO
        )
        res.json({status: 'ok', data: results[0]})
    } catch (err) {
        res.json({status: 'error', message: err})
    }
})

// Handling POST request to create a new record in 'room1' table
app.post('/api/room1', async (req, res) => {
    try {
        const results = await conn.query('INSERT INTO `room1` SET ?', req.body)
        res.json({status: 'ok', data: results[0]})
    } catch (err) {
        res.json({status: 'error', message: err})
    }
})

// Handling PUT request to update a record by RNO in 'room1' table
app.put('/api/room1/:RNO', async (req, res) => {
    try {
        const results = await conn.query(
            'UPDATE `room1` SET ? WHERE RNO = ?',
            [req.body, req.params.RNO]
        )
        res.json({status: 'ok', data: results[0]})
    } catch (err) {
        res.json({status: 'error', message: err})
    }
})

// Handling DELETE request to delete a record by RNO in 'room1' table
app.delete('/api/room1/:RNO', async (req, res) => {
    try {
        const results = await conn.query(
            'DELETE from `room1` WHERE RNO = ?',
            req.params.RNO
        )
        res.json({status: 'ok', data: results[0]})
    } catch (err) {
        res.json({status: 'error', message: err})
    }  
})

// ------------------ room1_status API Routes ------------------

// Starting Express server to listen on port 
app.listen(port, async (req, res) => {
    await initMySQL()
    console.log('CORS-enabled rest api server listening on port ' + port)
})

