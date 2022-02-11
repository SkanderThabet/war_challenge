//
//  ContentView.swift
//  Shared
//
//  Created by Skander Thabet on 23/1/2022.
//

import SwiftUI

struct ContentView: View {
    //@State so that var's can be mutable
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
                
                VStack {
                    Button(action: {
                        //Generate random numbers for cards
                        let playerRand = Int.random(in: 2...14)
                        let cpuRand = Int.random(in: 2...14)
                        //Update player card
                        playerCard = "card"+String(playerRand)
                        //Update cpu card
                        cpuCard = "card"+String(cpuRand)
                        //Update Player score
                        if(playerRand > cpuRand){
                            playerScore += 1
                        }
                        else if (playerRand == cpuRand){
                            playerScore += 0
                            cpuScore += 0
                        }
                        else {
                            cpuScore += 1
                        }
                        
                        //Update Cpu score
                        
                        
                    }, label: {
                        Image("dealbutton")
                    })
                    
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").font(.headline).padding()
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").font(.headline).padding()
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(Color.white)
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
