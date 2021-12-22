//
//  Type.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/04.
//

import SwiftUI

struct Type: Identifiable {
    var id = UUID().uuidString
    var type: String
    var title: String
    var description: String
    var image1: String
    var image2: String
    var image3: String
    var image4: String
    var image5: String
    var image6: String
    var image7: String
    var image8: String
    var image9: String
    var percent: String
}

var types: [Type] = [
    Type(type: "ISTJ", title: "든든하고 믿음직한 완벽주의자", description: "✔︎ 시작하면 끝을 보는 완벽주의자/성실하고 계획적이고 책임감이 강해 일처리가 꼼꼼함. 항상 좋은 결과를 내려고 노력함./✔︎ 전통, 규율의 수호자/전통, 규율의 안정된 질서체계속에서 편안함을 느낌. 조선의 유교문화에서 지향하는 사람의 모습과 상당히 일치. 정직, 성실, 규칙등을 중요한 가치로 여기고 추상적이지 않은 사실과 관련된 지식을 선호하고 보수적인 성향./✔︎ 유연한 갈대보다는 굳건한 소나무 스타일/성실하고 자립심, 책임감이 강해 같이 일을 하면 믿음직함. 하지만 융통성, 사교성이 다소 부족하여 꼰대나 차가운 사람으로 인식되기도 함. 혼자 일하는거 좋아함. 창의성이 다소 부족하여계획 안된 돌발상황을 싫어함. 약속시간 칼 같이 지켜야 함./✔︎ 게으름은 나의 적/게으른 사람, 청렴하지 못한 사람, 남에게 의존하려는 사람을 무척 싫어함./✔︎ 현실감각은 뛰어나나 공감력은 부족/타인에게 별로 관심이 없고 말이 직설적이고 딱딱함. 인간관계가 넓지 못함. 겉보기에 차가워 보임. /✔︎ ISTJ 부모의 특징 /근면성실하고 책임감이 강해서 자녀도 가급적 그렇게 되길 바란다. 자영업보다는 직장생활을 하는 경우가 많다. 자녀의 재능, 놀이, 친구관계보다는 교육, 취업, 결혼, 형식적 예절을 중시한다. 자녀가 성격이 특이하거나 성실하지 못하면 통제하려 든다. 때로는 자녀의 도덕적 발달보다는 입시나 취업등 현실적 문제를 중시한다. /✔︎ ISTJ 아이의 특징 /ISTJ 어른과 비슷함. 노력파, 책임감, 자기관리를 잘함. 일반적인 학교선생님이 좋아하는 유형. 열심히 공부해서 최소 중상위권 수준의 성적 발휘. /✔︎ 그외/IQ(지능지수)는 16유형중 10위지만 대학수학능력시험 성적 평균은 1위(인문계 1위, 자연계 2위). 의대생 비율이 ESTJ와 함께 압도적으로 높음.", image1: "ISTJ", image2: "메르켈", image3: "워렌버핏", image4: "미생-오과장", image5: "철도원-오토마츠", image6: "써니", image7: "차태현", image8: "소희", image9: "남윤수", percent: "13%"),
    Type(type: "ISFJ", title: "책임감 있고 묵묵히 자기일을 수행하는 온화한 성품의 소유자", description: "✔︎ 한국의 전통적 어머니상/묵묵히 맡은 일을 헌신적이고 책임감 있게 잘 완수함. 타인의 감정을 잘 캐치하고 공감을 잘함.남 부탁 잘 거절하지 못함.섬세하고 겸손하고 조용한 편이라 존재감이 떨어짐./✔︎ 아낌없이 주는 나무/내향적이지만 사람들에게 친절함. 보수적이지만 다른 생각들도 모두 수용해주고 상대를 억압하지 않음.과중한 책임을 묵묵히 수행하며 자신의 공을 과시하지 않음./✔︎ 볼때마다 일하고 있음/쉬는 것보다 항상 주위 사람들을 위해 뭔가 해주기 위해 묵묵히 노력함./✔︎ 혼자만의 시간을 즐김/소수의 사람들과 교류하는게 편하고 취미생활도 혼자 하는걸 선호함./✔︎ 감정을 잘 드러내지 않는다./눈치가 빨라서 상대의 성향과 분위기에 맞게 페르소나를 잘 사용한다. 먼저 대화나 연락을 잘안한다. /✔︎ ISFJ 부모의 특징 /특유의 억척스러움으로 가정을 지탱함. 자녀를 부모의 소유물로 여기는 경향이 있음. 대체로 자녀에게 엄격하고 강압적인 편. 예의를 중요시함. 완벽주의 성향이 강해 학업성적을 중요시함. 말을 잘듣고 틀에 잘 마추면 자녀에게 다정함. 전형적인 헌신적이고 가정적인 부모 스타일. /✔︎ ISFJ 아이의 특징 /대체로 말을 잘듣고 조용한 편. 부모에게 착하고 친구에게 조용하고 교사에겐 모범생. 성실하고 계획적임. 완벽주의자성향이라 공부를 열심히 함. 집에서 지내길 좋아함. 호기심이 적음. 자유를 추구하지 않고 부모의 틀에 잘 맞춤.", image1: "ISFJ", image2: "더임파서블-마리아", image3: "셜록홈즈-왓슨", image4: "아이언맨-페퍼포츠", image5: "전원일기-이은심",  image6: "장도연", image7: "최강창민", image8: "나르샤", image9: "정연", percent: "13%"),
    Type(type: "INFJ", title: "남을 잘 도와주고 불의에 참지않는 진정 용기있는 사람", description: "✔︎ 평소엔 순둥이, 일 할땐 파이터/남을 도와주는걸 좋아하고 인생의 목적이 사랑, 동정, 봉사이고 자신의 이상을 위해선 어떠한 불의도 물리치는 용기 있는 사람/✔︎ 세상의 부조리를 보는 매의 눈/불합리하고 부조리한 세상의 이면을 타고난 통찰력으로 꿰뚫어 보고 약자를 위해 자신을 희생함./✔︎ 너무 진지함/사생활 오픈을 잘 안하고 진지한 만남을 선호함. 친구든 이성이든 진중하고 진실된 만남을 원함.그래서 친구 사귀기가 힘들고 이성교제도 많이 안함./✔︎ 타인을 위해 자신을 희생/관계 개선을 위해서 자신의 감정을 억누르고 타인을 받아주는 스타일. 감정적으로 민감해서 자신의 가치관이 비난,지적 받으면 상처를 잘 받음./✔︎ 진로, 꿈찾기의 좋은 길잡이가 됨/삶을 목적 없이 헤매거나 아이가 꿈이 없을 땐 좋은 인생의 길잡이가 됨. 왜냐 삶을 항상 진지하게 바라보고 삶에서 유의미한 부분을 언제나 탐구하기 때문. /✔︎ 나이에 비해 조숙하고 고민이 많다. /어른스럽다는 말을 자주 들음. 자아성찰을 자주 하고 본인에게 엄격함. 자기안에 고민과 갈등이 많아 청소년기에 방황을 하는 경우도 있음. /✔︎ INFJ 부모의 특징 /대체로 집안 분위기가 자유로움. 아이가 자유롭게 의견과 생각을 펼치게 환경을 조성함. 자녀의 태도, 행동방식을 정확히 꿰뚫어봄. 예의를 중요시 함. /✔︎ INFJ 아이의 특징 /자신의 의견을 말보다는 글로 표현하는게 전달력이 좋다. 호기심이 많고 여러가지를 많이 알고 있다. '왜?'라는 질문을 많이 한다. 처음에 사귀기가 힘들지 사귀면 절친이 됨. 대체로 밖에 잘 안나감. 몽상에 빠지는 것을 좋아함. 친구들 도와주는 조력자 역할을 묵묵히 함. 자신의 능력을 드러잴 수 있는 것에는 자신을 드러내고자 함.", image1: "INFJ", image2: "마틴루터킹", image3: "마하트마간디", image4: "테레사수녀", image5: "해리포터-덤블도어",  image6: "조인성", image7: "정우", image8: "태연", image9: "원빈", percent: "1%"),
    Type(type: "INTJ", title: "차분하고 이성적이며 지적호기심이 왕성한 사람", description: "✔︎ 지능적으로 가장 우수한 유형/마음만 먹으면 서울대 가는 것도 어렵지 않음.지적 호기심이 풍부하여 돈은 많이 못벌어도 마음껏 공부하고 연구하는 분야 선호함. 갈등상황에서 차분하고 이성적으로 문제를 잘 처리함./✔︎ 내 생각에 아닌 것은 절대 아님/비논리적, 비이성적이면 사회적 관습, 규율에 엄청 순응하기 싫어함.자신의 생각과 타인의 생각이 틀리면 일방적으로 밀어붙히는 성향./✔︎ 독립적이지만 고독한 존재/비판적, 논리적, 이성적 성향이 너무 강해 대화시에 차갑고 따지는듯한 분위기를 조성하여 친구를 잘 사귀지 못함./✔︎ 외모나 감정에 무딤/자신의 외모치장뿐만 아니라 타인에게도 별로 관심이 없음.타인의 감정을 잘 읽지 못해 공감력이 떨어지는 돌직구 스타일. /✔︎ INTJ 부모의 특징 /자녀가 자립성, 명확한 진로, 비판적 사고를 가지길 원함. 자녀의 수준별 교육이 가능한 선생님 역할. 감정적으로 행동하는 아이에 대한 이해와 공감이 부족함. 자녀에 대한 애정표현이 부족하고 좋아하는 편이 아님. /✔︎ 그외 /16유형중 심장질환을 겪을 가능성이 가장 낮음. 16유형중 종교(초월적 존재)를 믿을 가능성이 가장 낮음. 소득이 높은 편. IQ 1위, 대학수학능력시험 성적평균 종합 2위(자연계 1위, 인문계 2위). 16유형중 인간관계, 가족, 지역사회발전에 가장 관심 없음. ", image1: "INTJ", image2: "앨런튜링", image3: "양들의침묵-한니발", image4: "제갈공명", image5: "해리포터-말포이",  image6: "마크저크버그", image7: "일론머스크", image8: "강동원", image9: "서태지", percent: "2%"),
    Type(type: "ISTP", title: "낙천적이고 느긋하지만 언제라도 떠날 준비가 되어 있는 노마드형", description: "✔︎ 카르페디엠/항상 새로운 경험과 자극을 추구함. 행복이란 새롭고 재미있는 나날의 연속이라 생각함. 낙관적이고 느긋하며 미래에 대한 걱정이 별로 없음./✔︎ 나무늘보와 동키호테/평소엔 잠도 많고 게으르다는 소리를 듣지만 새로운 것에 꽂히면 뒤도 안돌아보고 모험속으로 위험속으로 뛰어듬. 적은 노력으로 많은 성과를 내는 효율성을 염두해 둠./✔︎ 친구는 별로 없는데 인기는 많음/새롭고 재밌는 발상을 잘하고 바로 실천에 옮기는 동키호테적 성향이 강해 선망의 대상이 되기도 하고 인기도 많지만 약속같은 얶매이는 걸 싫어해서 신의가 부족함. 마음에 없는 얘기를 상대방 기분 때문에 하지는 않음. /✔︎ 노마드적 성향/변덕이 심하고 구속을 싫어하고 직설적이라 인간관계 유지에 각별히 신경을 써야 함.관계에서 지루함, 권태로움을 느끼면 뒤도 안돌아보고 떠나는 스타일./✔︎ 그외 /손재주가 좋고 도구를 다루는 데 관심이 있음. 고집이 세고 주관이 뚜렷하고 말수가 적음. 타인의 일에 무관심 함. /✔︎ ISTP 아이의 특징/학교의 많은 규칙과 요구사항이 힘듬. 수학, 과학에 재능있음. 개인 스포츠나 비디오 게임 같은 섬세함을 요구하는 종목에서 뛰어난 두각을 보임.  수천 개의 조각 퍼즐 맞추기도 잘함. 간섭과 권위주의를 매우 싫어하므로 반항을 많이 함. 개인적인 시간을 즐김. 읽기나 언어 과목에 소질이 없음. 하고 싶은 것만 하고 하기 싫은 것은 절대 안함. 상대방 기분만 맞춰 주려고 마음에도 없는 소리를 하는 것을 싫어함.", image1: "ISTP", image2: "뮬란", image3: "베어그릴스", image4: "제임스본드", image5: "인디아나존스",  image6: "마이클조던", image7: "톰크루즈", image8: "박명수", image9: "유빈", percent: "5%"),
    Type(type: "ISFP", title: "온화한 성품의 선천적 크리에이터", description: "✔︎ 고요함속에 숨은 태풍/말보단 경청, 공감을 잘하고 온화하게 보일려고 노력함. 대답을 할 때 상대가 어떻게 받아 들일지 경우의 수를 생각하는 경우도 있음. 얶매이는 걸 싫어하고 항상 자신을 성찰하여 자신의 숨은 열정을 찾으려고 노력함./✔︎ 새로움을 추구하는 모험가/위계질서를 싫어하고 끊임없이 새로움을 추구하고자 노력함. 의미를 찾지 못하는 것에는 흥미를 느끼지 못하고 끈기있게 수행하지 못해 자신의 꿈을 찾아 떠나기도 함. 모험가이자 선천적 크리에이터. 발상력이 뛰어나서 아이디어가 풍부하고 기발하고 재치있음./✔︎ 온화함속에 숨은 불 타는 승부욕/승패가 갈리는 경쟁에서 지나친 승부욕을 발동하기도 해서 주위 사람을 놀라게 하거나 상처를 주기도 함. /✔︎ 그외/ 생활의 사소한 것들이 귀찮지만, 체계적으로 살고 싶어함. 결단력이 부족하고 끊고 맺는 맛이 없음. 생각은 많은데 행동은 부족함. 자연적인 것, 목가적인 것, 전원적인 것을 갈구함. 외관상 착해보이나 속마음은 어두움. 개인주의적인 성향을 띄고 있어 자신을 제외하면 큰 관심이 없음. 조용히 손절하는 편이라 싫은 티를 크게 내지 않고 지나가는 편임. 내면의 비판의식이 강하지만 남에게 하고싶은 말 못 하고 속으로 삭힘. 귀차니즘이 심한 편. 평소에 성실하다는 평가를 많이 받음. 주변 사람들에게 착하다는 소리를 많이 듣지만 본인은 그렇게 생각하지 않음. /✔︎ ISFP 아이의 특징/또래 친구들이나 형제와 잘 지내려고 하며 따뜻하고 조화로운 환경 속에 있고자 한다. 게임과 오락, TV 보기를 좋아한다. 과학 실험은 좋아하지만 이론적이거나 추상적인 문제에는 관심이 없다. 많은 규칙이나 규율 때문에 학교생활에 싫증을 낼 수 있다. 구체적이고 상세하게 이야기 한다. 사랑과 칭찬 격려를 받을 때 공부나 숙제를 잘한다. 머리나 옷 등 멋 내는 것을 좋아한다. 짜증이 많다. 평소에 게을러 보인다.", image1: "ISFP", image2: "마이클잭슨", image3: "빅피쉬-블룸", image4: "오드리햅번", image5: "해리포터",  image6: "유재석", image7: "박효신", image8: "노제", image9: "메시", percent: "6%"),
    Type(type: "INFP", title: "친절하고 공감 잘해주고 소소한 삶을 즐기는 사람", description: "✔︎ 낙천적이고 소확행/성선설을 믿을 정도로 타인에게 친절하고 이타적임. 착하고 공감을 잘해서 주위 사람들을 편하게 해줌. 물욕, 명예욕, 성취욕이 별로 없고 소소하게 사는 걸 좋아함./✔︎ 잠수를 잘 탐/상처를 잘 받고 성격이 모질지 못해 갈등이 생기면 일단 피하고 봄. 대신 회복력이 빨라 혼자 집에서 유유자적하며 평화롭게 지냄./✔︎ 헌신, 신뢰를 중요한 가치로 여김/더치페이보단 자신이 계산하려고 하고 모두를 다 챙기려고 함./✔︎ 친절하고 상냥하지만 친구는 많이 안사귐/마음이 따뜻하나 상대와 친해지기 전까지 자신의 따뜻함을 잘 표현하지 않으며 오히려 조용하고 과묵하다. 사람을 좋아하지만 많이 사귀지는 않음. SNS, 커뮤니티활동 잘 안함./✔︎ 직장인보다는 프리랜서/규칙적으로 출퇴근하고 인간관계에 얶매이는 회사생활을 못견뎌함. 자신의 이상과 꼭 맞는 직업을 찾아 다님./✔︎ 팩트보단 판타지/세부적 데이터를 다루는 회계, 통계, 데이터사이언스, 의사, 변호사등은 안어울림. 소설가, 작가, 화가같은 상상의 영역이 어울림 /✔︎ INFP 부모의 특징/자녀의 도덕성을 중시한다. 정직, 동정심, 배려 등의 가치를 가르치고 싶어 한다. 원칙적이고 엄격한 부모보다 자녀의 '자율성'을 지향하는 부모에 가깝다. 따뜻하고, 사랑스럽고, 옆에서 지지하고, 자녀에게 마음을 여는 부모가 되는 것을 목표로 한다. 자녀에게 좋은 본보기가 되고자 한다. /✔︎ INFP 아이의 특징/무언가를 창조하거나, 공감하고 이해하는 데 재능이 있다. 암기와 반복을 통한 학습보다 창의력, 상상력, 스토리텔링을 통한 학습을 선호한다. 일상적이고 틀에 박힌 학습 환경에 싫증을 느낀다. 학교에서 산만하거나 주어진 행동양식을 그대로 수행하지 않아 질책을 받는 경우가 종종 있다. 사회성이 떨어진다. 다소 험하고 짓궂은 애들이 많은 환경이나, 엄격하고 원리원칙주의가 너무 심한 꼰대 선생님, 어른들을 가장 어려워한다. 너무 엄격한 부모 아래서 자라거나, 아니면 나르시시즘이 있는 부모 아래서 희생양이 되며 자랐을 경우 평생 상처를 가지고 가기도 한다. 만약 부모라면 정서적 지지, 공감, 연민 등을 해 주는 것이 아이에게 도움이 된다.", image1: "INFP", image2: "생떽쥐베리", image3: "빨간머리앤", image4: "스파이더맨-피터파커", image5: "아멜리에",  image6: "", image7: "", image8: "", image9: "", percent: "4%"),
    Type(type: "INTP", title: "새로운 발상이 무수히 떠오르는 논리와 통합적 사고의 소유자", description: "✔︎ 길거리에 혼자 보내는 건 위험하다./길을 가다 갑자기 멍 때리거나 빨간 불에 횡단보도를 건널 수도 있다. 한번 꽂히면 생각이 꼬리에 꼬리를 물고 일어난다./✔︎ 어설픈 거짖말은 통하지 않는다./전형적인 INTP는 논리의 백사장에서 비논리의 모래 알갱이 하나를 찾을 수 있는 선천적 능력이 있다. 자신이 논리적으로 완벽한 거짖말을 할 수 있다면 한번 테스트 해보자./✔︎ 논리와 사실에 편식이 없는 통합적 사고력을 지녔다./논리적이고 사실이라면 어떤 것도 수용하는 오픈마인드이며 그 모든 어떤 것들이 생각의 꼬리를 물고 연결되어 통합적 사고력으로 이어진다./✔︎ 신은 그에게 차가운 머리만 주고 뜨거운 가슴은 주지 않았다./상대를 바라보고 상대를 헤아려 말을 하는 게 아니라 단지 자신의 생각을 정리하는 매개체로 상대를 보는 경향이 있음.연애인 이야기, 남 이야기엔 전혀 관심이 없음. 깜짝 파티, 생일선물, 이벤트는 기대도 하지 말자./✔︎ 밀당을 잘 못한다./정직하고 직설적이라서 남녀간의 오묘한 심리전은 재주가 없다./✔︎ 전통, 규칙? NO! NO!/주장이 뚜렷하고 독립성이 강해 자기가 보기에 비논리적, 비합리적인 전통이나 규칙은 과감히 무시한다./✔︎ 생각이 말을 앞질러 간다./무수히 떠오르는 생각을 말로 정리하는 스킬이 부족하여 횡설수설하는 경우가 있다. 친구들과 애기할 때 한 주제에 대해 생각과 정리를 너무 오래하여 말 하려고 하면 이미 친구들은 다른 주제로 대화하는 경우가 종종 있다./✔︎ INTP 부모의 특징/잔소리를 많이 안함. 성격상 다른 사람을 통제하는 데 관심이 없음. 아이가 대학졸업, 취업, 결혼같은 일반적인 삶을 살기를 원하지 않음. 아이가 끊임없이 자신의 삶을 고민하는 자율적, 독립적 인격체로 자라길 바람./✔︎ INTP 아이의 특징/'게임 좀 그만 해라' 라는 말이 안통함. 아이가 게임을 그만두게 하려면 게임중독, 전자파등이 인체와 정신에 미치는 영향과 그 부작용에 대해 구체적인 근거를들어서 납득을 시켜야 함./✔︎ 응용과학보단 순수과학, 기초학문이 어울림./기초 원리를 탐구하는 물리학자, 수학자, 법조인등이 어울리고 서비스업종은 어울리지 않음. /✔︎ 그외/눈치는 빠르지만 눈치를 안본다. ENTP와 더불어 꼰대가 가장 싫어하는 유형이기도하다. 겉과 속이 일치한다. 정직하고 솔직한 편이며 직설적이다. 아랫사람에겐 따뜻하고, 윗사람에겐 엄격하다. 16유형 중 평균 지능 지수(IQ)가 2위. INTP는 평균적으로 높은 IQ에 비하여 수능 점수는 중위권에 머무르고 있다. 패턴을 익히고 반복 훈련하는 요소가 반영되는 수능같은 평가 방식에 대해 반발이 심한 경우가 많기 때문. 하지만 서울대에서 1·2위를 다투는 유형이다. 화를 잘 안낸다. 진실에 어긋나는 것이 아니면 적당히 넘어간다.", image1: "INTP", image2: "마리퀴리", image3: "마블-닥터스트레인지", image4: "아이작뉴턴", image5: "아인슈타인",  image6: "", image7: "", image8: "", image9: "", percent: "3%"),
    Type(type: "ESTP", title: "신속한 일처리와 새로운 것을 좋아하는 재미있는 사람", description: "✔︎ 넘치는 에너지의 소유자/스포츠와 사람 만남을 좋아하고 사교적이고 재미있는 사람.감각이 발달하여 상대의 변화(표정, 옷색깔)을 잘 캐치함.군중속에서 매우 튀는 존재이며 돌아다니며 새로운 걸 경험하거나 일을 벌리는 걸 좋아함. 미래지향적인 생각보단 현재지향적인 생각을 많이 한다. 인터넷 커뮤니티에선 가장 만나기 어려운 유형이며 야외의 공간에서 가장 만나기 쉬운 유형. /✔︎ 무한도전/흥미진진한 경험을 좋아하여 위험한 상황에서도 주저함 없이뛰어드는 자극에 약한 충동적 스타일./✔︎ 신속한 추진력은 독이 되기도 한다/과제나 일 처리에 주저함이 없이 신속하게 처리하는 경향이 있어서 진중하게 계획을 세워서 진행하는 꼼꼼한 성격의 소유자와의 마찰이 발생하기도 함. 체계적이지 못하고 즉흥적인면이 많아 숲을 보지 못하는 근시안의 위험성이 있음./✔︎ 감정 교감에 서툼/직설적이고 감정 표현에 서툴러 상대의 마음을 잘 헤아리지못함. /✔︎ 그외 /대학수학능력시험 표본평균점수는 문과로 지원하는 것이 압도적으로 유리한 것으로 나타남. 대학교 평균 학점이 가장 낮다. ", image1: "ESTP", image2: "미생-한석율", image3: "알라딘", image4: "툼레이더-라라", image5: "트럼프",  image6: "", image7: "", image8: "", image9: "", percent: "4%"),
    Type(type: "ESFP", title: "에너지 넘치고 사람들을 즐겁게 해주는 유쾌한 사람", description: "✔︎ 흥이 많고 유쾌한 사람/항상 에너지가 넘치고 사람들을 즐겁게 해주는 사람.웃음소리도 유쾌상쾌하며 흥이 많아 춤, 노래등 유흥을 즐김. 16유형 중 외향 성향이 ESFJ와 함께 가장 강한 편. 내 자신의 이야기를 상대방을 가리지 않고 아무에게나 잘 털어놓는다. /✔︎ 무계획이 상팔자/무계획, 즉흥적인 면이 많아 다음달 카드결재가 걱정되는 사람.장기적이고 체계적인 과제나 업무에서 꼼꼼한 사람과 마찰이 발생하기도 함. 순간적 재미에만 몰두하는 경향이 있음./✔︎ 낯가림 전혀 없음/처음 보는 사람에게도 스스럼없이 다가가 반갑게 인사하는주위를 밝게 만드는 사람./✔︎ 참을수 없는 존재의 가벼움/전형적인 ESTP는 놀땐 너무 재미있는 사람이나 내면세계를 전혀 공유 안하고 진지한 면이 별로 없어서가볍다는 평을 듣기도 함. /✔︎ 그외/혼자 있는 것을 힘들어한다. 정이 많고 거절을 잘 못한다. 16유형 중 평균적인 행복도가 ESFJ와 함께 가장 높다. 매우 덜렁거린다.", image1: "ESFP", image2: "응답하라-동룡", image3: "이효리", image4: "타이타닉-잭도슨", image5: "해리포터-위즐리",  image6: "", image7: "", image8: "", image9: "", percent: "8%"),
    Type(type: "ENFP", title: "열정과 에너지가 넘치며 항상 웃고 있는 당신은 인싸스타일", description: "✔︎ 진정 자유로운 영혼/이 세상 모든 사람과 현상에 관심을 보이며 분위기를 재미있게 이끌고 상상력과 호기심이 풍부함.쉽게 지루해 하고 반복적인 일을 싫어함/✔︎ 긍정적, 낙천적 마인드의 소유자/'물이 반밖에 안남았네' 가 아니라 '물이 반이나 남았네' 라는 식./✔︎ 인싸 스타일/열정과 에너지가 넘쳐 사소한 이야기이든 진지한 이야기이든 재미있게 하고 내성적인 친구도 사교의 장을 이끄는 마력이 있어서 항상 친구가 많음. 옆에 있으면 언제나 새롭고 재미있음./✔︎ 호기심 천국이지만 용두사미/이것 저것, 이 사람, 저 사람에게 관심을 보이고 새로운 아이디어가 풍부하지만 그 아이디어를 구체화 시키는 끈기와 집중력은 부족. 쉽게 지루해 하고 반복적인 일을 싫어함. 상대의 말에 리액션을 잘 해줌./✔︎ 내가 웃는게 웃는게 아냐/항상 웃고 있지만 절대 가벼운 사람이 아닌 섬세한 감정의 소유자. 상대에게 많이 베풀지만웃긴 사람이 아니라 우스운 사람으로 여겨진다면 배신감을 느끼기도 함.", image1: "ENFP", image2: "겨울왕국-안나", image3: "월트디즈니", image4: "브리짓존스", image5: "코코-미구엘",  image6: "", image7: "", image8: "", image9: "", percent: "7%"),
    Type(type: "ENTP", title: "북극곰에게 냉장고도 팔 수 있는 언변의 달인", description: "✔︎ 언변의 달인/말빨이 좋아 토론을 즐기며 위트가 넘친다. 북극곰에게 냉장고도 팔 수 있는 언변.다만 그 화려한 언변과 위트에 진정성, 진실이 안보인다는 오해를 살 수도 있다./✔︎ 박학다식/영리하고 지적 호기심이 왕성함. 지적 만족을 위해선 책, 유튜브, SNS등도 마다하지 않음/✔︎ 시작은 창대하나 끝은 초라할수도/창의적이고 독창적이라 아이디어가 풍부하다. 하지만 그 아이디어를 구체적으로 실현시키는 꾸준함은 부족.결실을 맺기전에 다시 새로운 것에 꽂혀버려서 구체적 성취를 이루기는 힘듬. 한 분야의 장인이 되긴 힘듬./✔︎ 돌직구 스타일/지적 토론을 즐기지만 상대의 감정을 배려하는 면이 부족하고 직설적으로 말하는 경향이 있어서 감수성이 풍부한 사람에게 오해를 살 수도 있다. 전통과 관념을 뛰어넘는 파격적인 발언을 서슴치 않고 할 때도 있다.", image1: "ENTP", image2: "다크나이트-조커", image3: "유시민", image4: "주토피아-닉", image5: "캐리비안의해적-잭스패로우",  image6: "", image7: "", image8: "", image9: "", percent: "3%"),
    Type(type: "ESTJ", title: "근면성실하고 솔직하며 자신만의 노하우가 있는 사람", description: "✔︎ 매니저, 프로젝트리더, 선생님 스타일/규율과 질서, 근면성실과 솔직함을 중시함.경험에 바탕을 둔 확고한 자신만의 노하우가 있음.그 노하우를 바탕으로 혼란한 상황속에서도 사람들에게 공정하고 객관적으로업무나 역할을 잘 분배하고 관리함./✔︎ 나를 따르라/확고한 원칙과 빠른 상황대처능력으로 인하여 결단력과 추진력이 좋지만자신의 원칙에서 벗어나거나 불성실한 사람에겐 강한 거부감을 느낌.타인의 의견보단 자신의 방식을 고집하는 경향이 있음./✔︎ 바람직한 시민상/법과 질서를 잘 지키고 솔선수범하고 끈기있게 과제나 업무를 완수하여 선생님에게칭찬 받거나 사회적으로 인정받는 케이스. 체면, 사회적 위치, 평판을 너무 의식하여 잘 쉬지 못하는 경향도 있음./✔︎ 감정표현에 약함/항상 자신의 경험과 팩트에 근거한 이야기를 일방적으로 제시하는 스타일이라타인의 감정을 헤아리는 노력이 필요함.", image1: "ESTJ", image2: "그랜드부다페스트호텔-구스타프", image3: "백종원", image4: "해리포터-헤르미온느", image5: "헨리포드",  image6: "", image7: "", image8: "", image9: "", percent: "11%"),
    Type(type: "ESFJ", title: "친절하고 사람 좋은 분위기 메이커", description: "✔︎ 약속으로 꽉찬 다이어리/사람 만나는 걸 좋아해서 항상 약속이 많고 분위기 메이커 역할임./✔︎ 학교생활, 사회생활 잘한다는 소리 들음/전통, 규칙등을 잘 따르고 조직적, 계획적으로 일을 잘하고 책임감이 강함.항상 예의바르고 솔선수범하며 학교 모둠활동이나 회사 조직에서 구성원과의 협동,조화에 각별히 신경 씀./✔︎ 친절왕/열심히 사는 이유가 자신의 내적 삶의 성취에 있는 게 아니라 타인의 삶에 도움을 주기 위함이 큼./✔︎ 타인만 바라보는 해바라기/자기 자신보다 너무 인간관계에만 신경쓰고 칭찬과 좋은 평판만 갈구하다보니 혼자 있는 걸 힘들어 함./✔︎ 자녀가 마마보이가 되지않도록 각별히 신경 써야/부모가 ESFJ이면 자녀에게 무한한 사랑과 관심을 제공하지만 자칫 지나쳐서 아이를 과잉보호하여 독립심이결여된 아이로 성장하지 않도록 조심해야 함.", image1: "ESFJ", image2: "오즈의마법사-도로시", image3: "혜리", image4: "응답하라-덕선", image5: "해리포터-위즐리",  image6: "박보검", image7: "광희", image8: "손흥민", image9: "김연아", percent: "12%"),
    Type(type: "ENFJ", title: "남을 잘 도와주고 타인의 성장에 보람을 느끼는 긍정에너지의 소유자", description: "✔︎ 오 캡틴, 마이 캡틴/죽은 조직을 되살리는 비결은 리더십, 진정성, 팀원을 사로잡는 말빨과 긍정에너지./✔︎ 오지랖은 넓지만 마음은 따뜻삶의 목적이 자신이 아니라 주위 사람들에게 있기에 언제나 사람들을 기쁘게 해주고 긍정적인 방향으로 변화 시키려고 노력함. 계획을 잘세우고 계획대로 사람들을 잘 이끌어감.사람들을 너무 잘 챙겨주려는 생각이 크다 보니 상대가 원하지 않는데도 도움을 주려다 마찰이 생기기도 함. 간식같은 거 잘 챙겨주는 사람. 내가 다 챙겨야 직성이 풀림. 타인의 성장을 돕는데 보람을 느낌./✔︎ 사람을 잘 믿는다남들의 요구사항을 거절하지 못해서 돈을 떼이는등 이용을 당하고 상처 입기 쉬움. /✔︎ 싫은 소리 잘 못함상대의 잘못을 지적하는데 서툴러 문제행동을 하는 아이의 훈육을 어려워 함./✔︎ 자녀가 반항을 하거나 원치 않는 길로 가면 상처 받음. 나를 희생해서 자식만을 위해 살았는데 자녀가 기대에 부합하지 못하면 실의에 빠짐. 자녀의 독립성과 자율성을 인정해주는 연습이 필요.", image1: "ENFJ", image2: "인사이드아웃-기쁨이", image3: "마틴루터킹", image4: "오프라윈프리", image5: "죽은시인의사회-키팅",  image6: "", image7: "", image8: "", image9: "", percent: "2%"),
    Type(type: "ENTJ", title: "카리스마와 리더십을 겸비한 쎈 언니 스타일", description: "✔︎ 쎈 언니 스타일/선천적 리더, 대장, 왕성한 에너지, 대장부, 여장부, 카리스마/✔︎ 목표를 위해선 브레이크 없는 기관차/목표의식이 뚜렷하고 성취욕구가 커서 도전을 두려워 하지 않고 어떤한 경쟁도 다 받아줌. 목표를 위해선 빠른 판단과 추진력으로 일사천리로 일을 진행해 사회적으로 성공하고 돈을잘 벌 가능성이 큼./✔︎ 리더가 될 것인가 독재자가 될 것인가/자신의 기대수준에 못미치면 무능하다고 생각하고 지적, 비난하려는 욕구가 샘 솟음. 특히 감수성이 예민하고 소심한 성격의 사람들과 마찰 가능성이 큼. 감정코칭등을 통해 감정조절방법을 익힐 필요가 있음./✔︎ 아이가 말대꾸하면 권위에 도전하는걸로 봄/아이가 순종적으로 잘 따르고 권위에 복종하기를 원함./✔︎ 발달이 느린 아이를 보면 조바심이 생김/성격이 급하고 추진력이 강해 성취수준이 낮거나 느린 아이를 다그칠 가능성이 큼. 아이를 감정적으로 공감해주고 기다려주는 인내심이 필요.", image1: "ENTJ", image2: "나폴레옹", image3: "고든램지", image4: "마블-닉퓨리", image5: "스티브잡스", image6: "", image7: "", image8: "", image9: "", percent: "3%")
    
]
