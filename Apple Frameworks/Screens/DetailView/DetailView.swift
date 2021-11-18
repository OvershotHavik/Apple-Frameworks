//
//  DetailView.swift
//  Apple Frameworks
//
//  Created by Steve Plavetzky on 11/10/21.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var viewModel: DetailVM

    
    var body: some View {
        VStack{
//            ExitButtonView(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
                        
            Spacer()

            FrameworkTitleView(framework: viewModel.framework)
            
            Spacer()
            
            Text(viewModel.framework.description)
                .font(.body)
            
            Spacer()

            LearnMoreButtonViewLink(urlString: viewModel.framework.urlString)
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(viewModel: DetailVM(framework: MockData.sampleFramework, isShowingDetailView: .constant(false)))
//        DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}


//MARK: - Learn More Button
struct LearnMoreButtonViewLink: View{
    var urlString: String
    
    var body: some View{
        Link(destination: URL(string: urlString) ?? URL(string: "https://www.apple.com")!) {
            Label("Learn More", systemImage: "book.fill")
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        .tint(.blue)
    }
}
