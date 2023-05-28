//
//  Signup.swift
//  JustCleanApp
//
//  Created by ساره المرشد on 28/05/2023.
//

import SwiftUI

struct Signup: View {
    var body: some View {
        VStack(alignment: .center){
       
        RoundedRectangle(cornerRadius: 20)
                .fill(Color(hue: 0.744, saturation: 0.206, brightness: 1.0))
                
                .opacity(0.2)
            .frame(width: 350, height:180 )
        
            .overlay{
                Text("Enjoy a faster booking \n experience & easily manage \n your details.")
                 
                    .padding(.bottom, 70.0)
                    .padding(.trailing ,90)
            
                 
                       
                    Button(action: {
                                 
                               }) {
                                   Text("Signup / Login")
                                       .foregroundColor(.black)
                                       .font(.callout)
                                       .padding(.trailing ,50)
                                       
                               }
                               .frame(width: 160, height: 30)
                               .background(.white)
                              
                               .cornerRadius(10)
                               .padding(.trailing ,150)
                           .padding(.top ,90)
                       
                Image(systemName: "chevron.right.circle.fill")
                    .padding(.top ,90)
                    .padding(.trailing ,30)
                
            }
            .overlay {
                Image("WhatsApp Image 2023-05-28 at 6.09.51 AM")
                
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.leading,
                             250)
                    .padding(.top ,80)
                   
            }
            }
           }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}
