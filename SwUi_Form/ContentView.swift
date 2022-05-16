//
//  ContentView.swift
//  SwUi_Form
//
//  Created by Marcelo Sampaio on 16/05/22.
//

import SwiftUI



struct ContentView: View {
    
    @State var isAutomatic = false
    @State var brightValue = 50.00
    
    var body: some View {
        
        Form{
            
            Section(header: Text("APPEARENCE")){
                HStack {
                    Text("Automatic")
                    Spacer()
                    Toggle("", isOn: $isAutomatic)
                }
                HStack {
                    Text("Options")
                    Spacer()
                    Text("Light Until Sunset")
                }
            }

            Section(header: Text("BRIGHTNESS")) {
                HStack {
                    Image(systemName: "sun.max.fill")
                    
                    Slider(value: $brightValue, in: 0...100)
                        .onChange(of: brightValue) { newValue in
                            print("📍 brightValue: \(brightValue)")
                        }
                    
                    Image(systemName: "sun.max.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                     
                }
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
