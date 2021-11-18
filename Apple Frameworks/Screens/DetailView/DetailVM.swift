//
//  DetailVM.swift
//  Apple Frameworks
//
//  Created by Steve Plavetzky on 11/18/21.
//

import SwiftUI

final class DetailVM: ObservableObject{
    
    let framework: Framework
    var isShowingDetailView: Binding<Bool>
    
    init(framework: Framework, isShowingDetailView: Binding<Bool>){
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
    }
}
