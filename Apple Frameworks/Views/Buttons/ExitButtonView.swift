//
//  ExitButtonView.swift
//  Apple Frameworks
//
//  Created by Steve Plavetzky on 11/10/21.
//

import SwiftUI

struct ExitButtonView: View{
    @Binding var isShowingDetailView: Bool
    var body: some View{
        HStack{
            Spacer()
            
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct ExitButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ExitButtonView(isShowingDetailView: .constant(false))
    }
}
