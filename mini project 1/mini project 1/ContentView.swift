//
//  ContentView.swift
//  mini project 1
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
          
            
            List{
             
                Text("مرحبا بك،، يمكنك اختيار الدراجة المناسبة لك من القائمه وأكمل بياناتك للحجز")
                    .foregroundColor(.black)
                
                NavigationLink(
                    destination: page2(bic: "bic1", price: 1),
                    label: {
                        biclist(price: 1, bic: "bic1")
                    })
                
                NavigationLink(
                    destination: page2(bic: "bic2", price: 2),
                    label: {
                        biclist(price: 2, bic: "bic2")
                    })
                
                NavigationLink(
                    destination: page2(bic: "bic3", price: 3),
                    label: {
                        biclist(price: 3, bic: "bic3")
                    })
                
                NavigationLink(
                    destination: page2(bic: "bic4", price: 4),
                    label: {
                        biclist(price: 4, bic: "bic4")
                    })
                
                NavigationLink(
                    destination: page2(bic: "bic5", price: 5),
                    label: {
                        biclist(price: 5, bic: "bic5")
                    })
                
                NavigationLink(
                    destination: page2(bic: "bic6", price: 6),
                    label: {
                        biclist(price: 6, bic: "bic6")
                    })
                
                NavigationLink(
                    destination: page2(bic: "bic7", price: 7),
                    label: {
                        biclist(price: 7, bic: "bic7")
                    })
               
               
                
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
    let price: Int
    let bic: String
    var body: some View {
        
        HStack(){
            Text("\(price)")
                .font(.system(size: 22))
                .foregroundColor(.white)
           
                .padding()
           
                .background(Color.blue)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Image(bic)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 85)
            
          
            
        }
    }
}

