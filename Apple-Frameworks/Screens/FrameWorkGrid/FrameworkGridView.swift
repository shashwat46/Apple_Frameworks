//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Shashwat Singh on 22/9/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
                  
            
        }
        
    }
}


//MARK: PREVIEW
struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}





