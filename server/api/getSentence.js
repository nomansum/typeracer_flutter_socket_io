const axios = require("axios")



const getSentence = async()=>{
  const jokeData = await axios.get("https://api.quotable.io/random")
  const content = jokeData.data['content'];
  
 // console.log(content);


  return content.split(' ');
}
module.exports = getSentence;