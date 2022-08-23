DROP TABLE FEE;
DROP TABLE RESERVE;
DROP TABLE NOTICE;
DROP TABLE REPLY;
DROP TABLE BOARD;
DROP TABLE CHAT;
DROP TABLE VISIT;
DROP TABLE VISIT_CATEGORY;
DROP TABLE PARKING;
DROP TABLE PARKING_VISIT;
DROP TABLE VOTE_MEMBER;
DROP TABLE VOTE_ITEM;
DROP TABLE VOTE;
DROP TABLE MEMBER;


DROP SEQUENCE SEQ_RNO;
DROP SEQUENCE SEQ_VNO;
DROP SEQUENCE SEQ_CHNO;
DROP SEQUENCE SEQ_UNO;
DROP SEQUENCE SEQ_NNO;
DROP SEQUENCE SEQ_BNO;
DROP SEQUENCE SEQ_BRNO;
DROP SEQUENCE SEQ_VONO;
DROP SEQUENCE SEQ_INO;
DROP SEQUENCE SEQ_VCNO;

--------------------------------------------------
--------------     MEMBER 관련   ------------------   
--------------------------------------------------

CREATE TABLE MEMBER (
   USER_NO   NUMBER      PRIMARY KEY,
   APT_NO   VARCHAR2(30)      NOT NULL,
   USER_ID   VARCHAR2(30)      UNIQUE,
   USER_PWD   VARCHAR2(100)      NOT NULL,
   USER_NAME   VARCHAR2(30)      NOT NULL,
   BIRTHDAY   VARCHAR2(30)      NOT NULL,
   PHONE   VARCHAR2(30)      NOT NULL,
   EMAIL   VARCHAR2(30)      NULL,
   STATUS   VARCHAR2(5)   DEFAULT 'W'   NOT NULL
);

CREATE SEQUENCE SEQ_UNO
NOCACHE;

COMMENT ON COLUMN MEMBER.USER_NO IS '회원번호(SEQ_UNO)';
COMMENT ON COLUMN MEMBER.APT_NO IS '동호수';
COMMENT ON COLUMN MEMBER.USER_ID IS '아이디';
COMMENT ON COLUMN MEMBER.USER_PWD IS '비밀번호';
COMMENT ON COLUMN MEMBER.USER_NAME IS '이름';
COMMENT ON COLUMN MEMBER.BIRTHDAY IS '생년월일';
COMMENT ON COLUMN MEMBER.PHONE IS '전화번호';
COMMENT ON COLUMN MEMBER.EMAIL IS '이메일';
COMMENT ON COLUMN MEMBER.STATUS IS '상태(존재 : Y/ 삭제 : N/ 대기 : W)';


INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'관리사무소', 'admin', '$2a$10$1nW/oAclCmFb72HM4pXihuizrpPX7zz2ikemFdJk1WWkrDxXxNInO', '관리자', '650101', '01012341234', 'admin@kh.or.kr', 'Y');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동101호', 'user01', '$2a$10$Tj2EpG0n2ekHAvWvP9i3YeYlHXq0RwBvjaLi4kokWdwYn5CIPqyUG', '홍길동', '970514', '01011112222', 'user01@kh.or.kr', 'Y');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동101호', 'user001', '$2a$10$Tj2EpG0n2ekHAvWvP9i3YeYlHXq0RwBvjaLi4kokWdwYn5CIPqyUG', '홍길똥', '960412', '01011112223', 'user001@kh.or.kr', 'W');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동201호', 'user02', '$2a$10$wAHLRHkKMu5zESY1zg7Coesp6iYcPtqMzAQ4BsArcFaKqjvQwiPe2', '고성수', '970714', '01012123434', 'user02@kh.or.kr', 'Y');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동201호', 'user002', '$2a$10$wAHLRHkKMu5zESY1zg7Coesp6iYcPtqMzAQ4BsArcFaKqjvQwiPe2', '고길동', '920111', '01012123432', 'user002@kh.or.kr', 'Y');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동301호', 'user03', '$2a$10$/d4bUsm0U2opfC/TMLWVBOC3NTUr3CWLaEq3jIGlHfMHHW3HnN4Qm', '김유미', '991105', '01056567878', 'user03@kh.or.kr', 'Y');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동301호', 'user003', '$2a$10$/d4bUsm0U2opfC/TMLWVBOC3NTUr3CWLaEq3jIGlHfMHHW3HnN4Qm', '김길동', '801105', '01026567278', 'user003@kh.or.kr', 'N');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동401호', 'user04', '$2a$10$yxpMzwgyqOk3KquCDZVYo.NcJjNvU0PkI5R1x/eM38V.w6H/lGH0.', '서영재', '881115', '01098987676', 'user04@kh.or.kr', 'Y');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동401호', 'user004', '$2a$10$yxpMzwgyqOk3KquCDZVYo.NcJjNvU0PkI5R1x/eM38V.w6H/lGH0.', '서길동', '781115', '01097987676', 'user004@kh.or.kr', 'W');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동501호', 'user05', '$2a$10$0pcWEqUUdBtVMNWpw2OTq.LoBIeudVWoyzfx7rUuUwYROAsTNCWYa', '손동환', '970514', '01079796868', 'user05@kh.or.kr', 'Y');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동501호', 'user005', '$2a$10$0pcWEqUUdBtVMNWpw2OTq.LoBIeudVWoyzfx7rUuUwYROAsTNCWYa', '손길동', '900504', '01079796808', 'user005@kh.or.kr', 'Y');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동601호', 'user06', '$2a$10$dYQrw7ER9qmwB.mTO2zA9O5vhaIERyuERHgCpdqAJshtq2udvRg3a', '임유리', '990107', '01029293838', 'user06@kh.or.kr', 'Y');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동601호', 'user006', '$2a$10$dYQrw7ER9qmwB.mTO2zA9O5vhaIERyuERHgCpdqAJshtq2udvRg3a', '임길동', '690107', '01009293838', 'user006@kh.or.kr', 'W');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동701호', 'user07', '$2a$10$ITj7jNJDsNORiEdi94bscuYz0gVAtfeLDV2WPrtc3BJhvo.atwLr6', '조성준', '960625', '01047472020', 'user07@kh.or.kr', 'Y');

INSERT INTO MEMBER 
VALUES (SEQ_UNO.NEXTVAL,'1동701호', 'user007', '$2a$10$ITj7jNJDsNORiEdi94bscuYz0gVAtfeLDV2WPrtc3BJhvo.atwLr6', '조길동', '960625', '01042472024', 'user007@kh.or.kr', 'W');
--------------------------------------------------
--------------     FEE 관련   ------------------   
--------------------------------------------------

CREATE TABLE FEE (
   APT_NO   VARCHAR2(30)      PRIMARY KEY,
   USER_NO   NUMBER      NOT NULL,
   FEE_MONTH   NUMBER      NOT NULL,
   DUE_DATE   DATE      NOT NULL,
   APT_FEE   VARCHAR2(30)      NOT NULL,
   FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO)
);

COMMENT ON COLUMN FEE.APT_NO IS '동호수';
COMMENT ON COLUMN FEE.USER_NO IS '회원번호(SEQ_UNO)';
COMMENT ON COLUMN FEE.FEE_MONTH IS '관리비납부월';
COMMENT ON COLUMN FEE.DUE_DATE IS '납부기한';
COMMENT ON COLUMN FEE.APT_FEE IS '관리비';


--------------------------------------------------
--------------     RESERVE 관련   ------------------   
--------------------------------------------------

CREATE TABLE RESERVE (
   RESERVE_NO   NUMBER      PRIMARY KEY,
   START_DATE   VARCHAR2(30)      NULL,
   END_DATE     VARCHAR2(30)      NULL,
   FACILITY   VARCHAR2(10)      NULL,
   SEAT_NUMBER   NUMBER      NULL,
   USER_NO   NUMBER      NOT NULL,
   STATUS   VARCHAR2(1)      NULL,
   START_DAY VARCHAR2(30) NOT NULL,
   CREATE_DATE   DATE   DEFAULT SYSDATE   NOT NULL,
   FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO)
);

COMMENT ON COLUMN RESERVE.RESERVE_NO IS '예약번호';
COMMENT ON COLUMN RESERVE.START_DATE IS '시작시간';
COMMENT ON COLUMN RESERVE.END_DATE IS '종료시간';
COMMENT ON COLUMN RESERVE.FACILITY IS '시설명(독서실:ST, 미니짐:MG, 골프:GF)';
COMMENT ON COLUMN RESERVE.SEAT_NUMBER IS '좌석번호(독서실:100~, 골프:1~)';
COMMENT ON COLUMN RESERVE.USER_NO IS '회원번호(SEQ_UNO)';
COMMENT ON COLUMN RESERVE.STATUS IS '상태(Y / N / Z(독서실: 임박))';
COMMENT ON COLUMN RESERVE.CREATE_DATE IS '신청날짜';
COMMENT ON COLUMN RESERVE.START_DAY IS '시작날짜';

