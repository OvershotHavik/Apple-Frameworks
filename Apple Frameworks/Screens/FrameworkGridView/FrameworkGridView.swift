//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Steve Plavetzky on 11/10/21.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: DetailView(viewModel: DetailVM(framework: framework,
                                                                               isShowingDetailView: $viewModel.isShowingDetailView))){
                        FrameworkTitleView(framework: framework) // determines what is in the list and what responds to the tap
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}


struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
