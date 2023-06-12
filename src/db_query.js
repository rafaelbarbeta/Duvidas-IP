const dotenv = require ('dotenv');
var {Pool} = require('pg');
dotenv.config();

//DB authentication
var pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: process.env.DATABASE_DISABLE_SSL ? false : {
        rejectUnauthorized: false
    }
});

//Query function it recieves a 'query' and the 'values' that go into it, this
//prevents any SQL injections from working
module.exports = async function newQuery(query, values){

    //We try performing the query, if it doesn't work we print the error on console
    //and return a '-1' to indicate that the query has failed. If the query does work
    //we return the result produced by that query.
    try{
        var result = await pool.query({
            text: query,
            values
        });
        return result;
    }catch(error){
        console.log("=================\nError on Query: \n"+error)
        return -1;
    };
}



