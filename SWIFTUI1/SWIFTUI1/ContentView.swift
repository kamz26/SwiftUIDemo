//
//  ContentView.swift
//  SWIFTUI1
//
//  Created by Abhisek K. on 19/04/20.
//  Copyright © 2020 Abhisek K. All rights reserved.
//

import SwiftUI

struct CircleImageView: View {
    var imageName: String
    
    var body: some View{
            Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color.white,lineWidth: 3))
            .shadow(radius: 5)
    }
}

struct ContentView: View {
    var body: some View {
        HStack(){
            
            CircleImageView(imageName: "dp")
            
            VStack(alignment: .leading, spacing: 10){
                Text("Abhishek Kashyap")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                
                Text("letsBuildappwithAbhishek")
                    .bold()
                    .foregroundColor(.white)
                    .font(.subheadline)
                HStack{
                    Image(systemName: "t.square.fill")
                        .foregroundColor(Color.blue)
                    Text("@kamzksta")
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(.white)
                }
            }
        }.frame(width: 380, height: 200)
            .background(Color.orange)
            .cornerRadius(8)
            .shadow(radius: 10)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