CREATE SEQUENCE SEQ_RNO
NOCACHE;


--------------------------------------------------
--------------     NOTICE 관련   ------------------   
--------------------------------------------------

CREATE TABLE NOTICE (
   NOTICE_NO   NUMBER      PRIMARY KEY,
   NOTICE_TITLE   VARCHAR2(500)      NOT NULL,
   NOTICE_CATEGORY   VARCHAR2(15)      NOT NULL,
   NOTICE_CONTENT   VARCHAR2(3000)      NOT NULL,
   USER_NO   NUMBER      NOT NULL,
   ORIGIN_NAME   VARCHAR2(200)      NULL,
   CHANGE_NAME   VARCHAR2(200)      NULL,
   NOTICE_CALENDER   VARCHAR2(100)      NULL,
   NOTICE_START_DATE   DATE      NULL,
   NOTICE_END_DATE   DATE      NULL,
   CREATE_DATE   DATE   DEFAULT SYSDATE   NOT NULL,
   STATUS   VARCHAR2(1)   DEFAULT 'Y'   NOT NULL,
   FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO)
);

CREATE SEQUENCE SEQ_NNO
NOCACHE;

COMMENT ON COLUMN NOTICE.NOTICE_NO IS '번호(SEQ_NNO)';
COMMENT ON COLUMN NOTICE.NOTICE_TITLE IS '제목';
COMMENT ON COLUMN NOTICE.NOTICE_CATEGORY IS '말머리([공지]/[행사]/[알림])';
COMMENT ON COLUMN NOTICE.NOTICE_CONTENT IS '내용';
COMMENT ON COLUMN NOTICE.USER_NO IS '회원번호(SEQ_UNO)';
COMMENT ON COLUMN NOTICE.ORIGIN_NAME IS '첨부파일원래이름';
COMMENT ON COLUMN NOTICE.CHANGE_NAME IS '첨부파일변경이름';
COMMENT ON COLUMN NOTICE.NOTICE_CALENDER IS '일정종류';
COMMENT ON COLUMN NOTICE.NOTICE_START_DATE IS '일정시작시간';
COMMENT ON COLUMN NOTICE.NOTICE_END_DATE IS '일정끝시간';
COMMENT ON COLUMN NOTICE.CREATE_DATE IS '작성날짜';
COMMENT ON COLUMN NOTICE.STATUS IS '상태(존재 Y / 삭제 N)';

-- 더미데이터
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '알림', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '행사', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '알림', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '행사', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '알림', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '알림', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '행사', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '행사', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '알림', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '알림', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '행사', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '알림', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '행사', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '알림', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '알림', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '행사', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '알림', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '행사', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'공지사항 더미데이터', '알림', '공지사항 더미데이터', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'분리수거 관련 공지', '공지', '분리수거를 잘합시다!', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'세대 내 금연 부탁드립니다.', '공지', '세대내 흡연 문제로 민원이 많이 들어오고 있습니다. 세대 내 금연 부탁드립니다.', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'펫티켓을 지켜주세요!', '알림', '펫티켓을 지켜 아름다운 반려동물 문화를 만듭시다~', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'주차 위반 차량 단속 안내', '공지', '주차 위반 차량 단속합니다!!!', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'1단지 층간소음 민원 결과 안내', '알림', '해당 사건은 잘 마무리 되었습니다. 궁금한 사항은 따로 연락 부탁드립니다.', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'탄소중립 생활 실천 캠페인 안내', '행사', '지구를 위해 탄소 중립 캠페인에 동참해주세요!', '1', NULL, NULL, NULL, NULL, NULL, DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'승강기 점검 안내', '알림', '승강기 점검이 있겠습니다.', '1', NULL, NULL, '승강기 점검 안내', '22/08/05', '22/08/05', DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'아파트내 벼룩시장 행사 안내', '행사', '아파트내 벼룩시장이 열릴 예정이오니 입주자 여러분들은 많은 참여 부탁드립니다!', '1', NULL, NULL, '승강기 점검', '22/08/13', '22/08/14', DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'1동 가스 검침 일정 안내', '알림', '가스 검침을 실시하오니, 1동 입주자 여러분들은 방문 예약 신청 바랍니다.', '1', NULL, NULL, '1동 가스검침 일정', '22/08/25', '22/08/28', DEFAULT, 'Y');
INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL,'아파트 동대표 선거 안내', '알림', '아파트 동대표 선거가 있습니다.', '1', NULL, NULL, '동대표 선거', '22/08/29', '22/08/31', DEFAULT, 'Y');

