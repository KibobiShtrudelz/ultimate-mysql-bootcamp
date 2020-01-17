const mysql = require("mysql");
const faker = require("faker");

const connection = mysql.createConnection({
	host: "localhost",
	user: "root",
	database: "join_us"
});

// SELECTING DATA
// const q = "SELECT COUNT(*) AS total FROM users";

// connection.query(q, function (error, results, fields) {
// 	if (error) throw error;

// 	console.log(results);
// });

// INSERTING DATA
// const q = "INSERT INTO users (email) VALUES ('wazaa@maza.io')";

// connection.query(q, function (error, results, fields) {
// 	if (error) throw error;
// 	console.log(results);
// });

// INSERTING DATA 2
// const person = { email: faker.internet.email() };

// connection.query("INSERT INTO users SET ?", person, function(err, result) {
// 	if (err) throw err;
// 	console.log(result);
// });

// const person = {
// 	email: faker.internet.email(),
// 	created_at: faker.date.past()
// };

// const end_result = connection.query("INSERT INTO users SET?", person, function(err, result) {
// 	if (err) throw err;
// 	console.log(result);
// });

// INSERTING LOTS OF DATA!!!===============================
const data = [];

for(let i = 0; i < 500; i++) {
	data.push([
		faker.internet.email(),
		faker.date.past()
	]);
}

const q = "INSERT INTO users (email, created_at) VALUES ?";

connection.query(q, [data], function(err, result) {
	if (err) throw err;
	console.log(result);
});

connection.end();
