//
//  Bookings.swift
//  JustCleanApp
//
//  Created by ساره المرشد on 26/05/2023.
//

import SwiftUI

struct Bookings: View {
    var body: some View {
        NavigationView{
            VStack {
                
                HStack{
                    
                Text("Bookings")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.trailing ,70)
                    HStack{
                        Text("Filter")
                        
                            .padding(.trailing, 30)
                            .frame(width: 90, height: 40)
                            .foregroundColor(.black)
                        
                            .background(Color(red: 0.922, green: 0.922, blue: 0.922))
                            .cornerRadius(30)
                        
                            .overlay(
                                Image(systemName: "slider.horizontal.3")
                                    .foregroundColor(.black)
                                    .padding(.leading, 40)
                            )
                          //  .padding(.bottom ,90)
                    }
                   // .padding(.bottom ,90)
                  //  .padding(.leading ,60)
                }
                .padding(.top ,360)
                
                HStack{
                   
                    Button("Current"){
                         
                     }
                    .foregroundColor(.black)
                    .font(.callout)
                    .padding(.trailing ,50)
                    
                    .padding(.trailing, 180.0)
                    .frame(width: 340.0, height: 50)
                    .foregroundColor(.gray)
                    .overlay(
                      
                        Button(" Past"){
                             
                         }
                        .foregroundColor(.black)
                        .font(.callout)
                       // .padding(50)
                        
                        
                        .frame(width: 340.0, height: 50)
                        .foregroundColor(.gray)
                    )
                    .overlay(
                       Button(" Scheduled"){
                            
                        }
                        
                        .foregroundColor(.black)
                        .font(.callout)
                        .padding(.leading ,220.0)
                        
                        
                        .frame(width: 340.0, height: 50)
                        .foregroundColor(.gray)
                    )
                    
                    .overlay(
                        
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.black, style: StrokeStyle(lineWidth: 0.5)
                                   )
                    )
                .padding(.top)
                }
                VStack{
                    Divider()
                    
                    Bookings2()
                        .padding(.top ,150)
                }
               // .padding(.bottom, 50)
                
            }
         
        }.navigationBarBackButtonHidden(true)
        
      
    }
    
}
struct Bookings_Previews: PreviewProvider {
    static var previews: some View {
        Bookings()
    }
}
