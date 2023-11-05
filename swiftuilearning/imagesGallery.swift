//
//  imagesGallery.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 04/11/23.
//

import SwURL
import SwiftUI

struct imagesGallery: View {
    var grid = [
        GridItem(.flexible(minimum: 120)),
        GridItem(.flexible(minimum: 120))
    ]
    
    @State var imageIsLoaded = false;
    var images = ["https://img.freepik.com/free-photo/digital-painting-mountain-with-colorful-tree-foreground_1340-25699.jpg",
    "https://img.freepik.com/premium-photo/mountain-lake-with-mountain-background_859153-7.jpg",
    "https://img.freepik.com/premium-photo/lake-with-mountains-background_824539-118.jpg",
                  "https://images.unsplash.com/photo-1581456495146-65a71b2c8e52?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHx8&w=1000&q=80",
                  "https://static.vecteezy.com/system/resources/previews/022/692/148/non_2x/beautiful-image-of-lord-krishna-on-black-background-generative-ai-photo.jpeg",
                  "https://imgv3.fotor.com/images/slider-image/A-clear-image-of-a-woman-wearing-red-sharpened-by-Fotors-image-sharpener.jpg"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    
                    LazyVGrid(columns: grid, content: {
                        
                        ForEach(0..<images.count, content: { i in
                            
                            SwURLImage(url: URL(string: images[i])!, placeholderImage: Image("loading"), transition: .none)
                                .imageProcessing({ img in
                                    return img.resizable()
                                    .frame(height: 300)
                                })
                                .progress({ progress in
                                  
                                    return ProgressView(value: progress)
                                        .foregroundColor(.blue)
                                    
                                })
                            
                                .cornerRadius(8)
                            
                        })
                        
                    })
                    
                
                    
                }.navigationTitle("Gallery").padding()
            }
        }
    }
}

#Preview {
    imagesGallery()
}
