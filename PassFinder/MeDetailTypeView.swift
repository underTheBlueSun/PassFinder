//
//  MeDetailTypeView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/05.
//

import SwiftUI

struct MeDetailTypeView: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel
    
    var body: some View {
        
        ScrollView {
            
            if passFinderModel.isSaveMe == false {
                VStack {
                    Spacer()
                    Text("테스트를 먼저 완료해야 \n나의 유형을 알 수 있습니다.")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .heavy))
                    Spacer()
                }
                .frame(width: 300, height: 500)
            } else {
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

                            Text("전체 인구중 " + passFinderModel.percent)
                                .foregroundColor(.white)
                                .font(.system(size: 15))
                                .padding(.vertical, 2)

                        } // vstack

                    } // hstack
                    
                    VStack {

                        ForEach(passFinderModel.description.components(separatedBy: "/"), id: \.self) { item in
                            Text(item).foregroundColor(item.contains("✔︎") ? .orange : .white).frame(width: 330, alignment: .leading)
                        }

                    }
                    .padding()
                    
                    VStack(spacing: 0) {
                        
                        VStack(spacing: 0) {
                            Text("에너지방향").foregroundColor(.white).font(.system(size: 15))
                            
                            if passFinderModel.eCnt >= passFinderModel.iCnt {
                                ZStack(alignment: .leading) {
                                    Capsule()
                                        .foregroundColor(.white)
                                        .frame(width: 300, height: 10)

                                    Capsule()
                                        .foregroundColor(.systemTeal)
                                        .frame(width: CGFloat((300 * passFinderModel.eCnt)) / 10, height: 10)
                                } // zstack
                            }else {
                                ZStack(alignment: .trailing) {
                                    Capsule()
                                        .foregroundColor(.white)
                                        .frame(width: 300, height: 10)

                                    Capsule()
                                        .foregroundColor(.systemTeal)
                                        .frame(width: CGFloat((300 * passFinderModel.iCnt)) / 10, height: 10)
                                } // zstack
                            } // else
                            
                            HStack {
                                Text("외향").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                                Spacer()
                                Text("내향").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                            }
                        }
                        
                        
                        
    //                    Spacer()
                        
                        VStack(spacing: 0) {
                            Text("정보지각").foregroundColor(.white).font(.system(size: 15))
                            
                            if passFinderModel.sCnt >= passFinderModel.nCnt {
                                ZStack(alignment: .leading) {
                                    Capsule()
                                        .foregroundColor(.white)
                                        .frame(width: 300, height: 10)

                                    Capsule()
                                        .foregroundColor(.orange)
                                        .frame(width: CGFloat((300 * passFinderModel.sCnt)) / 10, height: 10)
                                } // zstack
                            }else {
                                ZStack(alignment: .trailing) {
                                    Capsule()
                                        .foregroundColor(.white)
                                        .frame(width: 300, height: 10)

                                    Capsule()
                                        .foregroundColor(.orange)
                                        .frame(width: CGFloat((300 * passFinderModel.nCnt)) / 10, height: 10)
                                } // zstack
                            } // else
                            
                            HStack {
                                Text("감각").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                                Spacer()
                                Text("직관").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                            }
                        }
                        
                        VStack(spacing: 0) {
                            Text("의사결정").foregroundColor(.white).font(.system(size: 15))
                            
                            if passFinderModel.tCnt >= passFinderModel.fCnt {
                                ZStack(alignment: .leading) {
                                    Capsule()
                                        .foregroundColor(.white)
                                        .frame(width: 300, height: 10)

                                    Capsule()
                                        .foregroundColor(.purple)
                                        .frame(width: CGFloat((300 * passFinderModel.tCnt)) / 10, height: 10)
                                } // zstack
                            }else {
                                ZStack(alignment: .trailing) {
                                    Capsule()
                                        .foregroundColor(.white)
                                        .frame(width: 300, height: 10)

                                    Capsule()
                                        .foregroundColor(.purple)
                                        .frame(width: CGFloat((300 * passFinderModel.fCnt)) / 10, height: 10)
                                } // zstack
                            } // else
                            
                            HStack {
                                Text("사고").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                                Spacer()
                                Text("감정").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                            }
                        }
                        
    //                    Spacer()
                        
                        VStack(spacing: 0) {
                            Text("생활양식").foregroundColor(.white).font(.system(size: 15))
                            
                            if passFinderModel.jCnt >= passFinderModel.pCnt {
                                ZStack(alignment: .leading) {
                                    Capsule()
                                        .foregroundColor(.white)
                                        .frame(width: 300, height: 10)

                                    Capsule()
                                        .foregroundColor(.yellow)
                                        .frame(width: CGFloat((300 * passFinderModel.jCnt)) / 10, height: 10)
                                } // zstack
                            }else {
                                ZStack(alignment: .trailing) {
                                    Capsule()
                                        .foregroundColor(.white)
                                        .frame(width: 300, height: 10)

                                    Capsule()
                                        .foregroundColor(.yellow)
                                        .frame(width: CGFloat((300 * passFinderModel.pCnt)) / 10, height: 10)
                                } // zstack
                            } // else
                            
                            HStack {
                                Text("판단").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                                Spacer()
                                Text("인식").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                            }
                            
                        }
                        
    //                    Spacer()
                        
                    } // vstack
                    .frame(width: 340, height: 200)
                    .background(Color.passFinderDark).opacity(0.8)
                    .cornerRadius(10)
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
                            
                        }
                    } // vstack
                    .frame(width: 340, height: 150)
                    .background(Color.passFinderDark).opacity(0.8)
                    .cornerRadius(10)
                  
                    Spacer()

                } // vstack
                
            } //else
            
            
            
        } // scrollview
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.passFinderBG)
        .onAppear() {
            passFinderModel.fetchMe()
        }

    } // body
}

//struct MeDetailTypeView_Previews: PreviewProvider {
//    static var previews: some View {
//        MeDetailTypeView().environmentObject(PassFinderViewModel())
//    }
//}
