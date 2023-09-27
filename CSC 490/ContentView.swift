//
//  ContentView.swift
//  CSC 490
//
//  Created by Anna Gong on 9/24/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            ZStack{
                Image("background-cloth")
                    .resizable()
                    .ignoresSafeArea()

                VStack{
                    Spacer()
                    Image("logo")
                    Spacer()
                    HStack{
                        Spacer()
                        Image(playerCard)
                        Spacer()
                        Image(cpuCard)
                        Spacer()
                    }
                    Spacer()
                    
                    Button {
                        deal()
                    } label: {
                        Image("button")
                    }
                    
                    Spacer()
                    HStack{
                        Spacer()
                        VStack{
                            Text("player")
                                .font(.headline)
                                .padding(.bottom, 10.0)
                            
                            Text(String(playerScore))
                                .font(.largeTitle)
                        }
                        Spacer()
                        VStack{
                            Text("cpu")
                                .font(.headline)
                                .padding(.bottom, 10.0)
                            
                            Text(String(cpuScore))
                                .font(.largeTitle)
                        }
                        Spacer()
                    }
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    Spacer()
                }
            }
        }
    }
    func deal(){
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
