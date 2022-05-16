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
    
    let appearenceTitle = "APPEARENCE"
    let brightnessTitle = "BRIGHTNESS"
    let footerTitle = "Use of higher brightness can reduce the power of the batteries."
    
    
    var body: some View {
        
        Form{
            
            Section(header: Text(appearenceTitle)){
                HStack {
                    Text("Automatic")
                    Spacer()
                    Toggle("", isOn: $isAutomatic)
                }
                HStack {
                    Text("Options")
                    Spacer()
                    Text("Light Until Sunset")
                        .foregroundColor(.gray)
                        .font(.system(.callout))
                }
            }

            Section(header: Text(brightnessTitle), footer: Text(footerTitle).lineLimit(5)) {
                HStack {
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.gray)
                    
                    Slider(value: $brightValue, in: 0...100)
                        .onChange(of: brightValue) { newValue in
                            print("📍 brightValue: \(brightValue)")
                        }
                    
                    Image(systemName: "sun.max.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.gray)
                     
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
