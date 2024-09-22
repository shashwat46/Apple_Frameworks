//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Shashwat Singh on 22/9/24.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject {
    
    var selectedFramework : Framework?{
        didSet{isShowingDetailView = true}
    }
    
    @Published var isShowingDetailView = false
    
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
}