--------------------------------------------------
--------------     BOARD 관련   ------------------   
--------------------------------------------------

CREATE TABLE BOARD (
   BOARD_NO   NUMBER      PRIMARY KEY,
   BOARD_TITLE   VARCHAR2(500)      NOT NULL,
   BOARD_CONTENT   VARCHAR2(4000)      NOT NULL,
   BOARD_WRITER VARCHAR2(100) NOT NULL,   
   ORIGIN_NAME   VARCHAR2(200)      NULL,
   CHANGE_NAME   VARCHAR2(200)      NULL,
   COUNT   NUMBER   DEFAULT 0   NULL,
   CREATE_DATE   DATE   DEFAULT SYSDATE   NULL,
   STATUS   VARCHAR2(1)   DEFAULT 'Y'   NULL,
   BOARD_CATEGORY    VARCHAR2(50)   DEFAULT '[일반]'   NOT NULL,
   USER_NO   NUMBER      NOT NULL,
   FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO)
);


COMMENT ON COLUMN BOARD.BOARD_NO IS '번호(SEQ_BNO)';
COMMENT ON COLUMN BOARD.BOARD_TITLE IS '제목';
COMMENT ON COLUMN BOARD.BOARD_CONTENT IS '내용';
COMMENT ON COLUMN BOARD.BOARD_WRITER IS '게시글작성자';
COMMENT ON COLUMN BOARD.ORIGIN_NAME IS '첨부파일원래이름';
COMMENT ON COLUMN BOARD.CHANGE_NAME IS '첨부파일변경이름';
COMMENT ON COLUMN BOARD.COUNT IS '게시글조회수';
COMMENT ON COLUMN BOARD.CREATE_DATE IS '게시글작성날짜';
COMMENT ON COLUMN BOARD.STATUS IS '게시글상태(존재:Y/삭제:N)';
COMMENT ON COLUMN BOARD.BOARD_CATEGORY IS '게시글말머리([맘] , [건의], [판매], [정보])';
COMMENT ON COLUMN BOARD.USER_NO IS '회원번호';

CREATE SEQUENCE SEQ_BNO
NOCACHE;

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '관리자입니다111.', '나는 개발자용 더미입니다1 ㅎㅎ', '관리자', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 1);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '관리자입니다2222.', '나는 개발자용 더미입니다2 ㅎㅎ', '관리자', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 1);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '관리자입니다33333.', '나는 개발자용 더미입니다3 ㅎㅎ', '관리자', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 1);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '아파트 너무 이쁘네요.', '단지 내 분위기나 조명, 구조들이 너무 이뻐요!', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '우리 동네 아파트 엄마들 안녕하세요~!', '어머니들 모임이나 회식을 따로 가지시는지 궁급합니다!!', '성수맘', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, '[맘]', 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '층간 소음 건의합니다. 매우 화가 났어요!', '301동 501호 아이들이 새벽에도 쿵쿵거리는데 시끄러워서 잠이안옵니다..', '401호 대디', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, '[건의]', 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '애기전용 BMW팝니다~!', '가속 성능과 핸들링의 쾌적성 등의 주행능력을 높인 BMW-BABY5 시리즈입니다.', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, '[판매]', 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '아파트 조기축구 회원 모집공고문', '22년 08월 25일 까지 신청서 작성하셔서 goss1997@naver.com 으로 보내주시면 감사하겠습니다.', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, '[정보]', 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '아파트 산책 시 주의사항', '일몰시간에 맞춰 산책을 하시면 붉은 야경과 함께 어우러지는 배경이 환상적입니다. 놓치지마세요!', 'sancheck', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, '[정보]', 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '어머니들 쓰레기 처리 관련 질문있어요!', '음식물 쓰레기는 분리수거하는 요일 이외에 버려도 상관없나요??', '아따맘마', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, '[맘]', 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '주택청약으로 들어오신 분들 참고하시라고 정보 고유합니다.', '당첨된 청약통장은 계약 체결 여부와 관계없이 재사용 불가하지만 청약통장을 사용하여 분양전환되지 않는 임대주택에 당첨된 경우 재사용 가능하다네요^^', '서영재', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, '[정보]', 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '우영우 너무 재밌다 ㅋㅋ', '너무 재밌어서 안나가고 정주행중입니다 ㅎㅎ', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '제가 고성수입니다.', 'ㅋㅋㅋㅋㅋㅋㅋㅋㅋ', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '가', '가', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '나', '나', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '다', '다', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '라', '라', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '마', '마', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '바', '바', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '사', '사', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '아', '아', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '자', '자', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '차', '차', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '차 사고 싶다..', '차 사고 싶다..', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, 'AAA', 'AAA', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, 'BBB', 'BBB', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, 'CCC', 'CCC', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, 'DDD', 'DDD', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, 'EEE', 'EEE', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, 'FFF', 'FFF', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, 'GGG', 'GGG', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, 'HHH', 'HHH', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, 'III', 'III', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, 'JJJ', 'JJJ', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2);
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '아파트 앞에 커피집 맛있네요', '리얼루 맛있어요! 맨날가야지 ㅋ', '고성수', NULL, NULL, DEFAULT, DEFAULT, DEFAULT, '[정보]', 2);



