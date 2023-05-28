//
//  Home.swift
//  JustCleanApp
//
//  Created by ساره المرشد on 26/05/2023.
//

import SwiftUI

struct Home: View {
    var body: some View {
    
        NavigationView{
         
            ScrollView{
               
                VStack{
              
                    
                    Text("Selecta a service")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.trailing, 200.0)
                        .padding(.top ,30)
                       
                    ThirdView()
                    Text("Signup or Login")
                    
                        .font(.title2)
                        .fontWeight(.bold)
                       .padding(.trailing, 200.0)
                    Signup()
                    Text("Top 3 Laundry shops in Riydh")
                    
                        .font(.title2)
                        .fontWeight(.bold)
                       .padding(.trailing, 60.0)
                    
                    
                }
             
            }
         
            .navigationBarItems(
               leading:  Text("Riyadh")
                    .padding(.trailing, 40)
                    .frame(width: 140, height: 40)
                    .foregroundColor(.black)
                
                    .background(Color(red: 0.922, green: 0.922, blue: 0.922))
                    .cornerRadius(30)
                
                    .overlay(
                        Image(systemName: "chevron.down")
                            .foregroundColor(.black)
                            .padding(.leading, 90)
                    ),
                
           
                
                trailing:Image(systemName: "person.circle.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 30.0, height: 30.0)
                
             
          
            )
            
           
        
            } .navigationBarBackButtonHidden(true) 
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
