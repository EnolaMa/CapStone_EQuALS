//
//  Que.swift
//  first
//
//  Created by Enola on 2022/4/6.
//

import SwiftUI

struct Que: View {
    var body: some View {
        QuestionCard(question: "Question")
        AnswerCard(title:"Answer A")
        AnswerCard(title:"Answer B")
        AnswerCard(title:"Answer C")
        AnswerCard(title:"Answer D")
    }
}



struct QuestionCard: View{
    var question: String = ""
    
    var body: some View {
            
            HStack {
                Spacer()
                    .frame(width: 25)
                VStack(alignment: .center, spacing: 3.0) {
                    Text(self.question)
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                }
                Spacer()
                    .frame(width: 25)
            }.frame(width: 380, height: 220 )
            .background(Color(red: 239/255, green: 255/255, blue: 253/255))
            //(red: 239/255, green: 255/255, blue: 253/255)
                .background(.bar)
                .cornerRadius(50)
                .shadow(color: .gray, radius: 23, x: 10, y: 15)
            Spacer()
                .frame(height: 40 )
        
    }
}

// githu token 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
struct AnswerCard: View{
    
    var title: String = ""
    @State var isChecked: Bool = false
    
    var body: some View {
        HStack {
//            Button( <#LocalizedStringKey#>, action: {
//                    self.isChecked.toggle()
//                }
//                  )
                Spacer()
                    .frame(width: 25)
                VStack(alignment:.leading) {
                    
                    Button(action: {self.isChecked.toggle()}, label: {Text(self.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)})
                }
                Spacer()
                    .frame(width: 200)
            }.frame(width: 380, height: 55 )
            .background(Color(red: 239/255, green: 255/255, blue: 253/255))
                .background(.bar)
                .cornerRadius(25)
                .shadow(color: .gray, radius: 23, x: 05, y: 15)
                //.buttonStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/)
            Spacer()
            .frame(height: 30)
    }
}

struct Que_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
        Que()
        }
    }
}