--------------------------------------------------
--------------     REPLY 관련   ------------------   
--------------------------------------------------

CREATE TABLE REPLY (
   REPLY_NO   NUMBER      PRIMARY KEY,
   REPLY_CONTENT   VARCHAR2(200)      NOT NULL,
   REPLY_WRITER VARCHAR2(100) NOT NULL,
   REF_BNO   NUMBER      NOT NULL,
   CREATE_DATE   DATE   DEFAULT SYSDATE   NOT NULL,
   STATUS   VARCHAR2(1)   DEFAULT 'Y'   NULL,
   USER_NO   NUMBER      NOT NULL,
   FOREIGN KEY (REF_BNO) REFERENCES BOARD(BOARD_NO), 
   FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO)
);

COMMENT ON COLUMN REPLY.REPLY_NO IS '댓글번호';
COMMENT ON COLUMN REPLY.REPLY_CONTENT IS '댓글내용';
COMMENT ON COLUMN REPLY.REPLY_WRITER IS '댓글작성자';
COMMENT ON COLUMN REPLY.REF_BNO IS '참조게시글번호';
COMMENT ON COLUMN REPLY.CREATE_DATE IS '댓글작성일';
COMMENT ON COLUMN REPLY.STATUS IS '댓글상태(존재:Y / 삭제 : N)';
COMMENT ON COLUMN REPLY.USER_NO IS '회원번호';

CREATE SEQUENCE SEQ_BRNO
NOCACHE;

INSERT INTO REPLY
VALUES (SEQ_BRNO.NEXTVAL, '관리자의 1번 댓글', '관리자', 1, DEFAULT, DEFAULT, 1);
INSERT INTO REPLY
VALUES (SEQ_BRNO.NEXTVAL, '관리자의 2번 댓글', '관리자', 1, DEFAULT, DEFAULT, 1);
INSERT INTO REPLY
VALUES (SEQ_BRNO.NEXTVAL, '저도 이뻐서 친구들한테 자랑중 ㅋㅋ', '김유미', 1, DEFAULT, DEFAULT, 2);
INSERT INTO REPLY
VALUES (SEQ_BRNO.NEXTVAL, '이쁘다 이쁘다 이쁘다니까~', '고성수', 1, DEFAULT, DEFAULT, 2);
INSERT INTO REPLY
VALUES (SEQ_BRNO.NEXTVAL, '야경이 미쳤네요 ㄷㄷ', '손동환', 1, DEFAULT, DEFAULT, 2);
INSERT INTO REPLY
VALUES (SEQ_BRNO.NEXTVAL, '정말 죄송합니다 주의할께요!', '501호 마미', 3, DEFAULT, DEFAULT, 2);




--------------------------------------------------
--------------     CHAT 관련   ------------------   
--------------------------------------------------

CREATE TABLE CHAT (
   CHAT_NO   NUMBER      PRIMARY KEY,
   CHAT_CONTENT   VARCHAR2(2000)      NOT NULL,
   CHAT_SENDTIME   DATE   DEFAULT SYSDATE   NOT NULL,
   CHAT_CODE   NUMBER   DEFAULT 1   NOT NULL,
   CHAT_WRITER VARCHAR2(300) NOT NULL,
   USER_NO   NUMBER      NOT NULL,
   FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO)
);

