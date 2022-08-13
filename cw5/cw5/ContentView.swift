//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
   
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        VStack{
            title(MyCounter: $counter[0], saying: "استغفر الله العظيم")
            title(MyCounter: $counter[1], saying: "الحمدلله")
            title(MyCounter: $counter[2], saying: "سبحان الله و بحمده")
            
            }.padding()
        
    }
}


// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}

struct title: View {
    @Binding var MyCounter: Int
    @State var saying : String
    var body: some View {
        HStack{
            Text(saying).font(.title).multilineTextAlignment(.center)
            Spacer()
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.pink, .indigo]), startPoint: .topLeading, endPoint: .bottomLeading).frame(width: 160.0, height: 160.0).clipShape(Circle())
            Text("\(MyCounter)")
            
                .font(.largeTitle)
                
                .foregroundColor(.white)
                
                
            
                .padding()
                
                .onTapGesture {
                    MyCounter = MyCounter + 1
                }
            }
        }.padding()
    }
}
