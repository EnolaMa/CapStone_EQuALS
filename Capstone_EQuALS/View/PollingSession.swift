//
//  PollingSession.swift
//  first
//
//  Created by Enola on 2022/4/27.
//

import SwiftUI

struct PollingSession: View {
    @State var submit: Bool = false
    
    var body: some View {
        VStack{
            Head(tital: "Polling Session")
                .padding().frame(height:100)
            Que()
            SubBut(submit: self.$submit)
        }.frame( height: 880, alignment: .top)
    }
}

struct SubBut: View {
    @Binding var submit: Bool
    var body: some View {
        HStack{
            VStack{
                Button(action: {self.submit.toggle()}, label: {
                    Text("Submit")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                })
            }.frame(width: 120, height: 60)
                .background(.blue)
                .cornerRadius(14)
        }.frame(width: 380, height: 100, alignment: .trailing)
    }
}



struct PollingSession_Previews: PreviewProvider {
    static var previews: some View {
        PollingSession()
    }
}
