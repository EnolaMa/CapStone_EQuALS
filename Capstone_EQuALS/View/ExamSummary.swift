//
//  ExamSummary.swift
//  first
//
//  Created by Enola on 2022/4/23.
//

import SwiftUI

struct ExamSummary: View {
    
    @State var total:Int = 10
    @State var correct:Int = 5
    @State var incomplete:Int = 4
    
    var body: some View {
        VStack(){
                
                ScrollView(.vertical, showsIndicators: false,content: {
                    ScrollViewReader{reader in
                        
                        VStack(spacing: 0){
                            Info(total: self.$total, correct: self.$correct, incomplete: self.$incomplete)
                        }
                    }}
                    )
                
//                Spacer()
            }
            .overlay(
            
            Head(tital: "Exam Summary")
            
            ,alignment: .top)
        
       
    }
}


struct Info: View {
    
    @State var tital = ""
    @State var mon = Date.now.formatted(date: .long, time: .omitted)
    @State var time = Date.now.formatted(date: .omitted, time: .shortened)
    @Binding var total: Int
    @Binding var correct: Int
    @Binding var incomplete: Int
    
    var body: some View {
        VStack(spacing: 0){
            
            Spacer()
                .frame(height: 40)
            
            ZStack{
                
                HStack{
                    
                }.frame(width: 450, height: 170)
                    .background(Color(red: 239/255, green: 255/255, blue: 253/255))
                
                HStack{
                    
                    VStack{
                        HStack{
                            
                            Text("\(mon)")
                                .font(.headline)
                                .foregroundColor(Color.white)
                        }.frame(width: 98, height: 50)
                        
                        
                        Spacer()
                            .frame(width: 0, height: 0)
                        
                        HStack{
                            Text("\(time)")
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
                                
                                Text("\(total) Questions")
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
                RingView(total: self.$total, correct: self.$correct)
                
                
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
                        
                        Text("(\(correct)/\(total))")
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
                        
                        Text("(\(incomplete)/\(total))")
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
                .background(.white)
            
            Rectangle()
                .frame(width: 450, height: 5)
                .foregroundColor(.gray)
                .padding(.bottom)
            
            
            
            VStack(alignment: .leading, spacing: 20){
                
                HStack{
                    Text("#")
                        .frame(height: 50)
                        .font(.headline)
                    
                    Spacer()
                        .frame(width: 20)
                    Text("Response")
                        .font(.headline)
                    Spacer()
                        .frame(width: 55)
                    Text("Question Text")
                        .font(.headline)
                    Spacer()
                        .frame(width: 60)
                    Text("Correct")
                        .font(.headline)
                    
                }
                .frame(width: 400, alignment: .leading)
                
                Divider()
                ForEach(1..<21){i in
                    
                    
                    HStack(spacing: 0){
                        Text("\(i)")
                            .frame(width: 25,height: 50,alignment: .leading)
                            .font(.title3)
                            
                        Spacer()
                            .frame(width: 10)
                        Text("Lorem ipsum dolor sit amet")
                            .font(.callout)
                            .frame(width: 100, height: 50, alignment: .leading)
                        Spacer()
                            .frame(width: 20)
                        Text("Lorem iosum dolor sit amet. consec-tetur adipiscing elit, sed do")
                            .font(.callout)
                            .frame(width: 170, height: 50, alignment: .leading)
                        Spacer()
                            .frame(width: 25)
                        mark()
                        
                    }
                    
                    Divider()
                }
            }
            .frame(width: 400, height: .infinity)
            
        }
        
        }
}




struct mark: View {
    
    @State var check:Bool = false
    
    var body: some View {
        HStack{
            Image(systemName:check ? "checkmark" : "xmark")
            .foregroundColor(Color.white)
            .imageScale(.large)
        }.frame(width: 40, height: 40)
            .background(check ? Color(red:93/255, green: 139/255, blue: 244/255)
                        : Color(red:255/255, green: 161/255, blue: 161/255))
            .cornerRadius(100)
        
    }
}


struct RingView: View {
    @Binding var total: Int
    @Binding var correct: Int
    var width: CGFloat = 100
    var color1 = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    var color2 = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    var body: some View {
        let percent: CGFloat = CGFloat(correct * 100 / total)
        let mutiplier = width / 44
        let progress = 1 - percent / 100
        return ZStack{
            Circle()
                .stroke(Color.red.opacity(0.4),
                        style: StrokeStyle(lineWidth: 6 * mutiplier))
                .frame (width: width, height: width)
            Circle()
                .trim(from: progress, to: 1)
                .stroke(
                    LinearGradient(gradient: Gradient(colors: [Color(color1), Color(color2)]), startPoint: .topLeading, endPoint: .bottomTrailing),
                    style: StrokeStyle(lineWidth: 6 * mutiplier, lineCap: .round, lineJoin: .round)
                    )
                .rotationEffect(Angle(degrees: 90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                .frame (width: width, height: width)
            
            Text ("\(Int (percent))%")
                .font(.system(size: 14 * mutiplier))
                .fontWeight(.bold)
        }
    }
}


struct ExamSummary_Previews: PreviewProvider {
    static var previews: some View {
        ExamSummary()
    }
}
