//
//  CardInfo.swift
//  VIEWSS
//
//  Created by ساره المرشد on 28/05/2023.
//
import SwiftUI

struct CardInfo: View {
    var title: String
  
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.caption)
                .multilineTextAlignment(.center)
              
         
        }.navigationBarBackButtonHidden(true)
    }
}
