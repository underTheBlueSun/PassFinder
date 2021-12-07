//
//  DetailTypeView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/05.
//

import SwiftUI

struct DetailTypeView: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(spacing:0) {
                    
                    
                    HStack(spacing: 20) {
                        
                        Image("ESFJ")
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 90, height: 90)
                        
                        VStack(spacing: 0) {
                            
                            Text("ISTP")
                                .foregroundColor(.systemTeal)
                                .font(.system(size: 50, weight: .heavy))
                                .padding(.vertical, 1)
                            
                            Divider().frame(width:110, height: 1).background(Color.white)
                            
            //                Text(passFinderModel.filteredArray[passFinderModel.filteredArray.startIndex].title)
                            Text("잔다르크형")
                                .foregroundColor(.passFinderItem1)
                                .font(.system(size: 20, weight: .heavy))
                                .padding(.vertical, 2)
                            
                        } // vstack
                        
                        
                    } // hstack
    //                .padding()
                    
                    ScrollView {
                        
                        Text("한번 시작한 일은 끝까지 해 내는 사람. 신중하고 조용하며 집중력이 강하고 매사에 철저하며 사리분별력이 뛰어나다.실제 사실에 대하여 정확하고 체계적으로 기억하며 일 처리에 있어서도 신중하며 책임감이 강하다. 집중력이 강한 현실감각을 지녔으며 조직적이고 침착하다. 보수적인 경향이 있으며, 문제를 해결하는데 과거의 경험을 잘 적용하며, 반복되는 일상적인 일에 대한 인내력이 강하다. 자신과 타인의 감정과 기분을 배려하며, 전체적이고 타협적 방안을 고려하는 노력이 때로 필요하다. 정확성과 조직력을 발휘하는 분야의 일을 선호한다. 즉 회계, 법률, 생산, 건축, 의료, 사무직, 관리직 등에서 능력을 발휘하며, 위기상황에서도 안정되어 있다.")
                            .foregroundColor(.white)
                    }
                    .frame(width: 310, height: 200)
                    .padding()
                    
                    VStack(spacing: 0) {
                        
                        VStack(spacing: 0) {
                            Text("에너지방향").foregroundColor(.white).font(.system(size: 15))
                            
                            ZStack(alignment: .leading) {
                                
                                Capsule()
                                    .foregroundColor(.white)
                                    .frame(width: 300, height: 10)
                                
                                Capsule()
                                    .foregroundColor(.systemTeal)
                                // 50% 일 경우
                                    .frame(width: (300 * 5) / 10, height: 10)

                            } // zstack
    //                        .padding(.vertical, 2)
                            
                            HStack {
                                Text("외향").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                                Spacer()
                                Text("내향").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                            }
                        }
                        
                        
                        
    //                    Spacer()
                        
                        VStack(spacing: 0) {
                            Text("인식기능").foregroundColor(.white).font(.system(size: 15))
                            
                            ZStack(alignment: .leading) {
                                
                                Capsule()
                                    .foregroundColor(.white)
                                    .frame(width: 300, height: 10)
                                
                                Capsule()
                                    .foregroundColor(Color.passFinderItem1)
                                // 50% 일 경우
                                    .frame(width: (300 * 5) / 10, height: 10)

                            } // zstack
    //                        .padding(.vertical, 2)
                            
                            HStack {
                                Text("감각").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                                Spacer()
                                Text("직관").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                            }
                        }
                        
                        
                        
    //                Spacer()
                        
                        VStack(spacing: 0) {
                            Text("판단기능").foregroundColor(.white).font(.system(size: 15))
                            
                            ZStack(alignment: .leading) {
                                
                                Capsule()
                                    .foregroundColor(.white)
                                    .frame(width: 300, height: 10)
                                
                                Capsule()
                                    .foregroundColor(.yellow)
                                // 50% 일 경우
                                    .frame(width: (300 * 5) / 10, height: 10)

                            } // zstack
    //                        .padding(.vertical, 2)
                            
                            HStack {
                                Text("사고").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                                Spacer()
                                Text("감정").foregroundColor(.white).padding(.horizontal, 20).font(.system(size: 15))
                            }
                        }
                        
    //                    Spacer()
                        
                        VStack(spacing: 0) {
                            Text("생활양식").foregroundColor(.white).font(.system(size: 15))
                            
                            ZStack(alignment: .leading) {
                                
                                Capsule()
                                    .foregroundColor(.white)
                                    .frame(width: 300, height: 10)
                                
                                Capsule()
                                    .foregroundColor(.purple)
                                // 50% 일 경우
                                    .frame(width: (300 * 5) / 10, height: 10)

                            } // zstack
    //                        .padding(.vertical, 2)
                            
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
                        Text("ISTP 유명인들").foregroundColor(.systemTeal).font(.system(size: 15))
                        HStack {
                            VStack {
                                Image("넬슨만델라")
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width: 60, height: 70)
                                Text("넬슨만델라").foregroundColor(.white).font(.system(size: 12))
                            }
                            
                            VStack {
                                Image("빌게이츠")
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width: 60, height: 70)
                                Text("클린트이스트우드").foregroundColor(.white).font(.system(size: 12))
                            }
                            
                            VStack {
                                Image("넬슨만델라")
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width: 60, height: 70)
                                Text("넬슨만델라").foregroundColor(.white).font(.system(size: 12))
                            }
                            
                            VStack {
                                Image("빌게이츠")
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width: 60, height: 70)
                                Text("클린트이스트우드").foregroundColor(.white).font(.system(size: 12))
                            }
                            
                        }
                    } // vstack
                    .frame(width: 340, height: 150)
                    .background(Color.passFinderDark).opacity(0.8)
                    .cornerRadius(10)
                    
                    VStack(spacing: 5) {
                        Text("추천 직업").foregroundColor(.orange).font(.system(size: 15))
                        Text("파일럿, 웹개발자, 가수, 영화감독, 회계사, 연구원, 은행원, aaa").foregroundColor(.white).font(.system(size: 15))
                    } // vstack
                    .frame(width: 340, height: 100)
                    .background(Color.passFinderDark).opacity(0.8)
                    .cornerRadius(10)
                    .padding()
                    
                
                    
                    Spacer()

                } // vstack
                
            } // scrollview
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.passFinderBG)
            .navigationBarTitle("나의 유형", displayMode: .inline)
            .navigationBarColor(backgroundColor: UIColor(Color.passFinderBG), tintColor: .white)
            
        }
        
        

    } // body
}

struct DetailTypeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTypeView().environmentObject(PassFinderViewModel())
    }
}
