const utilities = require("../utilities/")
const baseController = {}

baseController.buildHome = async function(req, res){
  const nav = await utilities.getNav()
  res.render("index", {title: "Home", nav})
  // req.flash("notice", "This is a flash message.") To test ONLY

}

baseController.buildErrPage = async function(req, res){
  throw new Error('Internal Server 500 Error')
}

module.exports = baseController