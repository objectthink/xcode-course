//
//  ContentView.swift
//  xcode-course
//
//  Created by stephen eshelman on 10/24/24.
//

import SwiftUI

struct ContentView: View {
   @State var total = ""
   @State var tipPercent = 15.0
   
   var body: some View {
      VStack {
         HStack {
            Image(systemName: "dollarsign.circle.fill")
               .imageScale(.large)
               .foregroundStyle(.tint)
               .font(.title)
            Text("Tip Calculator")
               .font(.largeTitle)
               .fontWeight(.bold)
         }
         HStack {
            //Text("sne says:")
            //Text(getText())
            
            Text("$")
               .font(.title)
            
            TextField("Amount", text: $total)
               .font(.title)
//            Text(total)
//               .font(.title)
            
         }
         
         HStack {
            Slider(value: $tipPercent, in: 1...30, step: 1.0)
            Text("\(Int(tipPercent)) %")
               .font(.title)
         }
         
         if let totalNum = Double(total) {
            Text("Tip Amount: $\(totalNum * tipPercent / 100, specifier: "%.2f")")
         } else {
            Text("Please add a numeric value")
         }
         
//         Button {
//            print("logging...")
//         } label: {
//            Text("Calculate")
//               .font(.headline).padding()
//               .background(.blue)
//               .foregroundColor(.white)
//               .cornerRadius(10)
//         }
      }
      .padding()
   }
   
   func getText() -> String {
      let greeting = "hello"
      return "\(greeting) cruel world"
   }
}

#Preview {
    ContentView()
}
