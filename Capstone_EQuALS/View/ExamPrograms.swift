//
//  ExamPrograms.swift
//  first
//
//  Created by Enola on 2022/4/27.
//

import SwiftUI

struct ExamPrograms: View {
    @State var buy:Bool = false
    @State var free:Bool = false
    @State var state:Bool = false
    @State var state2:Bool = true
    
    
    @State var name:String = "LABSG"
    @State var content:String = "LABSG (4,400+ Question)"
    @State var name2:String = "Law Enforcement"
    @State var content2:String = "(Indiana) ILEA Tier I Study Questions"
    @State var name3:String = "Structville"
    @State var content3:String = "Structville - Concrete Technology Quiz"
    
    
    var body: some View {
        
        VStack(){
                Head(tital: "Exam Programs")
                ScrollView(.vertical, showsIndicators: false,content: {
                    ScrollViewReader{reader in
                        
                        VStack(spacing: 0){
                            list(name: self.$name, content: self.$content, state: self.$state, buy: self.$buy, free: self.$free)
                            list(name: self.$name2, content: self.$content2, state: self.$state2, buy: self.$buy, free: self.$free)
                            list(name: self.$name3, content: self.$content3, state: self.$state2, buy: self.$buy, free: self.$free)
                        }
                    }}
                    )
                

            }
    }
}

struct list: View {
    
    @Binding var name:String
    @Binding var content:String
    @Binding var state:Bool
    @Binding var buy:Bool
    @Binding var free:Bool
    
    var body: some View {
        VStack(alignment: .leading,spacing: 0){
            
            HStack{
                Text(name)
                    .font(.title2)
                    .fontWeight(.bold)
            }
            .padding(.bottom)
            HStack{
                Spacer().frame(width: 30)
                Text(content)
                    .frame(width: 200,alignment: .leading)
                    .font(.headline)
                Spacer().frame(width: 20)
                if self.state{
                    button(buy: self.$buy, free: self.$free)
                }else{
                    Text("Coming Soon!")
                        .font(.headline)
                        .fontWeight(.bold)
                }
                
            }
   
        }.frame(width: 400, height: 150, alignment: .leading)
        
        Rectangle()
            .frame(width: 400, height: 3)
            .foregroundColor(.gray)
    }
}


struct button: View {
    
    @Binding var buy:Bool
    @Binding var free:Bool
    
    var body: some View {
        VStack{
            
            VStack{
                Button(action:
                        {self.buy.toggle()}
                       , label:
                        { Text("Buy Now")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                       }
                       )
            }.frame(width: 100, height: 30 )
                .background(Color(red:93/255, green: 139/255, blue: 244/255))
                .cornerRadius(10)
            
            VStack{
                Button(action:
                        {self.free.toggle()}
                       , label:
                        { Text("Free Demo")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                       }
                       )
            }.frame(width: 100, height: 30 )
                .background(Color(red:42/255, green: 37/255, blue: 80/255))
                .cornerRadius(10)
            
            
            
        }.frame(width: 130, height: 30)
    }
}



struct ExamPrograms_Previews: PreviewProvider {
    static var previews: some View {
        ExamPrograms()
    }
}
