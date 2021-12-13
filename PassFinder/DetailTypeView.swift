//
//  DetailTypeView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/05.
//

import SwiftUI

struct DetailTypeView: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel
    
    var str: String
    @State var arr: [String]
    
//    var types1: [Type] = []
    
    
    init() {
        str = "✔︎ 오 캡틴, 마이 캡틴/죽은 조직을 되살리는 비결은 리더십, 진정성, 팀원을 사로잡는 말빨과 긍정에너지./✔︎ 오지랖은 넓지만 마음은 따뜻/삶의 목적이 자신이 아니라 주위 사람들에게 있기에 언제나 사람들을 기쁘게 해주고 긍정적인 방향으로 변화 시키려고 노력함. 계획을 잘세우고 계획대로 사람들을 잘 이끌어감.사람들을 너무 잘 챙겨주려는 생각이 크다 보니 상대가 원하지 않는데도 도움을 주려다 마찰이 생기기도 함. 간식같은 거 잘 챙겨주는 사람. 내가 다 챙겨야 직성이 풀림. 타인의 성장을 돕는데 보람을 느낌./✔︎ 사람을 잘 믿는다/남들의 요구사항을 거절하지 못해서 돈을 떼이는등 이용을 당하고 상처 입기 쉬움. /✔︎ 싫은 소리 잘 못함/상대의 잘못을 지적하는데 서툴러 문제행동을 하는 아이의 훈육을 어려워 함./✔︎ 자녀가 반항을 하거나 원치 않는 길로 가면 상처 받음/나를 희생해서 자식만을 위해 살았는데 자녀가 기대에 부합하지 못하면 실의에 빠짐. 자녀의 독립성과 자율성을 인정해주는 연습이 필요."

       arr = str.components(separatedBy: "/")
        
//        types1 = [
           
//            Type(type: "ENFJ", title: "언변능숙형", description: "✔︎ 오 캡틴, 마이 캡틴/죽은 조직을 되살리는 비결은 리더십, 진정성, 팀원을 사로잡는 말빨과 긍정에너지./✔︎ 오지랖은 넓지만 마음은 따뜻삶의 목적이 자신이 아니라 주위 사람들에게 있기에 언제나 사람들을 기쁘게 해주고 긍정적인 방향으로 변화 시키려고 노력함. 계획을 잘세우고 계획대로 사람들을 잘 이끌어감.사람들을 너무 잘 챙겨주려는 생각이 크다 보니 상대가 원하지 않는데도 도움을 주려다 마찰이 생기기도 함. 간식같은 거 잘 챙겨주는 사람. 내가 다 챙겨야 직성이 풀림. 타인의 성장을 돕는데 보람을 느낌./✔︎ 사람을 잘 믿는다남들의 요구사항을 거절하지 못해서 돈을 떼이는등 이용을 당하고 상처 입기 쉬움. /✔︎ 싫은 소리 잘 못함상대의 잘못을 지적하는데 서툴러 문제행동을 하는 아이의 훈육을 어려워 함./✔︎ 자녀가 반항을 하거나 원치 않는 길로 가면 상처 받음나를 희생해서 자식만을 위해 살았는데 자녀가 기대에 부합하지 못하면 실의에 빠짐. 자녀의 독립성과 자율성을 인정해주는 연습이 필요.", image1: "ENFJ", image2: "넬슨만델라", image3: "마틴루터킹", image4: "오프라윈프리", image5: "요한바오로2세",  job: "가수")
            
//        ]

        
    }
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
//                Button(action: {
//                    print(arr)
//
//                }, label: {
//
//                    Text("aaaaaa")
//                })
                
                VStack(spacing:0) {
                    
                    
                    HStack(spacing: 20) {
                        
                        Image("ESFJ")
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 90, height: 90)
                        
                        VStack(spacing: 0) {
                            
                            Text("ISTP")
                                .foregroundColor(.systemTeal)
                                .font(.system(size: 60, weight: .heavy))
                                .padding(.vertical, 1)
                            
                            Divider().frame(width:110, height: 1).background(Color.white)
                            
            //                Text(passFinderModel.filteredArray[passFinderModel.filteredArray.startIndex].title)
                            Text("전체 인구중 13%")
                                .foregroundColor(.white)
                                .font(.system(size: 15))
                                .padding(.vertical, 2)
                            
                        } // vstack
                        
                        
                    } // hstack
    //                .padding()
                    
