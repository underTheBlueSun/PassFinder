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
    
    var type: String
    var filteredArray: [Type] = []
    
//    var types1: [Type] = []
    
    
    init(type: String) {
        str = "✔︎ 오 캡틴, 마이 캡틴/죽은 조직을 되살리는 비결은 리더십, 진정성, 팀원을 사로잡는 말빨과 긍정에너지./✔︎ 오지랖은 넓지만 마음은 따뜻/삶의 목적이 자신이 아니라 주위 사람들에게 있기에 언제나 사람들을 기쁘게 해주고 긍정적인 방향으로 변화 시키려고 노력함. 계획을 잘세우고 계획대로 사람들을 잘 이끌어감.사람들을 너무 잘 챙겨주려는 생각이 크다 보니 상대가 원하지 않는데도 도움을 주려다 마찰이 생기기도 함. 간식같은 거 잘 챙겨주는 사람. 내가 다 챙겨야 직성이 풀림. 타인의 성장을 돕는데 보람을 느낌./✔︎ 사람을 잘 믿는다/남들의 요구사항을 거절하지 못해서 돈을 떼이는등 이용을 당하고 상처 입기 쉬움. /✔︎ 싫은 소리 잘 못함/상대의 잘못을 지적하는데 서툴러 문제행동을 하는 아이의 훈육을 어려워 함./✔︎ 자녀가 반항을 하거나 원치 않는 길로 가면 상처 받음/나를 희생해서 자식만을 위해 살았는데 자녀가 기대에 부합하지 못하면 실의에 빠짐. 자녀의 독립성과 자율성을 인정해주는 연습이 필요."

       arr = str.components(separatedBy: "/")
        
        self.type = type
        filteredArray = types.filter { $0.type == self.type }  // 나의 유형 객
        
    }
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing:0) {
                               
                HStack(spacing: 20) {
                    
                    Image(filteredArray[0].image1)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 90, height: 90)
                    
                    VStack(spacing: 0) {
                        
                        Text(filteredArray[0].image1)
                            .foregroundColor(.systemTeal)
                            .font(.system(size: 60, weight: .heavy))
                            .padding(.vertical, 1)
                        
                        Divider().frame(width:110, height: 1).background(Color.white)
                        
        //                Text(passFinderModel.filteredArray[passFinderModel.filteredArray.startIndex].title)
                        Text("전체 인구중 " + filteredArray[0].percent)
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .padding(.vertical, 2)
                        
                    } // vstack
                    
                    
                } // hstack
//                .padding()
                
                VStack {
                    
                    ForEach(filteredArray[0].description.components(separatedBy: "/"), id: \.self) { item in
                        Text(item).foregroundColor(item.contains("✔︎") ? .orange : .white).frame(width: 330, alignment: .leading)
                    }

      
                }
                .padding()
                
                VStack {
//                        Text("관련 인물들").foregroundColor(.systemTeal).font(.system(size: 15))
                    HStack(alignment: .top) {
                        VStack {
                            Image("머니볼-빌리빈")
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 60, height: 70)
                            Text("머니볼-빌리빈").foregroundColor(.white).font(.system(size: 12)).frame(width: 70)
                        }
                        
                        VStack {
                            Image("마틴루터킹")
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 60, height: 70)
                            Text("마틴루터킹").foregroundColor(.white).font(.system(size: 12)).frame(width: 70)
                        }
                        
                        VStack {
                            Image("캐리비안의해적-잭스패로우")
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 60, height: 70)
                            Text("캐리비안의해적-잭스패로우").foregroundColor(.white).font(.system(size: 12)).frame(width: 70)
                        }
                        
                        VStack {
                            Image("죽은시인의사회-키팅")
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 60, height: 70)
                            Text("죽은시인의사회-키팅").foregroundColor(.white).font(.system(size: 12)).frame(width: 70)
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

    } // body
}

struct DetailTypeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTypeView(type: "ISTJ").environmentObject(PassFinderViewModel())
    }
}
