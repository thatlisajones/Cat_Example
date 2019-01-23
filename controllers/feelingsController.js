var express = require("express");

var router = express.Router();

// Import the model (feeling.js) to use its database functions.
var feeling = require("../models/feeling.js");

// Create all our routes and set up logic within those routes where required.
router.get("/", function(req, res) {
  feeling.all(function(data) {
    var hbsObject = {
      feelings: data
    };
    console.log(hbsObject);
    res.render("index", hbsObject);
  });
});

// router.post("/api/feelings", function(req, res) {
//   feeling.create([
//     "name", "selected"
//   ], [
//     req.body.name, req.body.selected
//   ], function(result) {
//     // Send back the ID of the new quote
//     res.json({ id: result.insertId });
//   });
// });

router.put("/api/feelings/:id", function(req, res) {
  var condition = "id = " + req.params.id;

  console.log("condition", condition);

  feeling.update({
    selected: req.body.selected
  }, condition, function(result) {
    if (result.changedRows == 0) {
      // If no rows were changed, then the ID must not exist, so 404
      return res.status(404).end();
    } else {
      res.status(200).end();
    }
  });
});

// router.delete("/api/feelings/:id", function(req, res) {
//   var condition = "id = " + req.params.id;

//   feeling.delete(condition, function(result) {
//     if (result.affectedRows == 0) {
//       // If no rows were changed, then the ID must not exist, so 404
//       return res.status(404).end();
//     } else {
//       res.status(200).end();
//     }
//   });
// });

// Export routes for server.js to use.
module.exports = router;