//                    ScrollView {
                    VStack {
                        
                        ForEach(arr, id: \.self) { item in
                            Text(item).foregroundColor(item.contains("✔︎") ? .orange : .white).frame(width: 330, alignment: .leading)
                        }
                        
//                        Text("✔︎ 한번 시작한 일은 끝까지 해 내는 사람").foregroundColor(.orange).frame(width: 330, alignment: .leading)
//                        Text("신중하고 조용하며 집중력이 강하고 매사에 철저하며 사리분별력이 뛰어나다. 실제 사실에 대하여 정확하고 체계적으로 기억하며 일 처리에 있어서도 신중하며 책임감이 강하다").foregroundColor(.white).frame(width: 330, alignment: .leading)
//
//                        Text("✔︎ 한번 시작한 일은 끝까지 해 내는 사람").foregroundColor(.orange).frame(width: 330, alignment: .leading)
//                        Text("신중하고 조용하며 집중력이 강하고 매사에 철저하며 사리분별력이 뛰어나다. 실제 사실에 대하여 정확하고 체계적으로 기억하며 일 처리에 있어서도 신중하며 책임감이 강하다").foregroundColor(.white).frame(width: 330, alignment: .leading)
//
//                        Text("✔︎ 한번 시작한 일은 끝까지 해 내는 사람").foregroundColor(.orange).frame(width: 330, alignment: .leading)
//                        Text("신중하고 조용하며 집중력이 강하고 매사에 철저하며 사리분별력이 뛰어나다. 실제 사실에 대하여 정확하고 체계적으로 기억하며 일 처리에 있어서도 신중하며 책임감이 강하다").foregroundColor(.white).frame(width: 330, alignment: .leading)
//
//                        Text("✔︎ 한번 시작한 일은 끝까지 해 내는 사람").foregroundColor(.orange).frame(width: 330, alignment: .leading)
//                        Text("신중하고 조용하며 집중력이 강하고 매사에 철저하며 사리분별력이 뛰어나다. 실제 사실에 대하여 정확하고 체계적으로 기억하며 일 처리에 있어서도 신중하며 책임감이 강하다").foregroundColor(.white).frame(width: 330, alignment: .leading)
          
                    }
//                    .frame(width: 310, height: 200)
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
//                        Text("관련 인물들").foregroundColor(.systemTeal).font(.system(size: 15))
                        HStack {
                            VStack {
                                Image("빌리빈(머니볼)")
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width: 60, height: 70)
                                Text("빌리빈(머니볼)").foregroundColor(.white).font(.system(size: 12))
                            }
                            
                            VStack {
                                Image("마틴루터킹")
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width: 60, height: 70)
                                Text("빌게이츠").foregroundColor(.white).font(.system(size: 12))
                            }
                            
                            VStack {
                                Image("잭(캐리비안의해적)")
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width: 60, height: 70)
                                Text("잭(캐리비안의해적)").foregroundColor(.white).font(.system(size: 12))
                            }
                            
                            VStack {
                                Image("키팅(죽은시인의사회)")
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width: 60, height: 70)
                                Text("키팅(죽은시인의사회)").foregroundColor(.white).font(.system(size: 12))
                            }
                            
                        }
                    } // vstack
                    .frame(width: 340, height: 150)
                    .background(Color.passFinderDark).opacity(0.8)
                    .cornerRadius(10)
                    
//                    VStack(spacing: 5) {
//                        Text("추천 직업").foregroundColor(.orange).font(.system(size: 15))
//                        Text("파일럿, 웹개발자, 가수, 영화감독, 회계사, 연구원, 은행원, aaa").foregroundColor(.white).font(.system(size: 15))
//                    } // vstack
//                    .frame(width: 340, height: 100)
//                    .background(Color.passFinderDark).opacity(0.8)
//                    .cornerRadius(10)
//                    .padding()
                    
                
                    
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
