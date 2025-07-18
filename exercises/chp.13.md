# 13장 연습문제 정답

## 01. 몽고DB 에 관한 설명으로 옳지 않은 것은?

1. NoSQL 중에서 가장 많이 사용하는 DBMS이다.  
2. 문서 기반 데이터베이스 유형을 지원한다.  
3. 오픈 소스 DBMS이다.  
4. 관계형 데이터베이스와 동일한 질의 기능을 지원한다.  

정답 1: 4


## 02. 몽고DB 의 주요 특성으로 거리가 먼 것은?

1. 유연성 (flexibility)  
2. 휘발성 (volatile)  
3. 고성능(performance)  
4. 확장성 (scalability)  

정답 2: 2


## 03. 컬렉션(collection) 에 관한 설명으로 옳지 않은 것은?

1. 컬렉션도 정해진 고정 스키마를 갖는다.  
2. 문서들의 모임이다.  
3. 같은 컬렉션 안에서도 저장되는 문서 구조가 다양할 수 있다.  
4. 동적 스키마를 갖는 테이블과 비슷하다.  

정답 3: 1


## 04. 몽고DB의 동적 스키마에 관한 설명으로 옳지 않은 것은?

1. 미리 정해진 고정 스키마가 존재하지 않는다(schema-less).  
2. 모든 문서의 필드들이 동일하지 않고 같은 필드라도 데이터 유형이 다를 수 있다.  
3. 같은 컬렉션 안에 있는 문서들끼리도 서로 다른 스키마를 가질 수 있다(schema-free).  
4. 스키마를 변경하거나 테이블을 추가하는 등 대응이 복잡하고 어렵다.  

정답 4: 4


## 05. 몽고DB의 '_id' 필드에 관한 설명으로 옳은 것은?

1. 저장된 모든 문서는 '_id' 필드를 가진다.  
2. '_id' 필드는 관계형 데이터베이스의 외래키에 해당한다.  
3. 문서를 입력할 때 '_id' 필드를 명세하더라도 새로운 '_id' 필드값이 자동으로 추가된다.  
4. '_id' 필드값이 가질 수 있는 데이터 유형은 객체 ID형이다.  

정답 5: 1


## 06. 다음 문장이 참이면 O, 거짓이면 X 를 하시오.

1. 몽고DB는 대표적 비관계형 DBMS로서 개발이 쉽고 유연하며 확장성이 높다. (O)  
2. 몽고DB는 JSON 형식의 문서를 사용하지만 데이터베이스 저장시에는 이진 포맷으로 인코딩한 BSON 형식의 문서로 변환되어 저장된다. (O)  
3. 몽고DB는 별도의 스키마 선언 없이도 릴레이션에 해당하는 컬렉션을 생성할 수 있다. (O)  
4. 몽고DB 쉘에 접속하기 위해서는 우선 mongod 인스턴스가 실행되어야 한다. (O)  
5. find() 명령어 함수 뒤의 pretty() 명령어 함수는 배열과 내장 문서와 같이 복잡한 계층 문서들의 내용을 정돈해서 보기 쉽도록 표시해준다. (O)  
6. findOne() 명령어 함수는 커서 객체를 반환하며 여러 문서를 검색 결과를 통해 얻고자 할 경우 사용하며 커서를 활용하여 문서 처리 작업을 반복한다. (X)  
7. updateOne(), updateMany() 명령어 함수는 특정 필드값을 바꾸거나 필드 이름을 변경, 또는 필드를 삭제하는 등의 문서 수정을 수행한다. (O)  
8. replaceOne() 명령어 함수는 문서 변경이 아니라 교체이기 때문에 기존 문서 내용은 전부 사라지지만 문서 고유의 값인 '_id' 필드값은 바뀌지 않는다. (O)  
9. 몽고DB는 관계형 DB처럼 색인 사용이 불가능하다. (X)  


## 07. 다음 ( ) 안에 적당한 용어를 채워 완성하시오.

1. 몽고DB에서 가용성을 향상시키기 위한 (샤딩 sharding)은 데이터베이스의 데이터를 수평 분할(horizontal partitioning)하여 여러 서버에 분산 저장하는 방식이다.  
2. 몽고DB의 기본 구성 요소중에서 (컬렉션 collection)은 문서의 모음으로 동적 스키마를 갖는 테이블과 같다.  
3. 몽고DB (쉘 shell)은 문서에 대한 질의뿐만 아니라 관리나 실행중인 인스턴스를 점검하는 데 유용한 도구로써 자바스크립트 해석 기능을 가지고 있어 자바스크립트 프로그램 작성과 실행이 가능하다.  
4. **(db.replaceOne)** 명령어 함수는 특정 문서를 찾아서 새로운 문서로 교체한다.  
5. 몽고DB에서 컬렉션에 문서 하나를 추가하는 명령어는 (db.insertOne )이다.  

정답 7:  
1. 샤딩(sharding)  
2. 컬렉션(collection)  
3. 쉘(shell)  
4. replaceOne  
5. insertOne


## 08. 다음 릴레이션 관련 SQL 명령문에 대응하는 컬렉션 관련 몽고DB 명령문

1. db.createCollection("회원")  
2. db.회원.updateMany({}, { $set: { 탈퇴날짜: null } })  
3. db.회원.drop()  

정답 8: 1, 2, 3


## 09. 다음 투플 관련 SQL 명령문에 대응하는 문서 관련 몽고DB 명령문

1. db.회원.insertOne({_id: "m111", 나이: 55, 성별: "남"});  
2. db.회원.insertOne({_id: "m222", 메모: "임시 회원임"});  
3. db.회원.find();  
4. db.회원.find({ 성별: { $ne: "남" } }, { _id: 1, 성별: 1 });  
5. db.회원.find({ 성별: "남" }).sort({ 나이: 1 });  
6. db.회원.countDocuments();  
7. db.회원.updateMany({ 나이: { $gt: 25 } }, { $set: { 성별: "여" } });  
8. db.회원.deleteMany({});  
9. db.회원.deleteMany({ 성별: "여" });  

정답 9: 1, 2, 3, 4, 5, 6, 7, 8, 9


## 10. 4가지 NoSQL 데이터베이스 유형의 특성을 비교 · 요약하시오.

정답 10:  
- **문서형(Document DB)**: JSON/BSON 기반, 유연한 구조 → 예: MongoDB  
- **키-값형(Key-Value DB)**: 단순 구조, 빠른 속도 → 예: Redis  
- **열 기반(Column Family)**: 대용량 분석에 적합 → 예: Cassandra  
- **그래프형(Graph DB)**: 관계 표현에 강함 → 예: Neo4j


## 11. 몽고DB와 관계형 데이터베이스를 비교 · 설명하시오.

정답 11:  
- **스키마**: 몽고DB는 스키마리스 / 관계형은 고정 스키마  
- **확장성**: 몽고DB는 수평 확장 / 관계형은 수직 확장 위주  
- **조인**: 몽고DB는 제한적 / 관계형은 강력한 조인  
- **트랜잭션**: 몽고DB는 제한적 지원 / 관계형은 기본 기능  
- **데이터 구조**: 몽고DB는 중첩·배열 가능 / 관계형은 정규화 중심  
- **사용 목적**: 몽고DB는 유연한 웹·앱에 적합 / 관계형은 금융·ERP 등
