//
//  CustomTextfieldApp.swift
//  CustomTextfield
//
//  Created by Sanjeev Bharti on 11/5/23.
//

import SwiftUI

@main
struct CustomTextfieldApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                FirstView()
                SecondView()
                ThirdView()
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .onAppear {
                UIPageControl.appearance().currentPageIndicatorTintColor = .black
                UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
            }
//            .edgesIgnoringSafeArea(.bottom)
        }
    }
}
