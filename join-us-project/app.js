const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

const app = express();

app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: true }));

const connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	database: 'join_us'
});

app.get('/', function(req, res) {
	const q = 'SELECT COUNT(*) as count FROM users';

	connection.query(q, function(error, results) {
		if (error) throw error;

		res.render('home', { data: results[0].count });
	});
});

app.get('/joke', (req, res) => {
	const joke = '<strong>Wa? <em>-Za!</em></strong>';
	res.send(joke);
});

app.get('/register', (req, res) => {
	res.send('reg get');
});

app.post('/register', (req, res) => {
	const person = { email: req.body.email };
	connection.query('INSERT INTO users SET ?', person, (error, results) => {
		if (error) throw error;
		console.log(results);
		res.redirect('/');
	});
});

app.get('/random_num', (req, res) => {
	const num = Math.floor(Math.random() * 10 + 1);
	res.send('Your lucky number is ' + num);
});

app.listen(3000, () => {
	console.log('App listening on port 3000!');
});
