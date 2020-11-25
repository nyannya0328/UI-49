//
//  ContentView.swift
//  UI-49
//
//  Created by にゃんにゃん丸 on 2020/11/25.
//

import SwiftUI

struct ContentView: View {
    @State var size = UIScreen.main.bounds.height - 130
    var body: some View {
        ZStack{
            
            Color.red
            SwipView()
                .cornerRadius(20)
                .padding()
                .offset(y: size)
                
                .gesture(DragGesture().onChanged({ (value) in
                    
                    if value.translation.height > 0 {
                        
                        self.size = value.translation.height
                        
                    }
                    else{
                        let temp = UIScreen.main.bounds.height - 500
                        self.size = temp + value.translation.height
                        
                        
                    }
                    
                    
                    
                    
                    
                })
                
                .onEnded({ (value) in
                    if value.translation.height > 0{
                        
                        if value.translation.height > 200{
                            
                            self.size = UIScreen.main.bounds.height - 130
                            
                            
                        }
                        else{
                            self.size = 15
                            
                            
                        }
                        
                        
                        
                        
                        
                    }
                    
                    
                    else{
                        
                        if value.translation.height < -200{
                            
                            self.size = 15
                        }
                        
                        else{
                            
                            self.size = UIScreen.main.bounds.height - 130
                            
                            
                        }
                        
                        
                        
                    }
                    
                }))
                .animation(.interactiveSpring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.8))
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct SwipView : View {
    var body: some View{
        
        VStack{
            
            VStack{
                
                
                Text("A")
                    .fontWeight(.heavy)
                    .padding([.top,.bottom],20)
                
                
                
                
            }
            
            HStack{
                
                Text("B")
                    .fontWeight(.heavy)
                    .padding()
                Spacer()
                
                
                
            }
            Spacer()
            
            Text("Swipe")
                .fontWeight(.heavy)
                .padding()
            
            
            
            
        }
        .background(Color.white)
        
        
    }
}
