//
//  ContentView.swift
//  first
//
//  Created by Enola on 2022/3/8.
//

import SwiftUI


struct Exam: View {
    
    @State var right = false
    @State var rate: Float=0
    @State var total: Float=10
    @State var redo = false
    @State var back = false
    
    var body: some View {
        ZStack{
            VStack{
                Tital(back: self.$back, right: self.$right)
                Progress(rate: self.$rate,total: self.$total)
                
                Que()
                FourButton(rate: self.$rate,total: self.$total, redo: self.$redo)
                Advertisement()
            }
            if self.right{
                Card(right: self.$right)
            }
                
        }.animation(.easeOut)
    }
    
}

struct Tital: View{
    @Binding var back: Bool
    @Binding var right: Bool
    @State var left: Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 55){
                
                VStack{
                    Button(action: {self.back.toggle()}, label: {Image(systemName: "arrow.left")
                            .foregroundColor(Color.blue)
                            .imageScale(.large)
                    })
                    
                    
                }
                
                
                VStack(alignment: .center){
                    Text("Exam Content")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.center)
                        
                }
                
                VStack{
                    Button(action: {self.right.toggle()}, label: {Image(systemName: right ? "" : "text.justify.left")
                            .foregroundColor(Color.blue)
                            .imageScale(.large)
                    }).frame(width: 30, height: 30)
                }
            }
            Spacer().frame(width: 200, height: 20)
        }.frame( alignment: .leading)
        
        
        
    }
    
}


struct Progress: View{
    @State private var progress = 0.5
    @Binding var rate: Float
    @Binding var total: Float
    var body: some View {
        HStack{
            ProgressView( value: self.rate, total:self.total)
                .padding(.bottom)
                .frame( height: 30)
        }
        
    }
}





struct FourButton: View{
    
    @Binding var rate: Float
    @Binding var total: Float
    @Binding var redo: Bool
    
    var body: some View {
        HStack{
            VStack{
                Button(action:
                        {self.redo.toggle()}
                       , label:
                        {Image(systemName: "repeat")
                        .foregroundColor(Color.white)
                        .imageScale(.large)
                }
                    )
            }
            .frame(width: 60, height: 50 )
            .background(Color(red:93/255, green: 139/255, blue: 244/255))
            .cornerRadius(10)
            .padding()
            
            VStack{
                Button(action:
                        {self.redo.toggle()}
                       , label:
                        { Image(systemName: "checkmark")
                        .foregroundColor(Color.white)
                        .imageScale(.large)
                       }
                       )
            }
                .frame(width: 60, height: 50 )
                .background(Color(red:93/255, green: 139/255, blue: 244/255))
                .cornerRadius(10)
                .padding()
            VStack{
                Button(action:
                        {self.rate+=(-1)}
                       , label:
                        {Image(systemName: "arrow.left")
                        .foregroundColor(Color.white)
                        .imageScale(.large)
                }
                    )
                
            }.frame(width: 60, height: 50 )
                .background(Color(red:93/255, green: 139/255, blue: 244/255))
                .cornerRadius(10)
                .padding()
            VStack{
                
                Button(action:
                        {self.rate+=1}
                       , label:
                        {Image(systemName: "arrow.right")
                        .foregroundColor(Color.white)
                        .imageScale(.large)
                }
                    )
                
                
            }.frame(width: 60, height: 50 )
                .background(Color(red:93/255, green: 139/255, blue: 244/255))
                .cornerRadius(10)
                .padding()
        }
    }
}

struct Advertisement: View{
    var body: some View {
        VStack(){
            HStack{
                Text("Advertisement")
            }
        }
        .frame(width: 450, height: 50)
        .background(Color(red: 239/255, green: 255/255, blue: 253/255))
        }
}

struct Card: View{
    
    @Binding var right: Bool
    
    var body: some View {
        HStack{
            Spacer().frame(width:400, height: 700)
            VStack{
               
                HStack{
                    VStack{
                        HStack{
                            Image(systemName: "chart.bar.doc.horizontal")
                                .resizable(resizingMode: .tile)
                                .foregroundColor(Color.blue)
                                .imageScale(.large)
                        }.frame(width: 30, height: 30)
                            .padding()
                        
                        HStack{
                            Image(systemName: "star.fill")
                                .resizable(resizingMode: .tile)
                                .foregroundColor(Color.blue)
                                .imageScale(.large)
                        }.frame(width: 30, height: 30)
                            .padding()
                        
                        HStack{
                            Image(systemName: "candybarphone")
                                .resizable(resizingMode: .tile)
                                .foregroundColor(Color.blue)
                                .imageScale(.large)
                        }.frame(width: 30, height: 35)
                            .padding()
                        
                        HStack{
                            Image(systemName: "info.circle.fill")
                                .resizable(resizingMode: .tile)
                                .foregroundColor(Color.blue)
                                .imageScale(.large)
                        }.frame(width: 30, height: 30)
                            .padding()
                        
                        HStack{
                            Image(systemName: "exclamationmark.triangle.fill")
                                .resizable(resizingMode: .tile)
                                .foregroundColor(Color.blue)
                                .imageScale(.large)
                        }.frame(width: 30, height: 30)
                            .padding()
                        
                        Spacer().frame(height: 200)
                        
                        HStack{
                        Button(action: {self.right.toggle()}, label: {Image(systemName: "xmark")
                                .resizable(resizingMode: .tile)
                                .foregroundColor(Color.blue)
                                .imageScale(.large)
                        })
                        }
                        .frame(width: 30, height: 30)
                            .padding()
                        
                    }
                    
                    VStack{
                        
                    }.frame(width: 70)
                }
            }
            .frame(width: 200, height: 700)
            .background(Color(red: 214/255, green: 229/255, blue: 250/255))
            .cornerRadius(20)
            
        }
        }
        
    }


struct Exam_Previews: PreviewProvider {
    static var previews: some View {
        Exam()
//.previewInterfaceOrientation(.portrait)
    }
}
