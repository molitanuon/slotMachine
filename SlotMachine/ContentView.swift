//
//  ContentView.swift
//  SlotMachine
//
//  Created by Molita Nuon on 7/30/21.
//

import SwiftUI

struct ContentView: View {
    @State var slot1 = "apple"
    @State var slot2 = "cherry"
    @State var slot3 = "star"
    @State var credit = 1000
    var images = ["apple", "star", "cherry"]
    
    var body: some View {
        ZStack(){
            VStack {
                
                Spacer()
                
                HStack {
                  
                    Text("Test Your Luck!!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.green)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .colorMultiply(.blue)
                    
        
                    Image(systemName:"dollarsign.circle")
                        .renderingMode(.template)
                        .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.yellow)
                        .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                        .font(.largeTitle)
                    
                }
                Spacer()
                
                HStack {
                    
                    Image(systemName:"dollarsign.circle")
                        .renderingMode(.template)
                        .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.yellow)
                        .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                        .font(.largeTitle)
                    
                    Text("Credits: ")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    Text(String(credit))
                        .font(.title)
                        .bold()
                }
                
                Spacer()
                
                HStack {
                   Spacer()
                    Image(slot1)
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    Image(slot2)
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    Image(slot3)
                        .resizable()
                        .scaledToFit()
                    Spacer()
                }
                Spacer()
                
                ZStack {
                    
                    Button(action: {
                        let image1 = images.randomElement()
                        let image2 = images.randomElement()
                        let image3 = images.randomElement()
                        
                        slot1 = image1!
                        slot2 = image2!
                        slot3 = image3!
                       
                        if(image1 == image2 && image3 == image1)
                        {
                            credit += 10
                        }
                        else
                        {
                            credit -= 10
                        }
                    }, label: {
                        Capsule()
                            .fill(Color.red)
                            .frame(width: 200, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    })
                        
                    Text("SPIN")
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                }
                    
                Spacer()
            }
            
            Spacer()
            
               
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
