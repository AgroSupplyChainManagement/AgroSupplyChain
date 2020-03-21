const mysqlConnection = require("../../model/connection");
const product = function(req,res){
    // console.log("req",req.body);
   // var today = new Date();
    var product={
      
      "name":req.body.name,
      "user_id": req.body.id,
      "price": req.body.price,
      "date": req.body.date,
      "productStatus": "available",  
    
     }
    //console.log(user.firstName);
    console.log(product.user_id);
    mysqlConnection.query('INSERT INTO product SET ?',product, function (error, results, fields) {
    if (error) {
      console.log("error ocurred",error);
    //   res.send({
    //     "code":400,
    //     "failed":"error ocurred"
    //   })
    }else{
      
      console.log('The solution is: ', results);
    //   res.send({
    //     "code":200,
    //     "success":"user registered sucessfully"
    //       });
    res.redirect('/farmer/farmerIndex/:' + product.user_id);
    }
    });

   // register.pre

//    bcrypt.hash(user.password, 10, function(err, hash){
//     if(err) console.log(err);
//     user.password = hash;
//     alert(user.password); 
// });
  }
  module.exports = product
 // npm install bcrypt