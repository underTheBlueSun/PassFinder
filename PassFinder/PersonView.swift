//
//  PersonView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/06.
//

import SwiftUI

struct PersonView: View {
    
    @State var openNewPage: Bool = false

    var body: some View {
        
        ZStack {
            
            NavigationView {
                
                ScrollView {
                    
                    NavigationLink(destination: PersonDetailTypeView()) {
                        
                        VStack(spacing:0) {
                            HStack(spacing: 20) {
                                
                                Text("엄민욱")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40, weight: .heavy))
                                    .padding()

                                VStack(spacing: 0) {
                                    
                                    Text("ISTP")
                                        .foregroundColor(.systemTeal)
                                        .font(.system(size: 30, weight: .heavy))
                                        .padding(.vertical, 1)
                                    
                                    Divider().frame(width:100, height: 1).background(Color.white)
                                    
                                    Text("전체 인구중")
                                        .foregroundColor(.passFinderItem1)
                                        .font(.system(size: 15))
                                        .padding(.vertical, 2)
                                    
                                } // vstack
    //                            .padding()
                                
                                Button(action: {
                                    
    //                                withAnimation {
    //                                    passFinderModel.name = ""
    //                                    show.toggle()
    //                                }
                                }) {
                                    Image(systemName: "xmark.circle.fill")
                                        .font(.system(size: 18, weight: .bold))
                                        .foregroundColor(.gray).opacity(0.5)
                                    
                                }
                                .frame(height: 60, alignment: .top)
                                
                            } // hstack
                            
                        } // vstack
                        .frame(width: 340, height: 80)
                        .background(Color.passFinderDark).opacity(0.8)
                        .cornerRadius(10)
                        
                    } // NavigationLink

                } // scrollview
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.passFinderBG)
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarColor(backgroundColor: UIColor(Color.passFinderBG), tintColor: .white)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            openNewPage.toggle()
                        }, label: {
                            Image(systemName: "plus.circle.fill").font(.title2).foregroundColor(.systemTeal)
                        })
                    }
                } // toolbar
                
            } // NavigationView
            .fullScreenCover(isPresented: $openNewPage) {
                AddPersonView()
//                Text("aaa")
            }
            
            VStack {
                HStack {
                    Image(systemName: "person.2.fill").foregroundColor(.white).font(.system(size: 25, weight: .heavy))
                    Text("다른 사람 유형").foregroundColor(.white).font(.system(size: 25, weight: .heavy))
                }
                
                Spacer()
                
            }
            .frame(width: 300)
            
            
        }
        
        
        
        
        
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView().environmentObject(PassFinderViewModel())
    }
}
