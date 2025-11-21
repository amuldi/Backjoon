# 📚 SQL 문법 정리 

## 1. 쿼리 기본 구조 및 필터링

| 문법 | 해설 (사용 목적) | 필수 구문 | 사용 예시 |
| :--- | :--- | :--- | :--- |
| **SELECT** | 조회할 컬럼(열) 지정 (`*`는 전체 의미) | SELECT [컬럼명] | `SELECT ITEM_ID, RARITY` |
| **FROM** | 데이터를 가져올 대상 테이블 지정 | FROM [테이블명] | `FROM food_warehouse` |
| **WHERE** | 행(레코드)에 조건을 걸어 데이터 필터링 | WHERE [조건] | `WHERE category = '인문'` |
| **LIKE** | 특정 문자열 패턴 검색 | WHERE [컬럼] LIKE '패턴' | `WHERE address LIKE '서울%'` |
| **GROUP BY** | 집계 함수(AVG, SUM 등) 사용 시, 결과를 특정 기준으로 묶어 계산 | GROUP BY [컬럼] | `GROUP BY i.rest_id` |
| **ORDER BY** | 최종 결과를 특정 컬럼 기준으로 정렬 (기본: ASC, 내림차순: DESC) | ORDER BY [컬럼] [DESC/ASC] | `ORDER BY score DESC, date ASC` |

## 2. 날짜, 숫자, NULL 처리 함수

| 함수/문법 | 해설 (기능) | 사용 예시 | 
| :--- | :--- | :--- 
| **YEAR() / MONTH()** | 날짜/시간 컬럼에서 연도나 월을 추출 | `WHERE YEAR(date) = 2021` | 
| **DATE_FORMAT()** | 날짜를 지정된 형식의 문자열로 변환하여 출력 | `DATE_FORMAT(date, '%Y-%m-%d')` | 
| **AVG()** | 선택된 컬럼의 값들에 대한 평균을 계산 (집계 함수) | `SELECT AVG(score)` | 
| **ROUND()** | 숫자를 지정된 자릿수에서 반올림 처리 | `ROUND(AVG(score), 2)` | 
| **IFNULL()** | 컬럼 값이 NULL일 경우, 지정된 대체 값으로 변경 | `IFNULL(freezer_yn, 'N')` | 
| **AS** | 컬럼이나 테이블에 별칭(Alias) 부여 | `ROUND(AVG(score)) AS avg_score` | 

## 3. 테이블 결합 및 데이터 수정 문법

| 문법 | 해설 (관계 설정 및 목적) | 사용 예시 |
| :--- | :--- | :--- |
| **JOIN** | 두 테이블의 공통 키(Key)가 일치하는 행을 결합 | `JOIN TableB B ON A.id = B.id` |
| **UNION ALL** | 두 쿼리 결과를 세로로 결합하며, 중복 행을 제거하지 않음 (속도 빠름) | `SELECT col FROM A UNION ALL SELECT col FROM B` |
| **UPDATE ... JOIN** | 다른 테이블의 데이터를 참조하여 대상 테이블의 값을 업데이트 (MySQL 방식) | `UPDATE TableA a JOIN TableB b ON a.id = b.id SET a.col = b.col` |
