var _ = require('lodash');
//var bcrypt = require(bcrypt);
module.exports = { 
    getAllPosts(){
        response = Posts.find(); 
        return response;
    },
    getSinglePost(postid){
        response = Posts.findOne({id:postid});
        return response;
    },
    login(data){
        response = Users.findOne({username:data.username, password:data.password});
        return response;
    }


}