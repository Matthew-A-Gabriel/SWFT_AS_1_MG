//
//  main.swift
//  SWFT_ASGN_1_MG
//
//  Created by StudentAM on 1/22/24.
//

import Foundation

//PLAN
// Make Variables to store the Stock (milk, Assorted Fruits, Bread, Mixed Vegetables, Cereal) [x]
// Make a Array for Cart [x]
// Make functions for : Add Cart, Remove Cart, View Cart. View Stock, Check Out
// Make all the Print Stuff
// DONE!


//Variables + Arrays
var cerealStock: Double = 100
var cerealCost: Double = 7.99
let cerealInfo: [Any] = [cerealStock, cerealCost]

var milkStock: Double = 100
var milkCost: Double = 4.99
let milkInfo: [Any] = [milkStock, milkCost]

var syrupStock: Double = 100
var syrupCost: Double = 3.99
let syrupInfo: [Any] = [cerealStock, cerealCost]

var cupsStock: Double = 100
var cupsCost: Double = 2.99
let cupsInfo: [Any] = [milkStock, milkCost]



let allInvintory = [cerealInfo,milkInfo,syrupInfo,cupsInfo]

var cCereal:Double = 0
var cMilk:Double = 0
var cSyrup:Double = 0
var cCups:Double = 0


let cart = [cCereal,cMilk,cSyrup,cCups]

var midItem: String = ""
var midAmmount: Int = 0

var stageVar = 0
var sales: Double = 0


//First List
print("Welcome! To the Online Grocery Store")
func mainMenu(){
    print("")
    print("Please Select one of the Following Options")
    print("1. Add Item To Cart")
    print("2. Remove Iteam From Cart")
    print("3. Check Stock")
    print("4. Admin Login")
    print("5. Check Out")
    if let userInput = readLine() {
        if (userInput == "1") {
            addToCart()
        }
        if (userInput == "2") {
            removeFromCart()
        }
        if (userInput == "3"){
            checkStock()
        }
        if (userInput == "4"){
            adminLogin()
        }
        if (userInput == "5"){
            checkOut()
        }
        else {
            print("Please Select a Valid Option")
            mainMenu()
        }
    }
}

func addToCart (){
    print("What Would You Like To Add?")
    print("1. Cereal" , "$", cerealCost)
    print("2. Milk" , "$", milkCost)
    print("3. Syrup" , "$", syrupCost)
    print("4. Cups" , "$", cupsCost)
    if let userInput = readLine(){
        if (userInput == "1") {
            stageVar = 1
            addCart2()
        }
        if (userInput == "2") {
            stageVar = 2
            addCart2()
        }
        if (userInput == "3"){
            stageVar = 3
            addCart2()
        }
        if (userInput == "4"){
            stageVar = 4
            addCart2()
        }
        else {
            print("Please Select a Valid Option")
            addToCart()
        }
    }

}
func removeFromCart(){
    print("What Would You Like To Remove?")
    print("1. Cereal", cCereal)
    print("2. Milk", cMilk)
    print("3. Syrup", cSyrup)
    print("4. Cups", cCups)
    if let userInput = readLine(){
        if (userInput == "1") {
            stageVar = 1
            RFC2()
        }
        if (userInput == "2") {
            stageVar = 2
            RFC2()
        }
        if (userInput == "3"){
            stageVar = 3
            RFC2()
        }
        if (userInput == "4"){
            stageVar = 4
            RFC2()
        }
        else {
            print("Please Select a Valid Option")
            removeFromCart()
        }
    }
}


func checkStock(){
    print("here is what is in Stock")
    print("Cereal Stock :", cerealStock)
    print("Milk Stock :", milkStock)
    print("Syrup Stock :", syrupStock)
    print("Cup Stock :", cupsStock)
    mainMenu()
}
func adminLogin(){
    print("enter AdminID")
    if let userInput = readLine(), let intInput = Int(userInput) {
        if (intInput == 9012){
            print("Admin Options")
            print("1.Restock Items")
            print("2.Generate Report")
            print("3.Check Number of Items")
            print("4.Quit Admin Menu")
        }
        else {
            print("Wrong")
            adminLogin()
        }
    }
    if let userInput = readLine(){
        if (userInput == "1") {
            stageVar = 1
            restock()
        }
        if (userInput == "2") {
            stageVar = 2
            report()
        }
        if (userInput == "3"){
            stageVar = 3
            checkItems()
        }
        if (userInput == "4"){
            stageVar = 4
            mainMenu()
        }
        else {
            print("Please Select a Valid Option")
            adminLogin()
        }
    }
}

