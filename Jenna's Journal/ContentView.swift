//
//  ContentView.swift
//  Jenna's Journal
//
//  Created by scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var date = Date()
    @State private var thought = ""
    @State private var factArray = ["I'm an adventurous eater!", "I'm blasian - Lao and Nigerian", "I started cooking and find so much joy in it now. I sometimes prefer it to eating out", "I work at an ice cream shop!", "I'm a freshman in college!", "I know HTML, CSS, JavaScript and Python.", "I have one older brother! He is 32...", "Green tea is my favorite ice cream flavor", "I'm a Kode with Klossy returner!", "I've traveled out the country once and it was to Japan!"]
    var body: some View {
        ZStack {
            Color(hue: 1.0, saturation: 0.096, brightness: 1.0)
                .ignoresSafeArea()
            VStack() {
                Text("CHANGEEEEE")
                Text("Jenna's Journal")
                    .font(.custom("Domine", size: 30))
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.649, brightness: 0.757))
                    .shadow(color: Color(hue: 0.996, saturation: 0.529, brightness: 0.855), radius: 6)
                Text("A place to spill and dump thoughts 🕊️🧘🏾‍♀️")
                    .fontWeight(.semibold)
                    .padding(.top, 2)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.649, brightness: 0.757))
                Text("IG: @jennasaykham | Snapchat: @jennerlytruez")
                    .fontWeight(.light)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.649, brightness: 0.757))
                    .background(Color(hue: 0.0, saturation: 0.03, brightness: 0.973))
                    .padding()
            } .padding(.bottom, 600)
            HStack(spacing: 5) {
                Text("Welcome to my blog! I'm Jenna and I am currently 18. I'm an incoming freshman at MIT planning to study artificial intelligence and decision making. Because of my curiousity, I have a few passions - let me share with you! One thing I am big on is social advocacy, especially for educational equity. I also love to play the double bass in orchestra, cooking, eating out, spending time with my family and friends, and more!")
                    .font(.footnote)
                    .fontWeight(.regular)
                    .padding(.leading, 10)
                            
                        .foregroundColor(Color(hue: 0.589, saturation: 0.909, brightness: 0.805))
                VStack(spacing: 20){
                    HStack(spacing: 20) {
                        Image("bewe")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        Image("chens")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    HStack(spacing: 20) {
                        Image("pool")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        Image("leah")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    HStack(spacing: 20) {
                        Image("japan")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        Image("japan2")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    HStack(spacing: 20) {
                        Image("grad")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        Image("nationalharbor")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    HStack(spacing: 20) {
                        Image("nunu")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        Image("adam")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }

                }
            }.padding() .background(Color(hue: 0.538, saturation: 0.345, brightness: 1.0)) .cornerRadius(20) .padding() .shadow(color: Color(hue: 0.552, saturation: 0.596, brightness: 0.88), radius: 15)
            VStack {
                Spacer()
                Text(" Fun facts about me 💖")
                    .font(.custom("Domine", size: 25))
                    .foregroundColor(Color(hue: 1.0, saturation: 0.649, brightness: 0.757))
                    

                Text(thought)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 20)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.649, brightness: 0.757))
                    .background(Color(red: 0.974, green: 0.944, blue: 0.945)) .cornerRadius(20) 
                
                Button("Click for a fun fact!") {
                    let random = Int.random(in: 0..<10)
                    thought = factArray[random]
                }.foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 1.001, green: 0.902, blue: 0.9)/*@END_MENU_TOKEN@*/) .tint(Color(hue: 1.0, saturation: 0.649, brightness: 0.757)) .shadow(color: Color(hue: 0.924, saturation: 0.402, brightness: 0.909), radius: 10)
            }.buttonStyle(.borderedProminent)
                .padding(.horizontal, 50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
