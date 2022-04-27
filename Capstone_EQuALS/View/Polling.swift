//
//  Polling.swift
//  first
//
//  Created by Enola on 2022/4/6.
//

import SwiftUI

struct Polling: View {
    var body: some View {
            VStack{
                Head(tital: "Polling Session")
                Spacer()
                    .frame(height: 100)
                Scope()
                Txt(txt: "Selected Answer #:Lorern ipsum dolor sit amet")
                ViewQue()
               
            }
        
    }
}


struct Head: View {
    
    @State var tital = ""
    @State var back:Bool = false
    
    var body: some View {
        VStack(spacing: 0){
            
            HStack(spacing: 55){
                
                VStack{
                    Button(action: {self.back.toggle()}, label: {Image(systemName: "arrow.left")
                            .foregroundColor(Color.blue)
                            .imageScale(.large)})
                    
                    
                }
                
                
                VStack(){
                    Text(self.tital)
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.center)
                        
                }
                Spacer().frame(width: 20, height: 20)
            }
            Spacer().frame(width: 200, height: 20)
            
            Rectangle()
                .frame(width: 500, height: 3)
                .foregroundColor(.gray)
                
        }
        .frame(width:450, height: 55)
        .background(.white)
        
//        Spacer()
        
    }
}

struct Scope: View {
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 350, height: 350)
                .foregroundColor(Color.gray)
        }
        .padding()
        
    }
}

struct Txt: View {
    @State var txt = ""
    var body: some View {
        VStack{
            Text(self.txt)
            Spacer()
                .frame( height: 100)
        }
        
        
    }
}

struct ViewQue: View {
    @State var view: Bool = false
    var body: some View {
        VStack{
            HStack{
                Button(action: {self.view.toggle()}, label: {Text("View Question")
                        .font(.title3)
                        .foregroundColor(Color.white)
                    .imageScale(.large)})
            }.frame(width: 150, height: 50)
            .background(Color(red:93/255, green: 139/255, blue: 244/255))
            .background(.bar)
            .cornerRadius(14)
            
            Spacer()
                .frame( height: 130)
        }
        
        
    }
}



struct Polling_Previews: PreviewProvider {
    static var previews: some View {
        Polling()
    }
}
