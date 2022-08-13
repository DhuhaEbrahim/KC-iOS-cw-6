//
//  ContentView.swift
//  CW6
//
//  Created by dhuha kaweyani on 13/08/2022.
//

import SwiftUI


struct ContentView: View {
    @State var wieght = ""
    @State var hight = ""
    @State var result = 0.0
    @State var HealthCondition = ""
    
    var body: some View {
        ZStack{
            Color.yellow.opacity(0.16).ignoresSafeArea()
            
            VStack{
                Image("bmi").resizable().frame(width: 370, height: 300)
                Spacer()
                TextField("Enter your wieght (in Kg) ", text: $wieght)
                Divider()
                TextField("Enter your hight (in meters)", text: $hight)
                    
               
                Button{
                    result = bmiCalc(w: Double(wieght) ?? 0.0, h: Double(hight) ?? 0.0)
                    if result <= 20{
                        HealthCondition = "slim"
                    }else if result > 20 && result <= 25 {
                        HealthCondition = "Good"
                    }
                    else{
                        HealthCondition = "obese"
                    }
                }
            label: {Text("count").padding().font(.system(size: 40, weight: .semibold, design: .serif)).foregroundColor(Color.white).background(.orange).cornerRadius(15)
                
            }.padding()
                
                Text("BMI = \(result)").font(.system(size:20, weight: .semibold, design: .serif)).foregroundColor(Color.orange)

                
                Text("Your health condition is: \n \(HealthCondition)").foregroundColor(Color.orange)
                    .multilineTextAlignment(.center).font(.system(size: 20, weight: .semibold, design: .serif))

                Spacer()
            }.padding()
        }
    }
    func bmiCalc(w: Double, h: Double) -> Double{
        return w / (h * h)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
