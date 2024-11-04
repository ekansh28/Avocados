//
//  ContentView.swift
//  Avocados
//
//  Created by Ekansh  on 14/12/23.
//

import SwiftUI

struct ContentView: View {
    
    var headers: [Header] = headersData
    var facts: [Fact] = factsData

    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(alignment: .top, spacing: 0) {
                            ForEach(headers) { item in
                                HeaderView(header: item)
                            }
                           
                        }
                    }
                    Text("Avocado Dishes")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(8)
                    
                    DishesView()
                        .frame(maxWidth:640)
                    
                    Text("Avocado Facts")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(8)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(alignment: .top, spacing: 60){
                            ForEach(facts) { item in
                                FactsView(fact: item)
                            }
                        }
                        .padding(.vertical)
                        .padding(.leading, 60)
                        .padding(.trailing, 20)
                    }
 
                    VStack {
                        Text("All about avocados")
                            .font(.system(.title, design: .serif))
                            .fontWeight(.bold)
                            .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
           
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                    }
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }

        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

#Preview {
    ContentView(headers: headersData, facts: factsData)
}
