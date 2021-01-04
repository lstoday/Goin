//
//  ContentView.swift
//  GoIn
//
//  Created by yali on 2020/7/5.
//  Copyright © 2020 yali. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State private var time = ""
    @State private var name = ""
    var body: some View {
        VStack {
            ZStack {
                Image("backImg").resizable().onAppear(perform: getTime).scaledToFill().offset(x: 0, y: -10)
//                TextField("",text : $time).offset(x: 94, y: 118)
//                TextField("",text : $name).offset(x: 88, y: 53)
                Text(name).font(.system(size: 15, weight: .light, design: .serif)).offset(x: -104, y: 53)
                Text(time).font(.system(size: 17)).offset(x: -30, y: 118)
                
            }
        }
    }
    func getTime() {
        let date = Date()
        let dateFormater = DateFormatter()
        
        dateFormater.dateFormat = "yyyy-MM-dd HH:mm:ss"
        time  = dateFormater.string(from: date)
        name = "李松"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