CREATE SEQUENCE SEQ_CHNO
NOCACHE;




COMMENT ON COLUMN CHAT.CHAT_NO IS '채팅번호(SEQ_CHNO)';
COMMENT ON COLUMN CHAT.CHAT_CONTENT IS '채팅내용';
COMMENT ON COLUMN CHAT.CHAT_SENDTIME IS '채팅작성시간';
COMMENT ON COLUMN CHAT.CHAT_CODE IS '채팅방코드(주민단톡:1 / 경비실:2 / 관리소:3)';
COMMENT ON COLUMN CHAT.CHAT_WRITER IS '채팅작성한 동호수';
COMMENT ON COLUMN CHAT.USER_NO IS '회원번호(SEQ_UNO)';

INSERT INTO CHAT
VALUES (SEQ_CHNO.NEXTVAL, '안녕하세요', TO_DATE('22/08/09 08:15', 'RR/MM/DD HH24:MI'), 1, '고성수', 3);
INSERT INTO CHAT
VALUES (SEQ_CHNO.NEXTVAL, '반가워요', TO_DATE('22/08/09 08:30', 'RR/MM/DD HH24:MI'), 1, '김유미', 4);
INSERT INTO CHAT
VALUES (SEQ_CHNO.NEXTVAL, 'ㅎㅇㅎㅇ', TO_DATE('22/08/10 13:13', 'RR/MM/DD HH24:MI'), 1, '서영재', 5);
INSERT INTO CHAT
VALUES (SEQ_CHNO.NEXTVAL, '오오 채팅 뭐야~', TO_DATE('22/08/10 16:17', 'RR/MM/DD HH24:MI'), 1, '손동환', 6);
INSERT INTO CHAT
VALUES (SEQ_CHNO.NEXTVAL, '단톡방이군요', TO_DATE('22/08/11 09:30', 'RR/MM/DD HH24:MI'), 1, '임유리', 7);
INSERT INTO CHAT
VALUES (SEQ_CHNO.NEXTVAL, '헬로 봉쥬르~', TO_DATE('22/08/11 11:34', 'RR/MM/DD HH24:MI'), 1, '조성준', 8);
INSERT INTO CHAT
VALUES (SEQ_CHNO.NEXTVAL, '혹시 501호 예비군 우편 왔나요??', TO_DATE('22/08/15 10:30', 'RR/MM/DD HH24:MI'), 2, '1동201호', 3);
INSERT INTO CHAT
VALUES (SEQ_CHNO.NEXTVAL, '없습니다.', TO_DATE('22/08/15 10:40', 'RR/MM/DD HH24:MI'), 2, '관리사무소', 3);


--------------------------------------------------
--------------     VISIT_CATEGORY 관련   ------------------   
--------------------------------------------------

CREATE TABLE VISIT_CATEGORY (
    VISIT_CATEGORY NUMBER   PRIMARY KEY,
    VISIT_VALUE   VARCHAR2(15)   NULL
);

COMMENT ON COLUMN VISIT_CATEGORY.VISIT_CATEGORY IS '카테고리번호';
COMMENT ON COLUMN VISIT_CATEGORY.VISIT_VALUE IS '카테고리내용';

INSERT INTO VISIT_CATEGORY
VALUES (1, '가스');
INSERT INTO VISIT_CATEGORY
VALUES (2, '난방');
INSERT INTO VISIT_CATEGORY
VALUES (3, '소독');
INSERT INTO VISIT_CATEGORY
VALUES (4, '수도');
INSERT INTO VISIT_CATEGORY
VALUES (5, '전기');


--------------------------------------------------
--------------     VISIT 관련   ------------------   
--------------------------------------------------

CREATE TABLE VISIT (
   VISIT_NO   NUMBER      PRIMARY KEY,
   VISIT_CATEGORY   NUMBER      NOT NULL,
   USER_NO   NUMBER      NOT NULL,
   VISIT_DATE   VARCHAR2(150)     NOT NULL,
   VISIT_TIME   VARCHAR2(150)   NOT NULL,
   VISIT_STATUS   VARCHAR2(1)   DEFAULT 'W'   NOT NULL,
   VISIT_CONTENT   VARCHAR2(3000)      NULL,
   CREATE_DATE   DATE   DEFAULT SYSDATE   NOT NULL,
   FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO),
   FOREIGN KEY (VISIT_CATEGORY) REFERENCES VISIT_CATEGORY(VISIT_CATEGORY)
);

