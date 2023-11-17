const express = require("express");
var cors = require('cors');

const app = express();
const PORT = 3003;
app.use(express.json());
const corsOptions ={
   origin:'*', 
   credentials:true,
   optionSuccessStatus:200,
}
app.use(cors(corsOptions));

// Handling get request
app.get('/', (res) => {
    res.send('hello world')
})
 
app.listen(PORT, () => {
    console.log(`Server is listening on port ${PORT}`);
});