const mysqlConnection = require("../../model/connection");

module.exports = (req, res) =>{
    
    var id = req.body.id;
    var name = req.body.name;
    var price= req.body.price;
    var date = req.body.date;
    var status =  req.body.status;
console.log(id)
console.log(name)
console.log(date)

      

mysqlConnection.query("UPDATE product set name = '"+ name+ "', price = '" + price + "',  date= '" + date + "', productStatus= '" + status + "' where product.id = ?", id, function(err, rows, fields) {
  
    if (err) {
        console.log("error ocurred",err);
      //   res.send({
      //     "code":400,
      //     "failed":"error ocurred"
      //   })
      }else{
        console.log('The solution is: ', rows);
        mysqlConnection.query("SELECT * from product WHERE id=?",id, function(err, result, fields){
          if (err){
            console.log(err);
          }
          else{
            
            //   res.send({
            //     "code":200,
            //     "success":"user registered sucessfully"
            //       });
            res.redirect('/farmer/farmersProduct/:'+ result[0].user_id);
          }

        })
       
      }
      });
  }
  