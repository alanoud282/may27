//
//  Plant.swift
//  VIEWSS
//
//  Created by ساره المرشد on 28/05/2023.
//


import SwiftUI

struct Plant:Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
 
  
}


var plant1 = Plant(imageName: "WhatsApp Image 2023-05-28 at 4.14.10 AM", title: "Car Wash \n Stations")
var plant2 = Plant(imageName: "WhatsApp Image 2023-05-28 at 4.15.46 AM", title: "Car Wash At \n Home")
var plant4 = Plant(imageName: "WhatsApp Image 2023-05-28 at 4.16.17 AM", title: "Men spa's \n shop")
var plant5 = Plant(imageName:  "ellipsis-5", title: "All services")
//Car Wash At Home
//
//Men spa's shop

var plant3 = Plant(imageName: "WhatsApp Image 2023-05-28 at 4.18.25 AM", title: "Laundry")
var plant6 = Plant(imageName: "WhatsApp Image 2023-05-28 at 4.18.07 AM", title: "Home clearing")

var allPlants = [plant1,plant2 ,plant4 ,plant5]
var allPlants2 = [plant3, plant6]
