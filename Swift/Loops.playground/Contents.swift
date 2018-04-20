//: Playground - noun: a place where people can play

import Cocoa

var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?
if let theError = errorCodeString,  let errorCodeInteger = Int(theError), errorCodeInteger == 404{
    errorDescription = "\(errorCodeInteger + 200): resource was not found"
}

var upCaseErrorDescription = errorDescription?.uppercased()
upCaseErrorDescription?.append("please try again")
let error = upCaseErrorDescription ?? "no error"
error
