var _ = require('lodash');
var bcrypt = require('bcrypt');
module.exports = { 
    getAllPosts(){
        response = Posts.find(); 
        return response;
    },
    getSinglePost(postid){
        response = Posts.findOne({id:postid});
        return response;
    },
    getUserByUsername(username){
        response = Users.findOne({username:username});
        return response;
    },
    login(data){
        response = Users.findOne({username:data.username, password:data.password});
        return response;
    }, 
    async createUser(data){
        

        bcrypt.hash(data.password, 10).then(function(hash) {
            // Store hash in your password DB.
            data.password=hash;
            Users.create(data).then(function(result){
                
            }).catch(function(error){
                console.log("response --->",error);
            
            });
        });
        
    },
    async checkUser(password, hash) {
        const match = await bcrypt.compare(password, hash);
        if(match) {
            return "match found";
        } else {
            return "Invalid password";
        }
    }
}