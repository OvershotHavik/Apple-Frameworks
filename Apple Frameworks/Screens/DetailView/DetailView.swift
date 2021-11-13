//
//  DetailView.swift
//  Apple Frameworks
//
//  Created by Steve Plavetzky on 11/10/21.
//

import SwiftUI

struct DetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView : Bool
    
    var body: some View {
        VStack{
//            ExitButtonView(isShowingDetailView: $isShowingDetailView)
                        
            Spacer()

            FrameworkTitleView(framework: framework)
            
            Spacer()
            
            Text(framework.description)
                .font(.body)
            
            Spacer()

            LearnMoreButtonViewLink(urlString: framework.urlString)
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
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
