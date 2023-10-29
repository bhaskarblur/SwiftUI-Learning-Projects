//
//  facebookHome.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 30/10/23.
//

import SwiftUI

struct facebookHome: View {
    
    @State var search: String = ""
    var body: some View {
        VStack {
    
            header().padding()
            
                TextField("Search...", text: $search)
                    .padding(10)
                    .background(Color(.systemGray5))
                    .cornerRadius(7)
                    .padding(.horizontal, 14)
            
            ZStack {
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical) {
                    VStack {
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 6) {
                                story(imageName: "person1")
                                story(imageName: "person2")
                                story(imageName: "story1")
                                story(imageName: "story2")
                            }.padding()
                        }
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(spacing: 12) {
                            
                                fbPost(pfp: "person1", name: "Mark Zukky", content: "Hope you're all have a great weekend and you're enjoying India Vs England", dateJoined: "12 Minutes")
                                
                                fbPost(pfp: "person2", name: "Steve Curry", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore", dateJoined: "1 Hour")
                                
                                fbPost(pfp: "story1", name: "Jeff Bezos", content: "Hope you're all have a great weekend and you're enjoying India Vs England", dateJoined: "3 Hours")
                                
                                fbPost(pfp: "story2", name: "Ollie Carter", content: "Hope you're all have a great weekend and you're enjoying India Vs England", dateJoined: "1 Day")
                                
                            }.padding()
                        }
                    }
                    }
            }
            
           
        }
    }
}

struct story : View {
    
    var imageName = ""
    
    init(imageName: String = "") {
        self.imageName = imageName
    }
    
    var body : some View {
        Image(self.imageName)
            .resizable()
            .frame(width: 140, height: 200, alignment: .center).background(.red)
            .aspectRatio(contentMode: .fill)
            .cornerRadius(4)
            .clipped()
    }
}
struct header : View {
    
    let facebookColor = UIColor( red: 23/255.0,
                                 green: 120/255.0, blue: 242/255.0, alpha: 1)
    
    var body : some View {
        HStack {
            Text("facebook")
                .foregroundColor(Color(facebookColor))
                .font(.system(size: 36, weight: .bold))
                .frame(alignment: .topLeading)
            
            Spacer()
            
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 36, height: 36, alignment: .center)
                .foregroundColor(Color(.secondaryLabel))
            
        }
    }
}

struct fbPost : View {
    
    var pfp: String
    var name : String
    var content : String
    var dateJoined : String

    let facebookColor = UIColor( red: 23/255.0,
                                 green: 120/255.0, blue: 242/255.0, alpha: 1)
    
    init(pfp: String, name: String, content: String, dateJoined: String) {
        self.pfp = pfp
        self.name = name
        self.content = content
        self.dateJoined = dateJoined
    }
    
    var body : some View {
        
        ZStack {
            Color(.systemGray5)
            VStack {
             
                
                HStack {
                    Image(pfp)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 48, height: 48, alignment: .center)
                        .foregroundColor(Color(.secondaryLabel))
                        .cornerRadius(36)
                    
                    Spacer().frame(width: 12)
                    
                    VStack(alignment: .leading) {
                        Text(name)
                            .frame(alignment: .top)
                            .foregroundColor(Color(facebookColor))
                            .font(.system(size: 17, weight: .semibold))
                        Spacer().frame(height: 8)
                        
                        Text("\(dateJoined) Ago")
                            .frame(alignment: .leading)
                            .font(.system(size: 14, weight: .none))
                            .foregroundColor(Color(.secondaryLabel))
                        
                        
                    }
                    Spacer()
                    
                }
                
                    Spacer().frame(height: 20)
                HStack {
                    Text(content)
                        .frame(alignment: .topLeading)
                        .font(.system(size: 16, weight: .none))
                    Spacer()
                }.padding(2)
          
                Spacer().frame(height: 20)
                HStack {

                    Text("Like")
                        .frame(alignment: .top)
                        .foregroundColor(Color(facebookColor))
                        .font(.system(size: 15, weight: .semibold))
                    Spacer()
                    Text("Comment")
                        .frame(alignment: .top)
                        .foregroundColor(Color(facebookColor))
                        .font(.system(size: 15, weight: .semibold))
                    
                    Spacer()
                    Text("Share")
                        .frame(alignment: .top)
                        .foregroundColor(Color(facebookColor))
                        .font(.system(size: 15, weight: .semibold))

                }
                Spacer()

            }.padding()
        }.cornerRadius(8)
    };
}
#Preview {
    facebookHome()
}
