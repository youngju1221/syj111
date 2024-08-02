-- day5_select_join.sql

-- 조인 (JOIN)
-- 여러 개의 테이블들을 하나로 합쳐서 큰 테이블을 만드는 것
-- 조인한 결과 테이블에서 원하는 컬럼을 선택함
-- 오라클 전용 구문과 ANSI 표준 구문으로 작성할 수 있음

-- 조인은 기본 EQUAL JOIN 이다. (같은 값끼리 연결됨)
-- ==> EQUAL 이 아닌 값에 대한 행은 조인에서 제외됨
-- 연결할 두 테이블의 FOREIGN KEY(외래키, 외부키)로 관계를 가진 컬럼이 조인에 기본적으로 사용됨

-- 오라클 전용 구문 : 오라클에서만 사용함
-- FROM 절에 조인할(합칠) 테이블들을 나열함
-- WHERE 절에 연결할 컬럼에 대한 조건을 설정함
-- 단점 : WHERE 절에 일반 조건과 조인 조건이 섞임 => 복잡해짐

SELECT *
FROM EMPLOYEE, DEPARTMENT
WHERE EMPLOYEE.DEPT_ID = EMPLOYEE.DEPT_ID;
-- 결과행 : 20행, EMPLOYEE.DEPT_ID 가 NULL 인 직원 2명이 제외됨
-- EQUAL INNER JOIN 이라고 함

SELECT * FROM DEPARTMENT;

-- 오라클 전용구문은 조인한 결과에 두 테이블의 컬럼이 모두 포함되어 있음
-- SELECT 시에 테이블명.컬럼명으로 중복된 컬럼은 구분해 줘야 함
SELECT EMP_NAME, EMPLOYEE.DEPT_ID, DEPT_NAME
FROM EMPLOYEE, DEPARTMENT
WHERE EMPLOYEE.DEPT_ID = DEPARTMENT.DEPT_ID;

-- 조인시에 테이블명에 별칭 붙일 수 있음
SELECT EMP_NAME, EMPLOYEE.DEPT_ID, DEPT_NAME
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DEPT_ID = D.DEPT_ID;

-- ANSI 표준 구문
-- 모든 DBMS 가 공통으로 사용하는 표준 구문임
-- 조인 처리를 위한 별도의 키워드를 사용함 => FROM 절에 JOIN 키워드를 추가해서 작성함
-- 오라클 전용구문과 다른 점 : WHERE 절에서 조인 조건을 분리함

SELECT *
FROM EMPLOYEE
JOIN DEPARTMENT USING (DEPT_ID);
-- 조인에 사용된 컬럼이 조인 결과에 한 개 존재함, 맨 앞에 표시됨 : 오라클 전용 구문의 조인 결과와 다른 점임

SELECT EMP_NAME, DEPT_ID, DEPT_NAME
FROM EMPLOYEE
INNER JOIN DEPARTMENT USING (DEPT_ID); -- 20행
-- 조인의 기본은 EQUAL INNER JOIN 임 : 연결 컬럼의 일치하는 값에 대한 행들만 조인됨
-- INNER 생략해도 됨

-- 조인시에 사용되는 두 테이블의 컬럼명이 같으면 USING 사용함
-- 사용된 값은 같은데 컬럼명만 다르면 ON 사용함

-- USING 사용 예 :
SELECT EMP_NAME, JOB_ID, DEPT_ID, DEPT_NAME
FROM EMPLOYEE INNER JOIN DEPARTMENT USING (DEPT_ID)
WHERE JOB_ID = 'J6'
ORDER BY DEPT_NAME DESC;

-- ON 사용 예 :
SELECT *
FROM DEPARTMENT INNER JOIN LOCATION ON (LOC_ID = LOCATION_ID);

-- 위의 조인을 오라클 전용 구문으로 바꾼다면 
SELECT *
FROM DEPARTMENT D, LOCATION L
WHERE D.LOC_ID = L.LOCATION_ID;

-- 사번, 이름, 직급명, 조회 : 별칭 처리
-- 1. 오라클 전용구문
SELECT EMP_ID 사번, EMP_NAME 이름, JOB_TITLE 직급명
FROM EMPLOYEE E, JOB J
WHERE E.JOB_ID = J.JOB_ID; -- 21행

-- 2. ANSI 표준 구문
SELECT EMP_ID 사번, EMP_NAME 이름, JOB_TITLE 직급명
FROM EMPLOYEE
JOIN JOB USING (JOB_ID); -- 21행

-- OUTER JOIN --------------------------
-- 기본은 EQUAL INNER JOIN + 값이 일치하지 않은 행도 포함시키는 조인
-- OUTER JOIN 도 EQUAL JOIN 임 => 없는 값이 있는 테이블에 값을 추가하는 방싱임

-- EMPLOYEE 테이블의 전 직원의 정보를 조인 결과에 포함시키고자 한다면
-- 1. 오라클 전용 구문 : 값이 없는 테이블에 행을 추가하는 방식임 => (+) 표시함
SELECT *
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DEPT_ID = D.DEPT_ID(+); -- 22행

-- 2. ANSI 표준 구문
SELECT *
--FROM EMPLOYEE LEFT OUTER JOIN DEPARTMENT USING (DEPT_ID);
--FROM EMPLOYEE LEFT JOIN DEPARTMENT USING (DEPT_ID);  -- OUTER 생략해도 됨
FROM DEPARTMENT RIGHT JOIN EMPLOYEE USING (DEPT_ID);

-- DEPARTMENT 테이블이 가진 모든 행을 조인에 포함시키려면
-- 1. 오라클 전용 구문
SELECT *
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DEPT_ID(+) = D.DEPT_ID;

-- 2. ANSI 표준 구문
SELECT *
FROM EMPLOYEE
RIGHT JOIN DEPARTMENT USING (DEPT_ID);

-- 두 테이블의 제외되는 모든 행을 조인 결과에 포함시킨다면
-- FULL OUTER JOIN 이라고 함

-- 오라클 전용구문에는 FULL OUTER JOIN 이 제공되지 않음, 
SELECT *
FROM EMPLOYEE E, DEPARTMENT D
WHERE E,DEPT_ID(+) = D.DEPT_ID(+);

-- ANSI 표준 구문
SELECT *
FROM EMPLOYEE
FULL JOIN DEPARTMENT USING (DEPT_ID); --23행








