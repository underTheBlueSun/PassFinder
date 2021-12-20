//
//  DetailTypeView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/05.
//

import SwiftUI

struct DetailTypeView: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel
    
    var type: String
    var filteredArray: [Type] = []
    
    init(type: String) {
        self.type = type
        filteredArray = types.filter { $0.type == self.type }  // 나의 유형 객체
//        passFinderModel.myType = self.type
//        passFinderModel.fetchType()
    }
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing:0) {

                HStack(spacing: 20) {

                    Image(passFinderModel.image1)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 90, height: 90)

                    VStack(spacing: 0) {

                        Text(passFinderModel.image1)
                            .foregroundColor(.systemTeal)
                            .font(.system(size: 60, weight: .heavy))
                            .padding(.vertical, 1)

                        Divider().frame(width:110, height: 1).background(Color.white)

        //                Text(filteredArray[filteredArray.startIndex].title)
                        Text("전체 인구중 " + passFinderModel.percent)
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .padding(.vertical, 2)

                    } // vstack


                } // hstack
//                .padding()

                VStack {

                    ForEach(passFinderModel.description.components(separatedBy: "/"), id: \.self) { item in
                        Text(item).foregroundColor(item.contains("✔︎") ? .orange : .white).frame(width: 330, alignment: .leading)
                    }


                }
                .padding()

                VStack {
//                        Text("관련 인물들").foregroundColor(.systemTeal).font(.system(size: 15))
                    HStack(alignment: .top) {
                        VStack {
                            Image(passFinderModel.image2)
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 60, height: 70)
                            Text(passFinderModel.image2).foregroundColor(.white).font(.system(size: 12)).frame(width: 70)
                        }

                        VStack {
                            Image(passFinderModel.image3)
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 60, height: 70)
                            Text(passFinderModel.image3).foregroundColor(.white).font(.system(size: 12)).frame(width: 70)
                        }

                        VStack {
                            Image(passFinderModel.image4)
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 60, height: 70)
                            Text(passFinderModel.image4).foregroundColor(.white).font(.system(size: 12)).frame(width: 70)
                        }

                        VStack {
                            Image(passFinderModel.image5)
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 60, height: 70)
                            Text(passFinderModel.image5).foregroundColor(.white).font(.system(size: 12)).frame(width: 70)
                        }
                        
                    } // hstack
                    
                    HStack {
                        
                        VStack {
                            Image(passFinderModel.image6)
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 60, height: 70)
                            Text(passFinderModel.image6).foregroundColor(.white).font(.system(size: 12)).frame(width: 70)
                        }

                        VStack {
                            Image(passFinderModel.image7)
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 60, height: 70)
                            Text(passFinderModel.image7).foregroundColor(.white).font(.system(size: 12)).frame(width: 70)
                        }

                        VStack {
                            Image(passFinderModel.image8)
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 60, height: 70)
                            Text(passFinderModel.image8).foregroundColor(.white).font(.system(size: 12)).frame(width: 70)
                        }

                        VStack {
                            Image(passFinderModel.image9)
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 60, height: 70)
                            Text(passFinderModel.image9).foregroundColor(.white).font(.system(size: 12)).frame(width: 70)
                        }
                    }
                } // vstack
                .frame(width: 340, height: 230)
                .background(Color.passFinderDark).opacity(0.8)
                .cornerRadius(10)
                
                

//                Spacer()

            } // vstack
            
        } // scrollview
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.passFinderBG)
        .onAppear() {
            passFinderModel.myType = self.type
            passFinderModel.fetchType()
        }

    } // body
}

struct DetailTypeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTypeView(type: "ISFP").environmentObject(PassFinderViewModel())
    }
}
