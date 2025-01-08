const Account = require("./accounts-model");
const db = require("../../data/db-config");

exports.checkAccountPayload = (req, res, next) => {
  const error = { status: 400 };
  const { name, budget } = req.body;
  if (name === undefined || budget === undefined) {
    error.message = "name and budget are required";
  } else if (name.trim().length < 3 || name.trim().length > 100) {
    error.message = "name of account must be between 3 and 100";
  } else if (typeof budget !== "number") {
    error.message = "budget of account must be a number";
  } else if (budget < 0 || budget > 1000000) {
    error.message = "budget of account is too large or too small";
  }
  if (error.message) {
    next(error);
  } else {
    req.body.name = name.trim();
    next();
  }
};

exports.checkAccountNameUnique = async (req, res, next) => {
  try {
    const existingName = await db("accounts")
      .where("name", req.body.name)
      .first();
    if (existingName) {
      next({ status: 400, message: "that name is taken" });
    } else {
      next();
    }
  } catch (error) {
    next(error);
  }
};

exports.checkAccountId = async (req, res, next) => {
  try {
    const account = await Account.getById(req.params.id);
    if (!account) {
      next({ status: 404, message: "account not found" });
    } else {
      req.account = account;
      next();
    }
  } catch (error) {
    next(error);
  }
};