CREATE SEQUENCE SEQ_VNO
NOCACHE;

COMMENT ON COLUMN VISIT.VISIT_NO IS '예약번호(SEQ_VNO)';
COMMENT ON COLUMN VISIT.VISIT_CATEGORY IS '예약종류(난방, 수도, 전기,가스,소독)';
COMMENT ON COLUMN VISIT.USER_NO IS '회원번호(SEQ_UNO)';
COMMENT ON COLUMN VISIT.VISIT_DATE IS '시작시간';
COMMENT ON COLUMN VISIT.VISIT_STATUS IS '상태(승인 Y / 대기 W / 반려, 삭제 N)';
COMMENT ON COLUMN VISIT.VISIT_CONTENT IS '참고사항';
COMMENT ON COLUMN VISIT.CREATE_DATE IS '신청날짜';

--------------------------------------------------
--------------     PARKING 관련   ------------------   
--------------------------------------------------

CREATE TABLE PARKING (
   CAR_NO   VARCHAR2(20)      PRIMARY KEY,
   CAR_PHONE   VARCHAR2(20)      NULL,
   STATUS   VARCHAR2(5)      NULL,
   CREATE_DATE   DATE      NULL,
   USER_NO   NUMBER      NOT NULL,
   FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO)
);


COMMENT ON COLUMN PARKING.CAR_NO IS '차량번호';
COMMENT ON COLUMN PARKING.CAR_PHONE IS '연락처';
COMMENT ON COLUMN PARKING.STATUS IS '승인상태(승인:Y  대기:W )';
COMMENT ON COLUMN PARKING.CREATE_DATE IS '차량 등록 요청일';
COMMENT ON COLUMN PARKING.USER_NO IS '회원번호(SEQ_UNO)';

-- 더미데이터
INSERT INTO VISIT
VALUES (SEQ_VNO.NEXTVAL, 1, 7, '2022-08-01', '13:00', 'Y', NULL, DEFAULT);
INSERT INTO VISIT
VALUES (SEQ_VNO.NEXTVAL, 3, 7, '2022-08-25', '09:40', 'Y', NULL, DEFAULT);
INSERT INTO VISIT
VALUES (SEQ_VNO.NEXTVAL, 4, 7, '2022-08-25', '11:10', 'N', NULL, DEFAULT);

--------------------------------------------------
--------------      PARKING_VISIT 관련   ------------------   
--------------------------------------------------

CREATE TABLE PARKING_VISIT (
   VISITCAR_NO   NUMBER      PRIMARY KEY,
   CAR_NO   VARCHAR2(20)    NOT NULL,
   VISITCAR_PHONE   VARCHAR2(20)   NOT NULL,
   VISITCAR_DATE DATE   NOT NULL,
   PURPOSE VARCHAR2(50) NULL,
   STATUS   VARCHAR2(5)      NOT NULL,
   USER_NO   NUMBER      NOT NULL,
   FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO)
);

CREATE SEQUENCE SEQ_VCNO
NOCACHE;

COMMENT ON COLUMN PARKING_VISIT.VISITCAR_NO IS '주차번호(SEQ_VCNO)';
COMMENT ON COLUMN PARKING_VISIT.CAR_NO IS '차량번호';
COMMENT ON COLUMN PARKING_VISIT.VISITCAR_PHONE IS '방문차량폰번호';
COMMENT ON COLUMN PARKING_VISIT.VISITCAR_DATE IS '주차예정일';
COMMENT ON COLUMN PARKING_VISIT.PURPOSE IS '방문목적';
COMMENT ON COLUMN PARKING_VISIT.STATUS IS '상태(가능:Y, 예정:W, 완료:N)';
COMMENT ON COLUMN PARKING_VISIT.USER_NO IS '유저번호(SEQ_UNO)';

INSERT INTO PARKING_VISIT
VALUES (SEQ_VCNO.NEXTVAL, '11가2222', '010-1111-2222', '2022-08-29', '친척 방문', 'W', 2);
INSERT INTO PARKING_VISIT
VALUES (SEQ_VCNO.NEXTVAL, '22하5555', '010-1234-3333', '2022-08-30', '친구 방문', 'W', 2);
INSERT INTO PARKING_VISIT
VALUES (SEQ_VCNO.NEXTVAL, '11가2222', '010-1111-2222', '2022-09-01', '친척 방문', 'W', 2);
INSERT INTO PARKING_VISIT
VALUES (SEQ_VCNO.NEXTVAL, '55루2323', '010-2324-5764', '2022-09-04', '택배', 'W', 2);
INSERT INTO PARKING_VISIT
VALUES (SEQ_VCNO.NEXTVAL, '62바8714', '010-7352-2345', '2022-09-11', '친구 놀러옴', 'W', 2);

