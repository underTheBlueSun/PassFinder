//
//  PersonView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/06.
//

import SwiftUI
import RealmSwift

struct PersonView: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel
    @State var openNewPage: Bool = false
    
    init() {
       UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = UIColor(Color.passFinderBG)
       UITableView.appearance().backgroundColor = UIColor(Color.passFinderBG)
    }
    
    func removeRows(at offsets: IndexSet) {
//        passFinderModel.persons.remove(atOffsets: offsets)
        offsets.forEach ({ index in
            guard let dbRef = try? Realm() else { return }
            try? dbRef.write {
                dbRef.delete(passFinderModel.persons[index])
                passFinderModel.fetchOther()
                }
            })
    }

    var body: some View {
        
        ZStack {
            
            NavigationView {
                
                List {
                    
                    ForEach(passFinderModel.persons, id: \.self) { person in
                        
                        NavigationLink(destination: PersonDetailTypeView(id: person.id)) {
                            
                            HStack(spacing: 20) {
                                
                                Text(person.name)
                                    .frame(width: 130, alignment: .leading)
                                    .foregroundColor(.white)
                                    .font(.system(size: 30, weight: .heavy))
                                
                                Text(person.type)
                                    .frame(alignment: .trailing)
                                    .foregroundColor(.systemTeal)
                                    .font(.system(size: 35, weight: .heavy))

                            } // hstack
                            
                        } // NavigationLink
                    } // foreach
                    .onDelete(perform: removeRows)
                    .listRowBackground(Color.passFinderItemBG)

                } // scrollview
//                .padding()
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .background(Color.passFinderBG)
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarColor(backgroundColor: UIColor(Color.passFinderBG), tintColor: .white)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            openNewPage.toggle()
                        }, label: {
                            Image(systemName: "plus.circle.fill").font(.title2).foregroundColor(.orange)
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

        } // zstack
        .onAppear() {
            passFinderModel.fetchOther()
        }
        
    } // body
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView().environmentObject(PassFinderViewModel())
    }
}
