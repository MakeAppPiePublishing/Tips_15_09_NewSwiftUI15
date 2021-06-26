//
//  ContentView.swift
//  Shared
//
//  Created by Steven Lipton on 6/21/21.
//

import SwiftUI

struct ContentView: View {
    @State var globeIndex = 0
    @State var hasBackground:Bool = true
    @State var useCircle:Bool = true
    var body: some View {
        
            VStack{
                HStack {
                    Spacer()
                   
                    VStack(alignment:.leading) {
                        Text("Hello, Transport!").font(.title).fontWeight(.heavy)
                            .padding(.top)
                        Text("Say hello to transport")
                            .font(.title2)
                            
                    }
                    .padding()
                    Spacer()
                }   //add code
               
              
                .padding()
                Spacer()
                
            TransportViewLabel(index: $globeIndex, useCircle: $useCircle)
                    .padding()
                Spacer()
                ToolbarView(index: $globeIndex, useCircle: $useCircle)
                    .padding()

                    .padding()
                //add code
            }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
