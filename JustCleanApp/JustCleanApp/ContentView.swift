//
//  ContentView.swift
//  JustCleanApp
//
//  Created by ساره المرشد on 26/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 0
    init() {
        let customColor = UIColor(red: 0.46, green: 0.46, blue: 0.46, alpha: 1.0)
        UITabBar.appearance().unselectedItemTintColor = customColor
    }
    
    var body: some View {
       
        ZStack {
          
            TabView {
               Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                            .renderingMode(.template)
                            .font(.system(size: 28))
                        Text("Home")
                            .font(.system(size: 18))
                    }  .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground(
                        Color.black,
                        for: .tabBar)
                
                Bookings()
                    .tabItem {
                        Image(systemName: "clock.fill")
                            .renderingMode(.template)
                            .font(.system(size: 24))
                        Text("Bookings")
                            .font(.system(size: 16))
                    }.toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground(
                        Color.black,
                        for: .tabBar)
                
                
            }
            .accentColor(.black)
            .toolbar {
                ToolbarItemGroup(placement: .principal) {
                    
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
