//
//  SettingsView.swift
//  whatsappSimple
//
//  Created by Deepak JOSHI on 22/09/20.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView{
            Form{
                Section{
                    HStack{
                        Image("profile")
                            .resizable()
                            .frame(width: 60, height: 60, alignment: .center)
                            .cornerRadius(30).clipped()
                            .padding(5)
                        VStack(alignment: .leading,spacing : 2){
                            Text("Deepak JOSHI").font(.title)
                            Text("iOS Developer")
                        }.padding(.leading,5)
                    }.padding(.leading,-10)
                }
                
                
                Section{
                    HStack{
                        Image(systemName: "star")
                        Text("Starred Messages").padding()
                    }.frame(height: 40)
                    HStack{
                        Image(systemName: "desktopcomputer")
                        Text("Whatsapp Web/Desktop").padding()
                    }.frame(height: 40)
                }
                
                Section{
                    HStack{
                        Image(systemName: "person")
                        Text("Account").padding()
                    }.frame(height: 40)
                    HStack{
                        Image(systemName: "bubble.left.and.bubble.right")
                        Text("Chats").padding()
                    }.frame(height: 40)
                    HStack{
                        Image(systemName: "bell")
                        Text("Notification").padding()
                    }.frame(height: 40)
                    HStack{
                        Image(systemName: "arrow.up.arrow.down")
                        Text("Data and storage usage").padding()
                    }.frame(height: 40)
                }
                
                Section{
                    HStack{
                        Image(systemName: "info.circle")
                        Text("Help").padding()
                    }.frame(height: 40)
                    HStack{
                        Image(systemName: "suit.heart")
                        Text("Tell a friend").padding()
                    }.frame(height: 40)
                }
            }
            .navigationTitle("Settings")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        print("Tapped")
                                    }, label: {
                                        Image(systemName: "qrcode").font(.title)
                                    })
            )
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().environment(\.colorScheme, .dark)
    }
}
