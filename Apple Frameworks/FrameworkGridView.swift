//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Steve Plavetzky on 11/10/21.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        VStack{
            Image("arkit")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("ARKit")
                .font(.title)
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
