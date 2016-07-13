const settings = require("./settings");


var knex = require("knex")({
 client: "pg",
  connection: {
    user:     settings.user,
    password: settings.password,
    database: settings.database,
    host:     settings.hostname,
    port:     settings.port,
    ssl:      settings.ssl
  }
});

var query = knex.select(["name", "rank"]).from("sailors");

var rank = process.argv[2];
if(rank) {
  query = query.where({"rank": rank});
}

console.log("SQL----");
console.log(query.toSQL());

console.log("RESULTS---");
query.then(function(rows) {
  console.log(rows);
});