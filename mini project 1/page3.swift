//
//  page3.swift
//  mini project 1
//
//  Created by bibi on 03/01/2021.
//

import SwiftUI

struct page3: View {
    var name : String
     var houre : Int
     var phonenum : String
     var total :String
    var body: some View {
        VStack{
            List{
            HStack{
                Text("\(name)")
                Spacer()
                Text("الاسم:")
               
               
                
            }
            .padding()
            .background(Color.blue.opacity(0.2))
                
                
            HStack{
                Text("\(houre)")
                Spacer()
                Text("الساعات:")
            
            }
        
            .padding()
            .background(Color.blue.opacity(0.2))
                
            HStack{
                Text("\(phonenum)")
                Spacer()
                Text("رقم الهاتف:")

                
            }
            .padding()
            .background(Color.blue.opacity(0.2))
                
            HStack{
                Text("\(total)")
                Spacer()
                Text("المبلغ:")
                
          
        }
            .padding()
            .background(Color.blue.opacity(0.2))
            }
           
          Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("ادفع الآن")
                    .foregroundColor(.white)
               
                    .padding(.vertical, 10)
                    .padding(.horizontal, 100)
               
                    .background(Color.blue)
                    .cornerRadius(18)
              
            })
        }
        .padding()
        .font(.system(size: 22))
    }
}

struct page3_Previews: PreviewProvider {
    static var previews: some View {
        page3(name: "maha", houre: 1, phonenum: "22222", total: "2")
    }
}

