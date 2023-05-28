//
//  Welcome.swift
//  JustCleanApp
//
//  Created by ساره المرشد on 26/05/2023.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        NavigationView{
            ZStack {
                VStack(spacing: 18) {
             
                    VStack {
                        Text("Welcome to juctclean")
                            .font(.title3)
                            .foregroundColor(Color(red: 0.391, green: 0.106, blue: 0.706))
                    }
                    
                    .padding(.bottom ,9)
                    .padding(.top ,12.0)
                    
                  
                        Text("Language")
                            .padding(.trailing, 250.0)
                          
                    HStack {
                      
                        Text("English")
                                .padding(.trailing, 240)
                            .frame(width: 340.0, height: 50)
                                .foregroundColor(Color(red: 0.391, green: 0.106, blue: 0.706))
                       
                                .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, style: StrokeStyle(lineWidth: 0.5)
                                               )
                                       
                            )
                                .overlay(
                                    Image(systemName: "chevron.down")
                                        .foregroundColor(Color.gray)
                                        .padding(.leading, 280.0)
                                    
                              
                                )
                        
                        
                     
                    }
            
                    
                    VStack {
                        
                        Text("Country")
                            .padding(.trailing, 270.0)
                    }
                    .padding(.top ,17)
//
                    HStack {
                      
                        Text("Kuwait")
                            .fontWeight(.bold)
                            .padding(.trailing, 180.0)
                            .frame(width: 340.0, height: 50)
                            .foregroundColor(.gray)
                       
                                .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, style: StrokeStyle(lineWidth: 0.5)
                                )
                            )
                                
                .overlay(
                    Image( "flag-round-250")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color.gray)
                        .padding(.trailing, 280.0)
                       
                                    
                              
                                )
                        
                     
                    }
            
                    
                   
                    HStack {
                      
                        Text("UAE")
                            .fontWeight(.bold)
                            .padding(.trailing, 180.0)
                            .frame(width: 340.0, height: 50)
                            .foregroundColor(.gray)
                       
                                .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, style: StrokeStyle(lineWidth: 0.5)
                                )
                            )
                                
                .overlay(
                    Image( "flag-round-250-3")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color.gray)
                        .padding(.trailing, 280.0)
                       
                                    
                              
                                )
                        
                     
                    }
            
                   HStack {
                      
                        Text("Bahrain")
                            .fontWeight(.bold)
                            .padding(.trailing, 180.0)
                            .frame(width: 340.0, height: 50)
                            .foregroundColor(.gray)
                       
                                .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, style: StrokeStyle(lineWidth: 0.5)
                                )
                            )
                                
                .overlay(
                    Image( "bh")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color.gray)
                        .padding(.trailing, 280.0)
                       
                                    
                              
                                )
                        
                     
                    }
                    VStack{
                        HStack {
                            
                            Text("Saudi Arabia")
                                .fontWeight(.bold)
                                .padding(.trailing, 140.0)
                                .frame(width: 340.0, height: 50)
                                .foregroundColor(Color.gray)
                            
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color(red: 0.391, green: 0.106, blue: 0.706), style: StrokeStyle(lineWidth: 1)
                                               )
                                )
                                .overlay(
                                    Image(systemName: "checkmark.circle")
                                        .foregroundColor(Color.black)
                                        .padding(.leading, 280.0)
                                    
                                    
                                )
                                .overlay(
                                    Image( "flag-round-250-4")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(Color.gray)
                                        .padding(.trailing, 280.0)
                                    
                                    
                                    
                                )
                            
                            
                        }
                        
                        
                        HStack {
                            
                            Text("Qatar")
                                .fontWeight(.bold)
                                .padding(.trailing, 180.0)
                                .frame(width: 340.0, height: 50)
                                .foregroundColor(.gray)
                            
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, style: StrokeStyle(lineWidth: 0.5)
                                               )
                                )
                            
                                .overlay(
                                    Image( "flag-round-250-5")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(Color.gray)
                                        .padding(.trailing, 280.0)
                                    
                                    
                                    
                                )
                            
                            
                        }
                        
                    }
                  
                
                    VStack{
                        Spacer()
                        NavigationLink(destination: ContentView()) {
                            Image(systemName: "arrow.right.circle.fill")
                                .resizable()
                                .frame(width:
                                        55, height: 55)
                                .foregroundColor(Color(red: 0.391, green: 0.106, blue: 0.706))
                               
                            
                        }
                       
                    }
                    
                }
            }
        } .navigationBarBackButtonHidden(true)
    }
}


struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
