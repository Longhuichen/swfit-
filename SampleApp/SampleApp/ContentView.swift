//
//  ContentView.swift
//  SampleApp
//
//  Created by shark on 1/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
           Screen(title: "Home", text: "First", imageName: "house")
        }
    }
}

struct Screen:View {
    let  title: String
    let text: String
    let imageName: String
    
    var body: some View {
        VStack {
        Image (systemName: imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200, alignment: .center)
            .padding()
        
        Text(text)
            .font(.system(size: 32, weight: .light, design: .default))
            .padding()
        
        NavigationLink(
            destination: Screen(title: "seee", text: "vdvv", imageName: "bell"),
            label: {
                ContinueButton(color: .pink)
            })
        
    }
    .navigationTitle(title)
        
    }
    
}




struct ContinueButton: View {
    
    let color: Color
    var body: some View {
        Text("Navigate")
            .frame(width: 200, height: 50, alignment: .center)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
