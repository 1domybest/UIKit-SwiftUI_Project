//
//  ContentView.swift
//  SwiftUIWithUIKit
//
//  Created by 온석태 on 2023/10/19.
//

import SwiftUI

struct ContentView: View {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate // register app delegate for Firebase setup
    
    @Environment(\.navigationController) var navigationController: NavigationController? // 네비게이션
    
    var body: some View {
        ZStack {
            
            VStack {
                Button(action: {
                    navigationController?.push(SecondView(), animated: true, viewName: .SecondView)
                }, label: {
                    Text("ContentView")
                })
                
            }
            
        }
    }
}


struct SecondView: View {
    
    var body: some View {
        ZStack {
            Text("Second View")
        }
    }
}
