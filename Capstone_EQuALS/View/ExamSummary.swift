//
//  ExamSummary.swift
//  first
//
//  Created by Enola on 2022/4/23.
//

import SwiftUI

struct ExamSummary: View {
    var body: some View {
        HStack{
            VStack(){
                
                Info()
                
                Spacer()
            }
            .overlay(
                Head(tital: "Exam Summary")
                
                ,alignment: .top
            
            )
            
        }
        
       
    }
}


struct Info: View {
    
    @State var tital = ""
    @State var images:[String] =  ["1","2","3","4"]
    
    var body: some View {
        VStack(spacing: 0){
            
            Spacer()
                .frame(height: 50)
            
            ZStack{
                
                HStack{
                    
                }.frame(width: 450, height: 170)
                    .background(Color(red: 239/255, green: 255/255, blue: 253/255))
                
                HStack{
                    
                    VStack{
                        HStack{
                            Text("March 24")
                                .font(.headline)
                                .foregroundColor(Color.white)
                        }.frame(width: 98, height: 50)
                        
                        
                        Spacer()
                            .frame(width: 0, height: 0)
                        
                        HStack{
                            Text("4:37 PM")
                                .font(.headline)
                        }.frame(width: 89, height: 49)
                            .background(Color(red:255/255, green: 255/255, blue: 255/255))
                            .cornerRadius(13)
                    }.frame(width: 90, height: 100)
                        .background(Color(red:93/255, green: 139/255, blue: 244/255))
                        .background(.bar)
                        .cornerRadius(14)
                    
                    VStack{
                        
                        VStack(alignment: .leading){
                            
                            HStack{
                                Text("Structville - Concrete Technology Quiz")
                                    .font(.callout)
                                    .fontWeight(.bold)
                            }.frame( height: 16)
                            
                            HStack{
                                Text("45 mins")
                                    .font(.caption)
                                
                                Spacer()
                                
                                Text("20 Questions")
                                    .font(.caption)
                            
                                Spacer()
                            }
                            
                        }
                        
                        Rectangle()
                            .frame(width: 300, height: 3)
                            .foregroundColor(Color.gray)
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("Description:")
                                    .font(.callout)
                                    .fontWeight(.bold)
                            }
                            
                            Spacer()
                                .frame(width: 0, height: 0)
                            
                            HStack{
                                Text("Loren ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod")
                                    .font(.caption)
                            }.frame(height: 35, alignment: .top)
                            
                        }.frame(width: 300, height: 40, alignment: .leading)
                        
                    }.frame(width: 300, height: 100)
                    
                    
                    
                }.frame(width: 420, height: 120)
                    .background()
                        .cornerRadius(15)
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                
                HStack{
                    VStack{
                      Spacer()
                            .frame(height: 15)
                        Rectangle()
                            .frame(width: 89, height: 15)
                            .foregroundColor(Color.white)
                            
                    }.frame(width: 100, height: 20)
                    
                    Spacer()
                        .frame(width: 308)
                    
                }.frame(width: 410, height: 100)
            }

            HStack{
                VStack{
                    
                    HStack(){
                        
                        VStack{
                            Text("75%")
                                .font(.title2)
                                .fontWeight(.bold)
                        }.frame(width: 80, height: 80)
                            .background(.white)
                            .cornerRadius(100 )
                        
                    }.frame(width: 110, height: 110)
                        .background(.blue)
                        .cornerRadius(100 )
                        
                    
                }
                
                Spacer()
                    .frame(width: 60)
                
                VStack(alignment: .leading){
                    
                    HStack{
                        
                        VStack{
                            Image(systemName: "checkmark")
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                        }.frame(width: 23, height: 23)
                            .background(.blue)
                            .cornerRadius(100)
                            
                        Text("Correct ")
                            .font(.callout)
                            .fontWeight(.bold)
                        
                        Text("(15/20)")
                            .font(.callout)
                            
                        
                        
                    }.padding(.bottom)
                    
                    HStack{
                        VStack{
                            Image(systemName: "minus")
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                        }.frame(width: 23, height: 23)
                            .background(.red)
                            .cornerRadius(100)
                        
                        Text("Incomplete")
                            .font(.callout)
                            .fontWeight(.bold)
                        
                        Text("(2/20)")
                            .font(.callout)
                            
                        
                    }.padding(.bottom)
                    
                    HStack{
                        
                        Text("Time Used: ")
                            .font(.body)
                            .fontWeight(.bold)
                        
                        Text("39:49:45")
                            .font(.callout)
                            .fontWeight(.regular)
                        
                    }
                    
                    
                    
                }
                
            }.frame(width: 420, height: 150)
            
            Rectangle()
                .frame(width: 450, height: 5)
                .foregroundColor(.gray)
                .padding(.bottom)
            
            
            
            HStack{
                
                
                
                
            }
            .frame(width: 400, height: 200)
            
        }
        }
}

struct emp: View {
    
    @State var tital = ""
    
    var body: some View {
        HStack{
            
        }
        
        
    }
}


struct ExamSummary_Previews: PreviewProvider {
    static var previews: some View {
        ExamSummary()
    }
}
