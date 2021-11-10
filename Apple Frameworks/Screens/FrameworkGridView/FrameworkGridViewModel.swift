//
//  FrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Steve Plavetzky on 11/10/21.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramework: Framework?{
        didSet{ isShowingDetailView = true}
    }
    
    @Published var isShowingDetailView = false //broadcasted throughout the app
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
