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
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
//            ExitButtonView(isShowingDetailView: $isShowingDetailView)
                        
            Spacer()

            FrameworkTitleView(framework: framework)
            
            Spacer()
            
            Text(framework.description)
                .font(.body)
            
            Spacer()
            
            LearnMoreButtonView(isShowingSafariView: $isShowingSafariView)
        }
        .padding()
        
        .fullScreenCover(isPresented: $isShowingSafariView) {
            if let safeURL = framework.urlString{
                SafariView(url: URL(string: safeURL) ?? URL(string: "www.apple.com")!)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}


//MARK: - Learn More Button
struct LearnMoreButtonView: View{
    @Binding var isShowingSafariView: Bool
    var body: some View{
        Button {
            isShowingSafariView = true
        } label: {
            AFButton(title: "Learn More")
        }
    }
    
}
