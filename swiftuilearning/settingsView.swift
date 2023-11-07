//
//  settingsView.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 07/11/23.
//

import SwiftUI


struct tileModel : Identifiable {
    var id = UUID()
    var icon : String
    var name : String
}
struct settingsView: View {
    
    @State var searchQuery : String = ""
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(.systemGray6).ignoresSafeArea(.all)
                
                ScrollView(.vertical, content: {
                    LazyVStack {
                        Spacer().frame(height: 10)
                        HStack {
                            
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.secondary)
                                .frame(width: 18, height: 18)
                            
                            Spacer().frame(width: 8)
                            TextField(text: $searchQuery) {
                                Text("Search...")
                            }
                            
                            Spacer()
                            
                            Image(systemName: "mic.fill")
                                .foregroundColor(.secondary)
                                .frame(width: 18, height: 18)
                            
                            
                        }.padding(12).background(Color(.systemBackground)).cornerRadius(10)
                        
                        Spacer().frame(height: 20)
                        VStack {
                            HStack {
                                Image("story1").resizable()
                                    .aspectRatio(contentMode: .fill)
                                .frame(width: 52, height: 52)
                                .cornerRadius(90)
                                
                                Spacer().frame(width: 16)
                                VStack {
                                    HStack {
                                        VStack {
                                            HStack {
                                                Text("Bhaskar Kaura").font(.system(size: 20, weight: .medium))
                                                    .frame(alignment: .leading)
                                                    .multilineTextAlignment(.leading)
                                                
                                                Spacer()
                                            }
                                            Spacer().frame(height: 4)
                                            HStack {
                                                Text("Apple Id, ICloud+, Media & Purchases").font(.system(size: 13, weight: .regular))
                                                Spacer()
                                            }
                                            Spacer()
                                            
                                        }.padding(.top, 6)
                                        
                                        Spacer()
                                        Image(systemName: "chevron.right").resizable().aspectRatio(contentMode: .fit)
                                            .foregroundColor(Color(.systemGray2))
                                            .frame(width: 14, height: 14)
                                    }
                                    
                                    Divider()
                                        .padding(.vertical,6)
                                    
                                }
                             
                            }
                            
                            HStack {
                                HStack {
                                    Image("person2").resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 32, height: 32)
                                        .cornerRadius(90)
                                    
                                    Image("person1").resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 32, height: 32)
                                        .cornerRadius(90)
                                        .padding(.leading, -20)
                                }
                                
                                Spacer().frame(width: 16)
                            
                                        VStack {
                                            HStack {
                                                Text("Family").font(.system(size: 16, weight: .medium))
                                                    .frame(alignment: .leading)
                                                    .multilineTextAlignment(.leading)
                                                
                                                Spacer()
                                            }
                                        }
                                        
                                        Spacer()
                                        Image(systemName: "chevron.right").resizable().aspectRatio(contentMode: .fit)
                                            .foregroundColor(Color(.systemGray2))
                                            .frame(width: 14, height: 14)
                                  
                             
                            }
                        
                        }.padding(.vertical, 8).padding(.horizontal, 14).background(Color(.systemBackground)).cornerRadius(10)
                        
                        Spacer().frame(height: 20)
                        sectionView(tileList: [
                            tileModel(icon:"airplane", name: "Aeroplane Mode") ,
                            tileModel(icon:"wifi", name: "Wi-Fi"),
                            tileModel(icon:"antenna.radiowaves.left.and.right.circle.fill", name: "Bluetooth"),
                            tileModel(icon:"antenna.radiowaves.left.and.right.circle", name: "Cellular"),
                            
                        ],title: "Network & Connectivity")
                        
                        Spacer().frame(height: 20)
                        
                        sectionView(tileList: [
                            tileModel(icon:"bell.badge.fill", name: "Notifications") ,
                            tileModel(icon:"speaker.wave.3.fill", name: "Sounds & Haptics"),
                            tileModel(icon:"moon.fill", name: "Focus"),
                            tileModel(icon:"iphone.gen2", name: "Screen Time"),
                            
                        ],title: "System")
                        
                        Spacer().frame(height: 20)
                        
                        sectionView(tileList: [
                            tileModel(icon:"gear", name: "General") ,
                            tileModel(icon:"switch.2", name: "Control Centre"),
                            tileModel(icon:"alarm.fill", name: "Alarm"),
                            tileModel(icon:"iphone.smartbatterycase.gen2", name: "Display & Brightness"),
                            
                        ],title: "General")
                        
                        Spacer()
                    }.padding(.horizontal)
                })
                
            }  .navigationTitle("Settings")
            
        }
    }
}

struct settingsTileView : View {
    var icon : String
    var name : String
    var body : some View {
        
        NavigationLink (destination: {
            Text(name)
        }, label: {
            ZStack {
                VStack {
                    HStack {
                        Image(systemName: icon).resizable().aspectRatio(contentMode: .fit)
                            .frame(width: 22, height: 22)
                        Spacer().frame(width: 14)
                        Text(name).font(.system(size: 17, weight: .medium))
                        Spacer()
                        Image(systemName: "chevron.right").resizable().aspectRatio(contentMode: .fit)
                            .foregroundColor(Color(.systemGray2))
                            .frame(width: 14, height: 14)
                    }.padding(16)
                }
                
            }.background(Color(.systemBackground)).cornerRadius(8)
        }).foregroundColor(Color(.label))

    }
}

struct sectionView : View {
    var tileList : [tileModel] = []
    var title : String
    var body : some View {
        Section {
            HStack {
                Text(title).multilineTextAlignment(.leading)
                    .font(.system(size: 14)).foregroundColor(.secondary)
                    .padding(.horizontal, 14)
                Spacer()
            }
          
            Spacer().frame(height: 12)
            ForEach(tileList) { list in
                settingsTileView(icon: list.icon, name: list.name)
            }
          
        }
    }
}

struct ExDivider: View {
    let color: Color = .gray
    let width: CGFloat = 1
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: width)
            .edgesIgnoringSafeArea(.horizontal)
    }
}

struct customerRoundedCorners: View {
    let radius = 12 // radius we need
    var body: some View {
        Rectangle()
            .frame(height: 50)
            .foregroundColor(.black)
        .padding(.bottom, 0)
        .cornerRadius(10)
        .padding(.bottom, -10)
    }
}
#Preview {
    settingsView()
}
