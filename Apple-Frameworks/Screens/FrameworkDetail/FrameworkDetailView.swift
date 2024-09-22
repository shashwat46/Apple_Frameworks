//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Shashwat Singh on 22/9/24.
//

import SwiftUI

struct FrameworkDetailView: View {

    var framework : Framework
    @Binding var isShowingDetailView : Bool
    @State private var isShowingSafariView = false
    
    var body: some View{
        VStack{
            
            XDismissButton(isShowingModal: $isShowingDetailView)
            
            Spacer()
           
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            }label: {
//                AFButton(title: "Learn More")
                Label("Learn More",
                      systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.yellow)
                
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })

    }

}

//MARK: PREVIEW
struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}


    
    
