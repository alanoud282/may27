//
//  Bookings2.swift
//  JustCleanApp
//
//  Created by ساره المرشد on 28/05/2023.
//

import SwiftUI

struct Bookings2: View {
    var body: some View {
        VStack {
            Image("WhatsApp Image 2023-05-28 at 7.21.48 AM")
                .resizable()
               
                .frame(width: 50, height: 50)
                
            Text("No live bookings")
                .fontWeight(.medium)
            Text("Make a new booking and leave the \n cleaning chores for us")
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .frame(width: 300.0, height: 45.0)
            VStack{
              Button("Start booking") {
                    
                }
             
                .foregroundColor(.black)
                .font(.callout)
               
                
                .frame(width: 180, height: 50)
                .foregroundColor(.black)
            
            
            .overlay(
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, style: StrokeStyle(lineWidth: 0.5)
                           )
            )
            .padding(.bottom, 600)
        
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct Bookings2_Previews: PreviewProvider {
    static var previews: some View {
        Bookings2()
    }
}