--------------------------------------------------
--------------     VOTE 관련   ------------------   
--------------------------------------------------

CREATE TABLE VOTE (
   VOTE_NO   NUMBER      PRIMARY KEY,
   VOTE_TITLE   VARCHAR2(100)      NOT NULL,
   VOTE_START   DATE      NULL,
   VOTE_END   DATE      NULL,
   VOTE_CREATE   DATE   DEFAULT SYSDATE   NULL,
   VOTE_TYPE   NUMBER   DEFAULT 1   NULL,
   STATUS   VARCHAR2(5)   DEFAULT 'Y'   NOT NULL
);

CREATE SEQUENCE SEQ_VONO
NOCACHE;

COMMENT ON COLUMN VOTE.VOTE_NO IS '(투표번호)SEQ_VONO';
COMMENT ON COLUMN VOTE.VOTE_TITLE IS '투표제목';
COMMENT ON COLUMN VOTE.VOTE_START IS '시작날짜';
COMMENT ON COLUMN VOTE.VOTE_END IS '종료날짜';
COMMENT ON COLUMN VOTE.VOTE_CREATE IS '생성날짜';
COMMENT ON COLUMN VOTE.VOTE_TYPE IS '(복수선택 1=가능, 0=불가능)';
COMMENT ON COLUMN VOTE.STATUS IS '투표상태(Y=투표중, N=투표끝, W=투표예정, X=투표삭제)';


--------------------------------------------------
--------------     VOTE_ITEM 관련   ------------------   
--------------------------------------------------

CREATE TABLE VOTE_ITEM (
   ITEM_NO   NUMBER      PRIMARY KEY,
   ITEM_NAME   VARCHAR2(200)      NOT NULL,
   ORIGIN_NAME   VARCHAR2(200)      NULL,
   CHANGE_NAME   VARCHAR2(200)      NULL,
   ITEM_COUNT   NUMBER  DEFAULT 0   NULL,
    VOTE_NO       NUMBER      NOT NULL,
   FOREIGN KEY (VOTE_NO) REFERENCES VOTE(VOTE_NO)
);

CREATE SEQUENCE SEQ_INO
NOCACHE;

COMMENT ON COLUMN VOTE_ITEM.ITEM_NO IS '투표항목번호(SEQ_INO)';
COMMENT ON COLUMN VOTE_ITEM.ITEM_NAME IS '투표항목제목';
COMMENT ON COLUMN VOTE_ITEM.ORIGIN_NAME IS '첨부파일원래이름';
COMMENT ON COLUMN VOTE_ITEM.CHANGE_NAME IS '첨부파일바뀐이름';
COMMENT ON COLUMN VOTE_ITEM.ITEM_COUNT IS '득표수';
COMMENT ON COLUMN VOTE_ITEM.VOTE_NO IS '투표번호(SEQ_VONO)';

--------------------------------------------------
--------------     VOTE_MEMBER 관련   ------------------   
--------------------------------------------------

CREATE TABLE VOTE_MEMBER (
   USER_NO   NUMBER      NOT NULL,
   VOTE_NO   NUMBER      NOT NULL,
   ITEM_NO   NUMBER      NOT NULL,
    CONSTRAINT VOTE_MEMBER_PK PRIMARY KEY (USER_NO,VOTE_NO, ITEM_NO),
    FOREIGN KEY (USER_NO) REFERENCES MEMBER(USER_NO),
    FOREIGN KEY (VOTE_NO) REFERENCES VOTE(VOTE_NO),
    FOREIGN KEY (ITEM_NO) REFERENCES VOTE_ITEM(ITEM_NO)
);

COMMENT ON COLUMN VOTE_MEMBER.USER_NO IS '투표자번호(SEQ_UNO)';
COMMENT ON COLUMN VOTE_MEMBER.VOTE_NO IS '투표번호(SEQ_VONO)';
COMMENT ON COLUMN VOTE_MEMBER.ITEM_NO IS '투표항목번호(SEQ_INO)';



COMMIT;