func checkOut(){
    print("Cost of", cCereal ,"Cups")
    print(cCereal * cerealCost)
    print("Cost of", cMilk ,"Cups")
    print(cMilk * milkCost)
    print("Cost of", cSyrup ,"Cups")
    print(cSyrup * syrupCost)
    print("Cost of", cCups ,"Cups")
    print(cCups * cupsCost)
    print("Total Cost of All Items")
    print("$", cCereal * cerealCost + cMilk * milkCost + cSyrup * syrupCost + cCups * cupsCost)
    sales += cCereal * cerealCost + cMilk * milkCost + cSyrup * syrupCost + cCups * cupsCost
    cCereal = 0
    cMilk = 0
    cSyrup = 0
    cCups = 0
    mainMenu()
}


//ADMIN OPTIONS
func restock(){
    print("What do you want to Restock?")
    print("1.Cereal")
    print("2.Milk")
    print("3.Syrup")
    print("4.Cups")
    if let userInput = readLine(){
        if (userInput == "1") {
            stageVar = 1
            restock2()
        }
        if (userInput == "2") {
            stageVar = 2
            restock2()
        }
        if (userInput == "3"){
            stageVar = 3
            restock2()
        }
        if (userInput == "4"){
            stageVar = 4
            restock2()
        }
        else {
            print("Please Select a Valid Option")
            restock()
        }
    }
}

func report(){
    print("Remaining Stock")
    print("Cereal Stock : ", cerealStock)
    print("Milk Stock : ", milkStock)
    print("Syrup Stock : ", syrupStock)
    print("Cup Stock : ", cupsStock)
    print("Total Sales : $", sales)
    adminLogin()
}

func checkItems(){
    print("which Item do you want to check?")
    print("1. Cereal")
    print("2. Milk")
    print("3. Syrup")
    print("4. Cups")
    if let userInput = readLine(){
        if (userInput == "1") {
            print("Cereal Stock :", cerealStock)
            print("$",cerealCost)
        }
        if (userInput == "2") {
            print("Milk Stock :", milkStock)
            print("$",milkCost)
        }
        if (userInput == "3"){
            print("Syrup Stock :", syrupStock)
            print("$",syrupCost)
        }
        if (userInput == "4"){
            print("Cup Stock :", cupsStock)
            print("$",cupsCost)
        }
        else {
            print("Please Select a Valid Option")
            adminLogin()
        }
    }
    adminLogin()
}


//PART 2 OF OPTIONS
func restock2(){
    print("How much do you want to restock?")
    if (stageVar == 1){
        if let userInput = readLine(), let intInput = Double(userInput) {
            cerealStock += intInput
            print("You've Restocked ", intInput, " Cereal")
        }
    }
    if (stageVar == 2){
        if let userInput = readLine(), let intInput = Double(userInput) {
            milkStock += intInput
            print("You've Restocked ", intInput, " Milk")
        }
    }
    if (stageVar == 3){
        if let userInput = readLine(), let intInput = Double(userInput) {
            syrupStock += intInput
            print("You've Restocked ", intInput, " Syrup")
        }
    }
    if (stageVar == 4){
        if let userInput = readLine(), let intInput = Double(userInput) {
            cupsStock += intInput
            print("You've Restocked ", intInput, " Cups")
        }
    }
    mainMenu()
}

func addCart2(){
    print("How many do you want to buy?")
    if (stageVar == 1){
        if let userInput = readLine(), let intInput = Double(userInput) {
            cerealStock += -intInput
            cCereal += intInput
        }
    }
    if (stageVar == 2){
        if let userInput = readLine(), let intInput = Double(userInput) {
            milkStock += -intInput
            cMilk += intInput
        }
    }
    if (stageVar == 3){
        if let userInput = readLine(), let intInput = Double(userInput) {
            syrupStock += -intInput
            cSyrup += intInput
        }
    }
    if (stageVar == 4){
        if let userInput = readLine(), let intInput = Double(userInput) {
            cupsStock += -intInput
            cCups += intInput
        }
    }
    print("CART:")
    print("Cereal : ",cCereal)
    print("Milk : ", cMilk)
    print("Syrup : ", cSyrup)
    print("Cups : ", cCups)
    mainMenu()
}
func RFC2(){
    print("How many do you want to Remove?")
    if (stageVar == 1){
        if let userInput = readLine(), let intInput = Double(userInput) {
            cerealStock += intInput
            cCereal += -intInput
        }
    }
    if (stageVar == 2){
        if let userInput = readLine(), let intInput = Double(userInput) {
            milkStock += intInput
            cMilk += -intInput
        }
    }
    if (stageVar == 3){
        if let userInput = readLine(), let intInput = Double(userInput) {
            syrupStock += intInput
            cSyrup += -intInput
        }
    }
    if (stageVar == 4){
        if let userInput = readLine(), let intInput = Double(userInput) {
            cupsStock += intInput
            cCups += -intInput
        }
    }
    print("CART:")
    print("Cereal : ",cCereal)
    print("Milk : ", cMilk)
    print("Syrup : ", cSyrup)
    print("Cups : ", cCups)
    mainMenu()
}
//Processes Below
mainMenu()
