//
//  ContentView.swift
//  mini project 1
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        
           // Text("مرحبا بك،، يمكنك اختيار الدراجة المناسبة لك من القائمه وأكمل بياناتك للحجز")
              //  .foregroundColor(.black)
        NavigationView{
                
               
                
                List{
                    Text("مرحبا بك،، يمكنك اختيار الدراجة المناسبة لك من القائمه وأكمل بياناتك للحجز")
            
                    ForEach (info){ renting in
                        
                    
                    NavigationLink(
                        destination: page2(renting: renting),
                        label: {
                            biclist(renting: renting)
                        })
                    
                }
                }
                
                .navigationBarTitle("تأجير الدراجات")
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct biclist: View {
    
    let renting : Renting
    var body: some View {
        
        HStack(){
            Text("\(renting.price)")
                .font(.system(size: 22))
                .foregroundColor(.white)
                
                .padding()
                
                .background(Color.blue)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Image(renting.bic)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 85)
            
            
            
        }
    }
}

