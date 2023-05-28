//
//  ThirdView.swift
//  VIEWSS
//
//  Created by ساره المرشد on 28/05/2023.
//

import SwiftUI

struct ThirdView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
    
            ZStack {
               
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(allPlants2 , id: \.id){ plant in
                        VStack{
                            VStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(hue: 0.577, saturation: 0.164, brightness: 0.978)).opacity(0.2)
                                .frame(width: 170.0, height: 80 )
                            
                                .overlay(
                                    CardInfo(title: plant.title)
                                        .padding(.trailing, 90.0)
                                )
                                .overlay {
                                    Image(plant.imageName)
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                        .padding(.leading, 100)
                                }
                                }
                           
                              
                        }
                        
                    }
                    
                }
              
                    .padding(.bottom ,170)
                HStack {
                    ForEach(allPlants , id: \.id){ plant in
                        VStack{
                            VStack(alignment: .center){
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(hue: 0.577, saturation: 0.164, brightness: 0.978)).opacity(0.2)
                                .frame(width: 80, height:80 )
                            
                                
                                .overlay {
                                    Image(plant.imageName)
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                       
                                }
                                }
                           
                            CardInfo(title: plant.title)
                        }
                        .padding(.top ,60)
                    }
                   
                }
               
            }
        } .navigationBarBackButtonHidden(true)
            
    }
}
struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
