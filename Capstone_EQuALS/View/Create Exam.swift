//
//  Create Exam.swift
//  first
//
//  Created by Enola on 2022/4/27.
//

import SwiftUI

struct Create_Exam: View {
    @State var name:String = "LABSG"
    @State var Mode:Bool = false
    @State var rand:Bool = false
    @State var begin:Bool = false
    @State var num:Bool = false
    @State var adv:Bool = false
    @State var dur:Bool = false
    
    @State var temp:Bool = false
    
    var body: some View {
        VStack{
            Head(tital: "Create Exam")
            ScrollView(.vertical, showsIndicators: false,content: {
                ScrollViewReader{reader in
                    
                    VStack(alignment: .leading,spacing: 50){
                        Text("Topic: \(name)")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.vertical)
                        HStack{
                            Text("Exam Presentation Style")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(.trailing)
                            VStack(alignment: .leading){
                                HStack{
                                    Button(action: {self.Mode.toggle()}, label: {Image(systemName: Mode ?"circlebadge" :"circlebadge.fill" )
                                            .foregroundColor(Color.blue)
                                            .imageScale(.large)
                                    })
                                    
                                    Text("Study Session")
                                        .font(.headline)
                                }
                                .padding(.bottom)
                                HStack{
                                    Button(action: {self.Mode.toggle()}, label: {Image(systemName: Mode ? "circlebadge.fill":"circlebadge")
                                            .foregroundColor(Color.blue)
                                            .imageScale(.large)
                                    })
                                    
                                    Text("Mock Exam")
                                        .font(.headline)
                                }

                                
                                
                            }
                            
                        }
                        HStack{
                            VStack(alignment: .leading){
                                Text("Duration")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding(.trailing)
                                
                            }.frame(width: 270,alignment: .leading)
                            
                            Text("No time limit")
                                .font(.headline)
                            Button(action: {self.dur.toggle()}, label:
                                {Image(systemName: "chevron.right")
                                    .foregroundColor(Color.blue)
                                    .imageScale(.medium)
                            })
                            
                        }
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Number of Questions")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding(.trailing)
                                
                            }.frame(width:350,alignment: .leading)
                            
                            Text("20")
                                .font(.headline)
                            Button(action: {self.num.toggle()}, label:
                                {Image(systemName: "chevron.right")
                                    .foregroundColor(Color.blue)
                                    .imageScale(.medium)
                            })
                            
                        }
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Randomize Question?")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding(.trailing)
                                
                            }.frame(width:340,alignment: .leading)
                            
                            VStack{
                                Button(action: {self.rand.toggle()}, label:
                                        {Image(systemName: rand ? "capsule.inset.filled" : "capsule")
                                        .resizable(resizingMode: .tile)
                                        .foregroundColor(Color.blue)
                                        .imageScale(.large)
                                }).frame(width: 50, height: 30)
                            }
                            
                        }
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Advanced Options")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding(.trailing)
                                
                            }.frame(width:190,alignment: .leading)
                            
                            Button(action: {self.adv.toggle()}, label:
                                {Image(systemName: "chevron.down")
                                    .foregroundColor(Color.blue)
                                    .imageScale(.medium)
                            })
                            
                        }
                        
                        HStack{
                            Spacer()
                                .frame(width: 70)
                            VStack{
                                Button(action:
                                        {self.begin.toggle()}
                                       , label:
                                        {Text(Mode ? "Begin Mock Exam" : "Begin Exam Session")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                        
                                }
                                    )
                            }
                            .frame(width: 260, height: 50 )
                            .background(Color(red:93/255, green: 139/255, blue: 244/255))
                            .cornerRadius(10)
                        }
                        
                        
                        
                        
                    }.frame(width: 400, height: 700, alignment: .leading)
                    
                    
                }}
                )
        }
    }
}

struct Create_Exam_Previews: PreviewProvider {
    static var previews: some View {
        Create_Exam()
    }
}
