CREATE DATABASE  IF NOT EXISTS `grim_talk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `grim_talk`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: imoongserver1.mysql.database.azure.com    Database: grim_talk
-- ------------------------------------------------------
-- Server version	8.0.39-azure

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `picked` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `curriculum_id` bigint DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhd8ssou0nw9f2s150o9n8rngj` (`curriculum_id`),
  KEY `FK64nnwbg6pxnn5a3kugpfgnmq5` (`student_id`),
  CONSTRAINT `FK64nnwbg6pxnn5a3kugpfgnmq5` FOREIGN KEY (`student_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKhd8ssou0nw9f2s150o9n8rngj` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (_binary '\0','2025-02-18 01:13:19.867061',8,1,5,'2025-02-18 01:13:19.867061','퍼스널 컬러 검사를 한 번 받아봤는데, 되게 신기하고 재미있더라구요!\n혹시 몇 시간정도 강의를 하실 예정이신지 알 수 있을까요?? 그때 시간을 비워두려고 해요!','강의 시작만 기다리고 있어요!!!'),(_binary '\0','2025-02-20 11:14:23.454746',77,2,11,'2025-02-20 11:14:23.454746','- 인기 있는 이모티콘을 만들기 위해 가장 중요한 요소는 무엇인가요?\n\n- 아이디어가 떠오르지 않을 때 영감을 얻는 방법이 있나요?\n\n- 이모티콘 캐릭터를 구상할 때, 어떤 기준으로 디자인을 결정하나요?','이모티콘 기획 및 아이디어'),(_binary '\0','2025-02-20 11:14:44.494205',77,3,11,'2025-02-20 11:14:44.494205','- 초보자가 쉽게 따라 할 수 있는 이모티콘 제작 과정이 있을까요?\n\n- 이모티콘을 만들 때 가장 많이 사용하는 툴과 추천하는 프로그램이 궁금합니다.\n\n- 이모티콘 애니메이션을 제작할 때 신경 써야 할 핵심 포인트는 무엇인가요?','이모티콘 제작 과정'),(_binary '\0','2025-02-20 11:15:09.934826',78,4,11,'2025-02-20 11:15:09.934826','- 이모티콘 판매 수익 구조는 어떻게 되나요?\n\n- 1,000만 원 이상의 수익을 달성할 수 있었던 비결이 무엇인가요?\n\n- 지속적으로 사랑받는 이모티콘 브랜드를 만드는 전략이 있을까요?','수익화 및 브랜딩');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment`
--

DROP TABLE IF EXISTS `board_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment` (
  `picked` bit(1) NOT NULL,
  `board_id` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKke01v1gkigv4065kfl3aavje6` (`board_id`),
  KEY `FK64jss2hm62irnkve3pm5qmv5d` (`member_id`),
  CONSTRAINT `FK64jss2hm62irnkve3pm5qmv5d` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKke01v1gkigv4065kfl3aavje6` FOREIGN KEY (`board_id`) REFERENCES `board` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment`
--

LOCK TABLES `board_comment` WRITE;
/*!40000 ALTER TABLE `board_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lecture_id` bigint DEFAULT NULL,
  `category_type` enum('CHARACTER','COLLECTION','COLORING','CONCEPT_ART','DRAWING','EMOTICON','WEBTOON') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKb958g13afs41990mg0hi5uble` (`lecture_id`),
  CONSTRAINT `FK9bq3qkj0bcgn2bbk32c11fyme` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,1,'CHARACTER'),(2,2,'CONCEPT_ART'),(3,3,'DRAWING'),(4,4,'COLORING'),(5,5,'DRAWING'),(6,6,'COLORING'),(7,7,'CHARACTER'),(8,8,'COLORING'),(9,9,'CONCEPT_ART'),(10,10,'EMOTICON'),(11,11,'WEBTOON'),(12,12,'CHARACTER'),(13,13,'COLORING'),(15,15,'DRAWING'),(16,16,'DRAWING'),(17,17,'DRAWING'),(18,18,'EMOTICON'),(19,19,'EMOTICON'),(20,20,'WEBTOON'),(21,21,'EMOTICON'),(23,23,'CHARACTER'),(24,24,'DRAWING'),(25,25,'EMOTICON');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatting`
--

DROP TABLE IF EXISTS `chatting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatting` (
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `live_id` bigint DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9b5nu7errvh5fq4740wim3d6u` (`live_id`),
  KEY `FKlv6j5tubiorgcy3hcq1xulhq0` (`member_id`),
  CONSTRAINT `FK9b5nu7errvh5fq4740wim3d6u` FOREIGN KEY (`live_id`) REFERENCES `live` (`id`),
  CONSTRAINT `FKlv6j5tubiorgcy3hcq1xulhq0` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatting`
--

LOCK TABLES `chatting` WRITE;
/*!40000 ALTER TABLE `chatting` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum`
--

DROP TABLE IF EXISTS `curriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curriculum` (
  `is_live` bit(1) NOT NULL,
  `live_status` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expected_live_time` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lecture_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `completed_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlh46dsnghd5imy6gcfkch6rqy` (`lecture_id`),
  CONSTRAINT `FKlh46dsnghd5imy6gcfkch6rqy` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum`
--

LOCK TABLES `curriculum` WRITE;
/*!40000 ALTER TABLE `curriculum` DISABLE KEYS */;
INSERT INTO `curriculum` VALUES (_binary '\0',_binary '','2025-02-18 00:51:42.100159','2025-03-15 09:54:00.000000',1,1,'2025-02-18 00:53:27.643515','테스트 커리큘럼 내용','테스트 커리큘럼','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/816724eb-0ddd-4163-9f58-f4e1114d30eb_whiteboard.png'),(_binary '\0',_binary '\0','2025-02-18 00:52:22.143367','2025-02-20 09:54:00.000000',2,1,'2025-02-18 00:52:22.143367','테스트 커리큘럼2 내용','테스트 커리큘럼2',NULL),(_binary '\0',_binary '','2025-02-18 00:57:36.687183','2025-02-19 20:00:00.000000',3,2,'2025-02-18 03:35:06.443827','커리큘럼 내용','커리큘럼 제목','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/c1033054-fdf1-4232-8854-dff06a6964d7_whiteboard.png'),(_binary '\0',_binary '','2025-02-18 00:57:42.994089','2025-02-18 12:55:00.000000',4,3,'2025-02-18 01:09:59.548567','선 연습 및 손 풀기\r\n기본 도형을 활용한 그림 구조 이해\r\n간단한 드로잉 테크닉','스케치 기본기 다지기','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/b985504a-f5f6-4fd5-9479-69deda813b98_whiteboard.png'),(_binary '\0',_binary '','2025-02-18 00:57:42.998718','2025-02-19 12:00:00.000000',5,3,'2025-02-18 01:04:30.969155','새, 개구리, 달팽이 등 동물 형태 분석\r\n감성적인 표정과 특징 잡기\r\n단순하지만 개성 있는 선 스타일 연습','귀여운 동물 스케치','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/6e892042-97db-45bc-945e-5940e1fff911_whiteboard.png'),(_binary '\0',_binary '','2025-02-18 00:57:43.003051','2025-02-20 12:00:00.000000',6,3,'2025-02-18 03:35:04.251927','나비, 벌 등의 곤충 그리기\r\n꽃과 식물 요소를 활용한 감성 스케치\r\n동물과 자연을 조화롭게 구성하는 방법','자연 요소와 곤충 스케치','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/79be0efe-26cf-4c43-81bc-202e59343ba8_whiteboard.png'),(_binary '\0',_binary '','2025-02-18 00:57:43.007778','2025-02-22 12:00:00.000000',7,3,'2025-02-20 10:20:49.389306','스케치만으로 완성도 높이기\r\n선의 두께와 강약을 조절하여 감각적인 스타일 만들기\r\n다양한 조합을 활용한 나만의 작품 만들기','선으로 완성하는 미니멀 아트','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/1a959657-5e3f-4fd6-b72d-6e1781def6fd_whiteboard.png'),(_binary '\0',_binary '','2025-02-18 01:05:09.736814','2025-02-18 09:51:00.000000',8,4,'2025-02-18 01:14:58.470277','- 퍼스널 컬러의 개념과 중요성\r\n- 피부 톤, 머리 색, 눈동자 색의 관계','퍼스널 걸러란?','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/a84bc2e1-a54e-49c4-a75b-47a068e4f0ee_whiteboard.png'),(_binary '\0',_binary '','2025-02-18 01:05:09.741521','2025-02-19 09:52:00.000000',9,4,'2025-02-18 01:17:38.162287','- 색의 3요소(색상, 명도, 채도)\r\n- 웜톤 & 쿨톤의 차이\r\n- 4계절 컬러 시스템(봄·여름·가을·겨울)','컬러 이론 기초','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/1572334d-bc69-46fa-83ce-a5e8cfd30c82_whiteboard.png'),(_binary '\0',_binary '\0','2025-02-18 01:05:09.745581','2025-02-20 09:52:00.000000',10,4,'2025-02-18 01:05:09.745581','- 기본적인 퍼스널 컬러 진단 방법\r\n- 나에게 어울리는 색상 찾기\r\n- 간단한 색 비교 실습','셀프 퍼스널 컬러 테스트',NULL),(_binary '\0',_binary '\0','2025-02-18 01:05:09.750659','2025-02-21 09:53:00.000000',11,4,'2025-02-18 01:05:09.750659','- 기본적인 톤 매칭\r\n- 퍼스널 컬러에 맞는 옷 컬러 선택법\r\n- 실패 없는 컬러 코디법','퍼스널 컬러와 패션',NULL),(_binary '\0',_binary '\0','2025-02-18 01:05:09.754776','2025-02-22 09:53:00.000000',12,4,'2025-02-18 01:05:09.754776','- 웜톤/쿨톤별 베이스, 립, 아이섀도우 추천\r\n- 색조화장품 선택하는 법','퍼스널 컬러와 메이크업',NULL),(_binary '\0',_binary '\0','2025-02-18 01:05:09.758900','2025-02-23 09:53:00.000000',13,4,'2025-02-18 01:05:09.758900','- 직접 컬러 비교 실습\r\n- 퍼스널 컬러 활용법 질문 & 답변','퍼스널 컬러 실습 및 Q&A',NULL),(_binary '\0',_binary '\0','2025-02-18 01:07:01.157624','2025-02-19 10:04:00.000000',14,5,'2025-02-18 01:07:01.157624','- 인사 및 자기소개\r\n- 어떻게 하면 만화가로 데뷔할 수 있을까?\r\n- 간단한 커리큘럼 소개 및 강의 방향성 안내','프롤로',NULL),(_binary '\0',_binary '\0','2025-02-18 01:07:01.162162','2025-03-06 02:04:00.000000',15,5,'2025-02-18 01:07:01.162162','- 선의 굵기에 대하여 (겉선, 묘사선)\r\n- 해칭\r\n- 간단한 오브제부터 그려보기 : 컵, 그릇','02. [기본] 그림에 몰입감을 더해 줄 선화 기본기',NULL),(_binary '\0',_binary '\0','2025-02-18 01:07:01.168098','2025-02-18 07:04:00.000000',16,5,'2025-02-18 01:07:01.168098','- 2강의 기본기를 바탕으로 한 컷 그리기','03. [심화] 선화를 활용한 한 컷 그리기',NULL),(_binary '\0',_binary '\0','2025-02-18 01:07:01.173007','2025-03-05 10:09:00.000000',17,5,'2025-02-18 01:07:01.173007','- 톤의 종류 및 톤 깎기에 대하여\r\n- 원고에서 먹과 선은 어떻게 쓰일까?\r\n- 배운 이론을 오브제에 적용해 보기','04. [기본] 톤과 먹',NULL),(_binary '\0',_binary '\0','2025-02-18 01:07:01.178006','2025-02-26 03:05:00.000000',18,5,'2025-02-18 01:07:01.178006','- 3강에서 실습한 한 컷에 톤과 먹을 넣어보기\r\n- 나만의 흑과 백, 톤의 밸런스를 만들어 보기','05. [심화] 톤과 먹',NULL),(_binary '\0',_binary '','2025-02-18 01:09:30.284591','2025-02-23 10:06:00.000000',19,6,'2025-02-20 11:03:16.331458','- 기본 4계절 시스템을 넘어서 12가지 세부 분류\r\n(봄 라이트 / 봄 브라이트 / 여름 라이트 / 여름 쿨 등)','퍼스널 컬러의 세부 분류','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/0006cb4a-3a7a-4c02-99b9-0af129e59339_whiteboard.png'),(_binary '\0',_binary '\0','2025-02-18 01:09:30.289080','2025-02-24 10:06:00.000000',20,6,'2025-02-18 01:09:30.289080','- 톤온톤(Tone-on-Tone), 톤인톤(Tone-in-Tone), 톤앤톤(Tone-and-Tone) 스타일링\r\n- 컬러 밸런스를 맞추는 방법','퍼스널 컬러와 조화의 원리',NULL),(_binary '\0',_binary '\0','2025-02-18 01:09:30.293462','2025-02-25 10:07:00.000000',21,6,'2025-02-18 01:09:30.293462','- 기본적인 드레이핑(천을 활용한) 진단법\r\n- 전문가가 사용하는 컬러 차트 및 도구 소개\r\n- 정확한 컬러 진단을 위한 비교 기법','퍼스널 컬러 진단 심화 과정',NULL),(_binary '\0',_binary '\0','2025-02-18 01:09:30.297654','2025-02-26 10:07:00.000000',22,6,'2025-02-18 01:09:30.297654','- 면접, 직장인, 비즈니스 룩을 위한 컬러 추천\r\n- 방송인, 연예인, 크리에이터를 위한 컬러 선택법\r\n- 각 직업군별 어울리는 컬러 스타일링 실습','직업별 퍼스널 컬러 활용법',NULL),(_binary '\0',_binary '\0','2025-02-18 01:09:30.301842','2025-02-27 10:07:00.000000',23,6,'2025-02-18 01:09:30.301842','- 피부 톤과 조화로운 염색 컬러 추천\r\n- 웜톤/쿨톤에 맞는 브라운, 블론드, 애쉬 계열 비교\r\n- 탈색/염색 시 고려할 점','퍼스널 컬러와 헤어 컬러',NULL),(_binary '\0',_binary '\0','2025-02-18 01:09:30.305684','2025-02-28 10:08:00.000000',24,6,'2025-02-18 01:09:30.305684','- 색이 미치는 심리적 영향 분석\r\n- 특정 컬러가 주는 인상 및 브랜드 이미지와 컬러 연관성','퍼스널 컬러와 심리학',NULL),(_binary '\0',_binary '\0','2025-02-18 01:09:30.309600','2025-03-01 10:08:00.000000',25,6,'2025-02-18 01:09:30.309600','- 직접 실습을 통해 참가자별 컬러 매칭 분석\r\n- 각자 어울리는 컬러 스타일링 적용 및 피드백\r\n- 실전 활용도를 높이기 위한 Q&A 진행','퍼스널 컬러 컨설팅 실습',NULL),(_binary '\0',_binary '\0','2025-02-18 01:11:00.251230','2025-02-19 10:12:00.000000',26,7,'2025-02-18 01:11:00.251230','- 커리큘럼 소개\r\n- 프로크리에이트 세팅 및 기초 설명','01. 강의 소개 및 프로그램 세팅',NULL),(_binary '\0',_binary '\0','2025-02-18 01:11:00.258124','2025-02-21 10:09:00.000000',27,7,'2025-02-18 01:11:00.258124','- 질감 브러쉬 소개\r\n- 선 긋기와 필압 조절\r\n- 그림 위에서 연습','02. 선 연습과 질감 브러쉬 활용법',NULL),(_binary '\0',_binary '\0','2025-02-18 01:11:00.262952','2025-03-11 16:10:00.000000',28,7,'2025-02-18 01:11:00.262952','- 팔레트와 채색 순서 엿보기\r\n- 질감 브러쉬와 힘 조절 적응','03. 그림 과정 엿보기 채색',NULL),(_binary '\0',_binary '\0','2025-02-18 01:11:00.267886','2025-03-19 05:10:00.000000',29,7,'2025-02-18 01:11:00.267886','- 두상이 아닌 얼굴로 구도를 잡는 방법\r\n- 정면, 45도 반측면, 측면, 15도 반측면 구도와 비율 분석','04. [분석] 얼굴 구도와 비율',NULL),(_binary '\0',_binary '\0','2025-02-18 01:11:00.272995','2025-04-09 22:10:00.000000',30,7,'2025-02-18 01:11:00.272995','- 각도별 이목구비의 형태와 배치\r\n- 얼굴 굴곡 이해','05. [분석] 이목구비 형태와 배치',NULL),(_binary '\0',_binary '\0','2025-02-18 01:13:15.614358','2025-03-02 10:10:00.000000',31,8,'2025-02-18 01:13:15.614358','- 컬러 컨설팅 시장과 트렌드\r\n- 퍼스널 컬러 컨설팅을 활용할 수 있는 직업군\r\n- 컨설턴트로서의 윤리와 책임','퍼스널 컬러 컨설턴트의 역할',NULL),(_binary '\0',_binary '\0','2025-02-18 01:13:15.619410','2025-03-03 10:10:00.000000',32,8,'2025-02-18 01:13:15.619410','- 전문가용 드레이핑 기법 (고급 패브릭 활용)\r\n- 피부 반응을 정확히 판별하는 방법\r\n- 컬러 테스트 키트 사용법 및 실습','퍼스널 컬러 고급 진단 기법',NULL),(_binary '\0',_binary '\0','2025-02-18 01:13:15.624407','2025-03-04 10:11:00.000000',33,8,'2025-02-18 01:13:15.624407','- 감성 컬러(이모셔널 컬러)란?\r\n- 컬러가 미치는 감정적, 심리적 효과\r\n- 고객의 성향 및 목적에 따른 컬러 제안법','색채 심리와 감성 컬러',NULL),(_binary '\0',_binary '\0','2025-02-18 01:13:15.629510','2025-03-05 10:11:00.000000',34,8,'2025-02-18 01:13:15.629510','- 패션 스타일링과 퍼스널 컬러\r\n- 고객 맞춤형 색조 메이크업 컨설팅\r\n- 고객 니즈에 따른 맞춤형 컬러 코칭','맞춤형 컬러 컨설팅 기법',NULL),(_binary '\0',_binary '\0','2025-02-18 01:13:15.634837','2025-03-06 10:11:00.000000',35,8,'2025-02-18 01:13:15.634837','- 개인 브랜드 이미지 구축을 위한 컬러 활용\r\n- 기업 브랜드 컬러 마케팅 사례 분석\r\n- 비즈니스 영역에서 컬러 전략 수립','퍼스널 컬러와 브랜드 컨설팅',NULL),(_binary '\0',_binary '\0','2025-02-18 01:13:15.639666','2025-03-07 10:11:00.000000',36,8,'2025-02-18 01:13:15.639666','- 실제 고객을 대상으로 한 실습 진행\r\n- 진단 후 고객별 컬러 분석 및 피드백 제공\r\n- 컨설팅 리포트 작성 방법','퍼스널 컬러 컨설팅 실전',NULL),(_binary '\0',_binary '\0','2025-02-18 01:13:15.644173','2025-03-08 10:12:00.000000',37,8,'2025-02-18 01:13:15.644173','- 퍼스널 컬러 컨설턴트 자격증 대비 과정\r\n- 포트폴리오 제작 및 컨설팅 실전 대비\r\n- 창업 및 프리랜서 컨설턴트로서 활동하는 방법','퍼스널 컬러 컨설턴트 자격 과정',NULL),(_binary '\0',_binary '\0','2025-02-18 01:13:33.334570','2025-02-19 10:16:00.000000',38,9,'2025-02-18 01:13:33.334570','- 강사 소개\r\n- 커리큘럼 소개','01. 오리엔테이션',NULL),(_binary '\0',_binary '\0','2025-02-18 01:13:33.340295','2025-02-24 22:12:00.000000',39,9,'2025-02-18 01:13:33.340295','- 흑백 일러스트의 특징\r\n- 컬러 일러스트와 흑백 일러스트의 선화 차이\r\n- 흑백 일러스트가 매력적인 이유','02. 흑백 일러스트의 특징은 무엇일까?',NULL),(_binary '\0',_binary '\0','2025-02-18 01:13:33.346832','2025-02-19 03:12:00.000000',40,9,'2025-02-18 01:13:33.346832','- 디지털에서의 먹칠 표현을 위한 브러쉬 운용법\r\n- 먹칠의 스타일 변화 (거리 차/ 채색 방식)\r\n- 자신의 데포르메에 맞는 먹칠 스타일을 찾아보기\r\n- 벡터 레이어, 퍼스자, 특수자 사용법 설명 및 적용','03. 이것만 알고 넘어가자! : 흑백 일러스트 기초 지식',NULL),(_binary '\0',_binary '\0','2025-02-18 01:13:33.352182','2025-02-28 14:13:00.000000',41,9,'2025-02-18 01:13:33.352182','- 모작을 통해 흑백으로 바꿔보기\r\n- 모작 별 다양한 공부법 (사진, 일러스트, 만화) 모작','04. [실습] 사진을 보고 흑백으로 바꿔 그려보자',NULL),(_binary '\0',_binary '\0','2025-02-18 01:23:25.745490','2025-03-01 10:23:00.000000',43,11,'2025-02-18 01:23:25.745490','색감 조정으로 웹툰 분위기 살리기\r\n명암과 대비 조정으로 입체감 강화\r\n빛과 그림자로 감성적인 연출하기','채색 보정 & 명암 다듬기',NULL),(_binary '\0',_binary '\0','2025-02-18 01:23:25.755611','2025-02-25 22:21:00.000000',44,11,'2025-02-18 01:23:25.755611','지저분한 선 다듬기 & 균형 잡기\r\n두께 조절로 캐릭터와 배경 구분하는 법\r\n자연스러운 펜터치 마무리 기법','선 정리 & 깔끔한 마무리',NULL),(_binary '\0',_binary '\0','2025-02-18 01:23:25.761247','2025-03-04 22:25:00.000000',45,11,'2025-02-18 01:23:25.761247','속도감 & 임팩트를 살리는 효과선 활용\r\n다양한 브러시로 질감과 분위기 연출\r\n배경과 캐릭터의 조화를 위한 보정 팁','효과와 디테일 추가',NULL),(_binary '\0',_binary '\0','2025-02-18 01:23:25.766377','2025-02-27 22:25:00.000000',46,11,'2025-02-18 01:23:25.766377','해상도 설정 & 용량 줄이기\r\n플랫폼별 최적화된 저장 방식\r\n깔끔한 컷 구성으로 가독성 높이기','파일 최적화 & 웹툰 업로드 준비',NULL),(_binary '\0',_binary '\0','2025-02-18 01:28:06.128502','2025-03-12 12:27:00.000000',47,12,'2025-02-18 01:28:06.128502','얼굴과 몸의 기본 비율 익히기\r\n자연스러운 포즈 잡기\r\n선의 흐름과 균형을 활용한 스케치 연습',' 캐릭터 스케치의 기초',NULL),(_binary '\0',_binary '\0','2025-02-18 01:28:06.135393','2025-04-02 10:30:00.000000',48,12,'2025-02-18 01:28:06.135393','다양한 옷 주름과 실루엣 분석\r\n재질에 따른 선 표현법 (니트, 데님, 셔츠 등)\r\n감각적인 코디와 스타일링 연구',' 패션 스타일 표현하기',NULL),(_binary '\0',_binary '\0','2025-02-18 01:39:37.097512','2025-02-21 01:42:00.000000',49,13,'2025-02-18 01:39:37.097512','연필을 활용하여 간단한 풍경 스케치를 연습합니다.','기본 스케치 연습',NULL),(_binary '\0',_binary '','2025-02-18 02:49:29.239134','2025-02-06 11:50:00.000000',52,15,'2025-02-18 02:51:15.719727','test','test','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/f81deb18-74a3-4bbf-b491-45576b8e6552_whiteboard.png'),(_binary '\0',_binary '','2025-02-18 02:49:29.249839','2025-02-20 11:51:00.000000',53,15,'2025-02-18 02:58:57.375450','test2','test2','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/d94f8eec-ce61-4dee-a61e-995e9655b0ec_whiteboard.png'),(_binary '\0',_binary '','2025-02-18 02:49:29.255725','2025-02-13 14:49:00.000000',54,15,'2025-02-18 03:35:38.247781','test3','test3','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/7b8caec9-2bc9-406f-a2e9-dfc574877951_whiteboard.png'),(_binary '\0',_binary '','2025-02-18 02:53:27.075157','2025-02-21 00:00:00.000000',55,10,'2025-02-18 03:03:31.463452','인기 있는 이모티콘의 특징과 플랫폼별 트렌드를 분석하고, 성공적인 이모티콘의 사례를 살펴봅니다.','이모티콘 시장과 트렌드 이해하기','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/d3d2b11f-9c76-40e5-ac95-ff60efdeb60c_whiteboard.png'),(_binary '\0',_binary '','2025-02-18 02:53:27.086393','2025-02-22 00:00:00.000000',56,10,'2025-02-20 10:04:51.958852','나만의 캐릭터를 설정하고, 감정을 표현하는 다양한 포즈와 콘셉트를 기획하는 방법을 배웁니다.','내 개성을 담은 이모티콘 기획하기','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/61e2fb3c-c47b-4beb-8e9e-652c4b7fcd75_whiteboard.png'),(_binary '\0',_binary '\0','2025-02-18 02:53:27.092337','2025-02-23 00:00:00.000000',57,10,'2025-02-18 02:53:27.092337','아이패드와 프로크리에이트를 활용해 손쉽게 스케치를 진행하는 기본 툴과 테크닉을 익힙니다.','프로크리에이트로 이모티콘 스케치하기',NULL),(_binary '\0',_binary '\0','2025-02-18 02:53:27.100536','2025-02-24 00:00:00.000000',58,10,'2025-02-18 02:53:27.100536','선을 깔끔하게 다듬고, 색 조합과 명암을 활용해 이모티콘을 더욱 생동감 있게 만드는 방법을 배웁니다.','선 정리와 컬러링으로 완성도 높이기',NULL),(_binary '\0',_binary '\0','2025-02-18 02:53:27.108340','2025-02-26 00:00:00.000000',59,10,'2025-02-18 02:53:27.108340','이모티콘에 감정을 담아 생동감 있는 애니메이션을 제작하고, GIF 및 APNG 포맷으로 저장하는 방법을 익힙니다.','움직이는 이모티콘 만들기 (GIF, APNG)',NULL),(_binary '\0',_binary '\0','2025-02-18 02:53:27.113853','2025-02-27 00:00:00.000000',60,10,'2025-02-18 02:53:27.113853','플랫폼별 등록 기준을 확인하고, 빠르게 승인받을 수 있는 패키지 구성과 심사 전략을 공유합니다.','이모티콘 패키지 구성과 심사 통과 꿀팁',NULL),(_binary '\0',_binary '\0','2025-02-20 09:57:06.518515','2025-02-21 18:00:00.000000',61,16,'2025-02-20 09:57:06.518515','- 디지털 드로잉을 위한 기본 도구 소개 (태블릿, 앱 추천)\r\n- 편안한 작업 환경 만들기\r\n- 브러시 & 컬러 팔레트 설정하기','1️⃣ 디지털 드로잉, 준비부터 시작하기',NULL),(_binary '\0',_binary '\0','2025-02-20 09:57:06.530520','2025-02-22 18:00:00.000000',62,16,'2025-02-20 09:57:06.530520','- 내 주변에서 그림 소재 찾는 법\r\n- 따뜻한 색감 조합 & 감성적인 톤 연출\r\n- 단순한 선과 형태로 분위기 있는 그림 완성하기','2️⃣ 감성적인 일상 드로잉 기법 익히기',NULL),(_binary '\0',_binary '\0','2025-02-20 09:57:06.536281','2025-02-23 18:00:00.000000',63,16,'2025-02-20 09:57:06.536281','- 일상을 자연스럽게 구성하는 구도 잡기\r\n- 그림에 이야기 담는 방법\r\n- 디테일을 살리는 작은 포인트','3️⃣ 구도와 스토리텔링으로 그림에 생명 불어넣기',NULL),(_binary '\0',_binary '\0','2025-02-20 09:57:06.542195','2025-02-24 18:00:00.000000',64,16,'2025-02-20 09:57:06.542195','다양한 그림 스타일 분석 & 참고하기\r\n나에게 맞는 드로잉 스타일 찾아보기\r\n꾸준히 그림을 그리고 발전시키는 습관 만들기','4️⃣ 나만의 스타일 찾기 & 개성 있는 그림 그리기',NULL),(_binary '\0',_binary '\0','2025-02-20 09:57:06.547791','2025-02-26 18:00:00.000000',65,16,'2025-02-20 09:57:06.547791','- SNS에 그림을 업로드하는 팁 (해시태그, 피드 구성)\r\n- 나만의 굿즈 제작 & 온라인 스토어 운영 노하우\r\n- 포트폴리오 만들기 & 협업 기회 얻기','5️⃣ SNS & 굿즈 활용! 내 그림을 더 널리 알리기',NULL),(_binary '\0',_binary '\0','2025-02-20 10:00:11.145430','2025-02-21 23:57:00.000000',66,17,'2025-02-20 10:00:11.145430','- 보조선과 결정선\r\n- 양끝을 흐리게 표현하는 선\r\n- 선 그리는 방법\r\n- 연습하기 : 긴 선, 중간 선, 짧은 선, 원','01. [실습] 선 연습',NULL),(_binary '\0',_binary '\0','2025-02-20 10:00:11.157182','2025-02-25 23:58:00.000000',67,17,'2025-02-20 10:00:11.157182','- 선 그리는 방법\r\n- 연습하기 : 긴 선, 중간 선, 짧은 선, 원','02. [실습] 인체의 구조와 정면',NULL),(_binary '\0',_binary '\0','2025-02-20 10:00:11.172298','2025-02-21 23:58:00.000000',68,17,'2025-02-20 10:00:11.172298','- 보조선과 결정선\r\n- 양끝을 흐리게 표현하는 선','03. [실습] 반측면',NULL),(_binary '\0',_binary '\0','2025-02-20 10:00:11.177587','2025-02-25 18:58:00.000000',69,17,'2025-02-20 10:00:11.177587','- 움직이는 자세 : 허리에 손을 얹은 포즈 그리기','04. [실습] 측면',NULL),(_binary '\0',_binary '\0','2025-02-20 10:03:36.659553','2025-02-20 20:59:00.000000',70,18,'2025-02-20 10:03:36.659553','이모티콘의 역사와 트렌드\r\n성공적인 이모티콘의 특징\r\n이모티콘 기획 및 콘셉트 설정\r\n감정을 효과적으로 전달하는 법\r\n스토리텔링이 담긴 이모티콘 기획','1. 이모티콘의 이해와 기획',NULL),(_binary '\0',_binary '\0','2025-02-20 10:03:36.664342','2025-02-21 21:00:00.000000',71,18,'2025-02-20 10:03:36.664342','나만의 개성 있는 캐릭터 만들기\r\n다양한 감정 표현 기법\r\n동물, 사람, 사물 이모티콘 스타일링\r\n컬러 팔레트와 감성 조화\r\n캐릭터와 배경 요소의 조화','2. 캐릭터 디자인과 스타일 정하기',NULL),(_binary '\0',_binary '\0','2025-02-20 10:03:36.669039','2025-02-22 20:00:00.000000',72,18,'2025-02-20 10:03:36.669039','디지털 드로잉 기초 (Procreate, Photoshop, Clip Studio)\r\n이모티콘 선화 & 색칠 노하우\r\n애니메이션 이모티콘 만들기\r\n해상도와 파일 형식 가이드\r\n간단한 모션 효과 추가하기','3. 이모티콘 드로잉과 제작 기법',NULL),(_binary '\0',_binary '\0','2025-02-20 10:03:36.674036','2025-02-23 20:00:00.000000',73,18,'2025-02-20 10:03:36.674036','카카오톡, 라인, 네이버 OGQ 마켓 분석\r\n이모티콘 심사 기준과 등록 방법\r\n효과적인 마케팅과 홍보 전략\r\n수익 모델과 가격 책정 방법\r\n브랜드화를 위한 팁','4. 플랫폼별 등록과 판매 전략',NULL),(_binary '\0',_binary '\0','2025-02-20 10:03:36.679450','2025-02-24 19:03:00.000000',74,18,'2025-02-20 10:03:36.679450','개인 이모티콘 프로젝트 기획\r\n피드백을 반영한 수정 과정\r\n이모티콘 패키지 구성하기\r\n최종 등록 및 출시하기\r\n론칭 후 관리와 피드백 반영','5. 실전 프로젝트: 나만의 이모티콘 제작',NULL),(_binary '\0',_binary '','2025-02-16 10:05:57.761761','2025-02-19 19:07:00.000000',75,19,'2025-02-20 10:18:51.300886','- 쥐냥 작가 이야기\r\n- 4년 동안 143개의 승인을 받은 비결\r\n- 클래스 소개','01. 이모티콘 작가 소개','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/f37773a8-19c8-40b1-b2bc-847e797a5689_whiteboard.png'),(_binary '\0',_binary '\0','2025-02-20 10:05:57.767415','2025-02-27 22:03:00.000000',76,19,'2025-02-20 10:05:57.767415','- 이모티콘 작가로서 \'나\'를 파악해 보자\r\n- 쥐냥 작가의 강점 및 약점','02. 나는 어떤 이모티콘 작가가 될 수 있을까?',NULL),(_binary '\0',_binary '\0','2025-02-20 10:05:57.773302','2025-02-21 19:08:00.000000',77,19,'2025-02-20 10:05:57.773302','- 이모티콘 작가에 대한 궁금증을 풀어보자\r\n- 카카오 이모티콘 제작 타임라인','03. 이모티콘 작가에 대한 궁금증 zip',NULL),(_binary '\0',_binary '\0','2025-02-20 10:05:57.779917','2025-03-04 19:15:00.000000',78,19,'2025-02-20 10:05:57.779917','- 이모티콘 시장 이야기\r\n- 플랫폼에 따라 다른 기획 방향\r\n- 모든 플랫폼에 자유롭게 제안해도 될까?\r\n- 승인받은 캐릭터를 다른 곳에 사용해도 될까?','04. 이모티콘 시장 들여다보기',NULL),(_binary '\0',_binary '\0','2025-02-20 10:05:57.785601','2025-03-08 13:05:00.000000',79,19,'2025-02-20 10:05:57.785601','- 이모티콘 제작 프로그램과 장비 안내\r\n- 클립스튜디오 소개 및 장점\r\n- 쥐냥 작가의 프로그램과 장비','05. 이모티콘 제작 준비물',NULL),(_binary '\0',_binary '\0','2025-02-20 10:10:07.793942','2025-02-20 20:07:00.000000',80,20,'2025-02-20 10:10:07.793942','웹툰의 역사와 트렌드 분석\r\n성공적인 웹툰의 필수 요소\r\n웹툰 기획 및 콘셉트 설정\r\n캐릭터와 세계관 구축\r\n스토리텔링과 연출 기법','1. 웹툰의 이해와 기획',NULL),(_binary '\0',_binary '\0','2025-02-20 10:10:07.799702','2025-02-21 20:07:00.000000',81,20,'2025-02-20 10:10:07.799702','개성 있는 캐릭터 디자인 기초\r\n감정을 효과적으로 표현하는 법\r\n주인공, 서브 캐릭터, 배경 조화\r\n컬러와 분위기 연출법\r\n웹툰 스타일(극화, 만화체, SD 등) 설정','2. 캐릭터 디자인과 스타일 정하기',NULL),(_binary '\0',_binary '\0','2025-02-20 10:10:07.805875','2025-02-22 20:08:00.000000',82,20,'2025-02-20 10:10:07.805875','디지털 드로잉 기초 (Clip Studio, Photoshop, Procreate)\r\n웹툰 선화 & 컬러링 테크닉\r\n컷 연출과 다이나믹한 화면 구성\r\n배경과 공간감 표현 방법\r\n말풍선, 효과음, 대사 배치 노하우','3. 웹툰 드로잉과 제작 기법',NULL),(_binary '\0',_binary '\0','2025-02-20 10:10:07.810779','2025-02-23 21:08:00.000000',83,20,'2025-02-20 10:10:07.810779','네이버 웹툰, 카카오페이지, 레진코믹스 등 주요 플랫폼 분석\r\n웹툰 연재 방식과 업로드 기준\r\n구독자 확보 및 팬층 형성 전략\r\n수익 모델과 후원 시스템 활용\r\n브랜딩과 SNS 홍보 전략','4. 플랫폼별 등록과 수익화 전략',NULL),(_binary '\0',_binary '\0','2025-02-20 10:10:07.815692','2025-02-25 20:09:00.000000',84,20,'2025-02-20 10:10:07.815692','개인 웹툰 기획서 작성\r\n캐릭터 및 1화 제작 피드백 과정\r\n컷 구성 및 완성도 높은 원고 제작\r\n웹툰 플랫폼 심사 및 업로드 준비\r\n연재 후 독자 피드백 반영 및 개선','5. 실전 프로젝트: 나만의 웹툰 제작',NULL),(_binary '\0',_binary '\0','2025-02-20 10:10:36.157994','2025-03-06 22:08:00.000000',85,21,'2025-02-20 10:10:36.157994','Chapter 1. 소콘소콘의 이모티콘 작가 이야기','Part 0. 이모티콘 이해하기',NULL),(_binary '\0',_binary '\0','2025-02-20 10:10:36.162435','2025-03-05 12:08:00.000000',86,21,'2025-02-20 10:10:36.162435','Chapter 1. 제작 기기와 프로그램 선택하기\r\nChapter 2. 이모티콘 제안 플랫폼 알아보기\r\nChapter 3. 어떤 이모티콘을 만들어야 할까?\r\nChapter 4. 이모티콘 시장 함께 살펴보기','Part 1. 이모티콘 준비하기',NULL),(_binary '\0',_binary '\0','2025-02-20 10:10:36.167088','2025-02-27 13:09:00.000000',87,21,'2025-02-20 10:10:36.167088','Chapter 1. 컨셉 한 줄 정리하기\r\nChapter 2. 컨셉 확장하기\r\nChapter 3. 이모티콘 프로필 작성하기','Part 2. 승인되는 이모티콘 기획하기',NULL),(_binary '\0',_binary '\0','2025-02-20 10:10:36.171975','2025-03-05 12:09:00.000000',88,21,'2025-02-20 10:10:36.171975','Chapter 1. 컨셉에 맞는 캐릭터 소재 정하기\r\nChapter 2. 캐릭터 비율 정하기\r\nChapter 3. 성격이 보이는 캐릭터 만들기\r\nChapter 4. 캐릭터 가이드 만들기','Part 3. 승인되는 캐릭터 디자인하기',NULL),(_binary '\0',_binary '','2025-02-20 10:49:51.380256','2025-02-17 21:49:00.000000',94,23,'2025-02-20 10:50:17.669829','ㅂㅈㄷ','ㅂㅈㄷ','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/28c32b35-68ce-4ccb-9048-e9dfd431aa24_whiteboard.png'),(_binary '\0',_binary '','2025-02-20 10:53:20.586878','2025-02-11 21:53:00.000000',95,23,'2025-02-20 10:53:43.333811','asd','asd','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/a1d21b04-b7c2-4381-88c7-1cc4179a5358_whiteboard.png'),(_binary '\0',_binary '\0','2025-02-20 11:00:00.851578','2025-02-21 19:00:00.000000',96,24,'2025-02-20 11:00:00.851578','- 남성들이 선호하는 이모티콘 스타일 & 특징\r\n- 유머형 vs. 감성형 vs. 캐릭터형 비교 분석\r\n- 인기 이모티콘 사례 살펴보기','1️⃣ 남성 타겟 이모티콘, 어떤 게 인기일까?',NULL),(_binary '\0',_binary '\0','2025-02-20 11:00:00.856366','2025-02-22 19:00:00.000000',97,24,'2025-02-20 11:00:00.856366','- 단순하지만 임팩트 있는 캐릭터 디자인\r\n- 강한 인상을 주는 표정 & 포즈 연출\r\n- 남성들에게 인기 있는 콘셉트 정하기 (예: 센스 있는 드립, 카리스마 있는 스타일 등)','2️⃣ 개성 있는 캐릭터 디자인 & 콘셉트 잡기',NULL),(_binary '\0',_binary '\0','2025-02-20 11:00:00.861594','2025-02-23 19:00:00.000000',98,24,'2025-02-20 11:00:00.861594','- 남성 타겟에게 어울리는 색 조합\r\n- 단순하면서도 스타일리시한 라인 & 쉐이딩 기법\r\n- 이모티콘에 개성을 더하는 디테일 팁','3️⃣ 감각적인 색감 & 스타일링으로 완성도 높이기',NULL),(_binary '\0',_binary '\0','2025-02-20 11:00:00.867094','2025-02-24 19:00:00.000000',99,24,'2025-02-20 11:00:00.867094','- 움직이는 이모티콘 vs. 정적인 이모티콘 차이점\r\n- 최소한의 움직임으로 최대한의 재미 주는 법\r\n- 효과적으로 활용할 수 있는 애니메이션 기법','4️⃣ 움직이면 더 찰떡! 애니메이션 기법 배우기',NULL),(_binary '\0',_binary '\0','2025-02-20 11:00:00.872150','2025-02-25 19:00:00.000000',100,24,'2025-02-20 11:00:00.872150','- 카카오, 네이버, 라인 등 각 플랫폼별 등록 가이드\r\n- 승인 잘 되는 팁 & 자주 하는 실수 피하기\r\n- 출시 후 마케팅 & 수익화 전략','5️⃣ 등록부터 판매까지! 이모티콘 수익화 A to Z',NULL),(_binary '\0',_binary '','2025-02-20 11:19:56.466794','2024-05-02 23:19:00.000000',101,25,'2025-02-20 11:20:33.812700','프롤로그 - 낙서 하나로 시작된 인생의 터닝 포인트','프롤로그 - 낙서 하나로 시작된 인생의 터닝 포인트','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/7e1d7a56-82b2-49b6-8d7e-3af354ec56be_whiteboard.png'),(_binary '\0',_binary '','2025-02-20 11:19:56.471572','2024-05-08 23:16:00.000000',102,25,'2025-02-20 11:22:12.443920','0-1 \'잘 팔리는\' 이모티콘 작가가 되어야 하는 이유 - 13p\r\n0-2 이모티콘, 10배 더 잘 팔리게 만드는 비법 - 16p\r\n0-3 이모티콘 작가가 되기 위한 준비물 - 27p','이모티콘 전자책을 소개합니다','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/345c3843-1cd0-4cce-bc2c-a35c3f209ff6_whiteboard.png'),(_binary '\0',_binary '','2025-02-20 11:19:56.476253','2024-06-19 23:20:00.000000',103,25,'2025-02-20 11:22:37.912786','1-1 프로 작가가 해석하는 카카오톡 이모티콘 시장 - 39p\r\n1-2 2024년 이모티콘 시장에서 살아남는 전략 - 57p\r\n1-3 잘 팔리는 이모티콘 기획 공식 - 71p\r\n1-4 내 캐릭터, 귀여움에 반응이 없었던 진짜 이유 - 75p\r\n1-5 프로 작가의 수익화로 이어지는 이모티콘 제작루틴 - 100p\r\n1-6 인기 이모티콘이 되는 차별화 전략 - 123p\r\n1-7 왕초보가 가장 쉽게 시작하는 방법 - 129p\r\n1-8 승인과 미승인을 가르는 한 끗 차이 - 142p\r\n1-9 이모티콘, 전업 작가로 먹고 살 수 있을까? - 151p','수익화로 이어지는 이모티콘 작가 코어 기르기','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/c319e9d9-e4f0-4804-9c8e-2188de7de650_whiteboard.png'),(_binary '\0',_binary '','2025-02-20 11:19:56.481107','2024-07-30 20:18:00.000000',104,25,'2025-02-20 11:23:18.896777','2-1 낙서로 만드는 이모티콘 캐릭터 - 159p\r\n2-2 도형화를 통한 쉬운 캐릭터 디자인 - 164p\r\n2-3 수익나는 캐릭터 디자인의 특징 - 178p\r\n2-4 PC: 포토샵을 활용한 캐릭터 드로잉 (VOD) - 189p\r\n2-5 PC: 클립스튜디오를 활용한 캐릭터 드로잉 (VOD) - 192p\r\n2-6 아이패드: 프로크리에이트를 활용한 캐릭터 드로잉 (VOD)- 195p\r\n2-7 매출로 이어지는 캐릭터 디자인 실력 기르기 - 198p\r\n2-8 캐릭터, 예쁘기만 하면 사람들이 좋아할까? - 219p\r\n2-9 실전에서 써먹는 캐릭터 디테일 노하우 - 233p\r\n2-10 찐팬을 만드는 캐릭터 스토리 - 257p','상품성 있는 캐릭터 디자인하기','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/ce56f53f-d597-4359-a7a6-af3b020f56be_whiteboard.png'),(_binary '\0',_binary '','2025-02-20 11:19:56.486259','2024-08-28 12:17:00.000000',105,25,'2025-02-20 11:23:54.154788','3-1 센스없이도 \'팔리는\' 아이디어 찾는 법 - 276p\r\n3-2 팬을 만드는 더 맛있는 아이디어 만들기 - 300p\r\n3-3 구매를 결정하게 하는 아이디어의 특징 - 315p\r\n3-4 아이디어 막힐 때, 답답한 속을 뚫어줄 방법 - 318p\r\n3-5 반응도 2배 높여주는 이모티콘 세트 구성하기 - 333p',' 잘 팔리는 이모티콘 아이디어 만들기','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/844f65ee-b025-4fb2-87fd-241f34bf2385_whiteboard.png'),(_binary '\0',_binary '','2025-02-20 11:19:56.491902','2024-09-25 23:17:00.000000',106,25,'2025-02-20 11:24:23.362824','4-1 낙서를 디자인으로 만드는 매력적인 디자인 방법 - 348p\r\n4-2 이모티콘에 어울리는 브러시 만들기 - 363p\r\n4-3 잘 팔리는 이모티콘을 위한 셀프점검 - 370p\r\n4-4 내 캐릭터에 찰떡인 폰트 사용법 - 381p','완성도를 끌어올리는 이모티콘 디자인','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/bf6d9a1b-fed9-4ac0-9dea-4b84a6cb2185_whiteboard.png'),(_binary '\0',_binary '','2025-02-20 11:19:56.496920','2024-10-16 08:22:00.000000',107,25,'2025-02-20 11:25:06.343327','5-1 초급자를 위한 포토샵 애니메이션 (VOD) - 396p\r\n5-2 초급자를 위한 프로크리에이트 애니메이션 (VOD) - 400p\r\n5-3 초급자를 위한 클립스튜디오 애니메이션 (VOD) - 404p\r\n5-4 경쟁자와 차별화된 매력적인 애니메이션을 만드는 전략 - 409p','잘 팔리는 이모티콘을 위한 애니메이션 기초','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/10cbce55-32b3-4490-83df-eaa801c0bd92_whiteboard.png'),(_binary '\0',_binary '','2025-02-20 11:19:56.501882','2024-10-18 23:18:00.000000',108,25,'2025-02-20 11:25:18.593637','6-1 작업시간을 줄여주는 효율적인 애니메이션 노하우 - 425p\r\n6-2 포토샵으로 뛰기 애니메이션을 해보자 (VOD) - 435p\r\n6-3 클립스튜디오로 춤추는 애니메이션을 해보자 (VOD) - 437p\r\n6-4 프로크리에이트로 포옹 애니메이션을 해보자 (VOD) - 439p\r\n6-5 맛있는 글씨 / 이펙트 애니메이션을 만드는 방법 - 441p','결제율을 높이는 만족도 높은 애니메이션','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/a8959d92-c6b8-4214-9395-8c1b0e5e88c0_whiteboard.png'),(_binary '\0',_binary '\0','2025-02-20 11:19:56.506554','2024-11-22 16:18:00.000000',109,25,'2025-02-20 11:19:56.506554','7-1 프로작가가 핵심만 집는 이모티콘 제안 프로세스 - 444p\r\n7-2 실전에서 통하는 이모티콘 승인 이후의 달라진 삶 - 451p\r\n7-3 미승인 주의! 실패를 줄여주는 프로작가의 대처법 - 467p\r\n7-4 미승인 이모티콘 승인으로 바꾼 노하우 - 480p\r\n7-5 시장에서 살아남는 이모티콘 출시 이후 생존전략 - 487p','승인을 높이는 이모티콘 제안하기',NULL),(_binary '\0',_binary '','2025-02-20 11:19:56.511965','2024-12-31 20:22:00.000000',110,25,'2025-02-20 11:25:33.182081','8-1 이모티콘 작가에서 캐릭터 브랜드 운영으로 - 497p\r\n8-2 캐릭터 인스타그램 세팅하기 - 508p\r\n8-3 팬덤을 만드는 캐릭터 콘텐츠 - 523p\r\n8-4 기업이 좋아하는 캐릭터 콘텐츠 - 535p\r\n8-5 1만 팔로워를 만드는 캐릭터 콘텐츠 - 541p\r\n8-6 계정 성장에 맞는 행동 전략 세우기 - 546p\r\n8-7 쿨한 캐릭터 계정 운영법 - 554p\r\n8-8 돈보다가 고수로 성장하는 돈뜯법 달인 - 562p\r\n8-9 기업이 끌리는 작가되기, 외부협업에 대한 방법 - 574p\r\n8-10 이모티콘 하나로 만족못해! 수익 다각화 전략 - 590p','이모티콘의 다음스텝, 수익 극대화 전략','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/ab197676-8e2f-49fa-b532-8a98002d2d34_whiteboard.png'),(_binary '\0',_binary '','2025-02-20 11:19:56.517169','2024-12-18 12:19:00.000000',111,25,'2025-02-20 11:25:45.250416','돈버는 창작자의 길을 함께해요 - 597p','Outro','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/f7e2bdac-9282-4bd7-b651-f18c2709ad3f_whiteboard.png'),(_binary '\0',_binary '','2025-02-20 11:27:55.569521','2024-10-23 20:29:00.000000',112,25,'2025-02-20 11:29:59.611998','test','test','https://grimtalk.s3.ap-northeast-2.amazonaws.com/images/eeebbe37-c9ad-4506-acc7-3f9213b47d4e_whiteboard.png');
/*!40000 ALTER TABLE `curriculum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite` (
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lecture_id` bigint DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2wdibqke00nh9abw1fbh4e2yl` (`lecture_id`),
  KEY `FKbjkpe2xr7dt3c4pcjhgmrwt2t` (`student_id`),
  CONSTRAINT `FK2wdibqke00nh9abw1fbh4e2yl` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`),
  CONSTRAINT `FKbjkpe2xr7dt3c4pcjhgmrwt2t` FOREIGN KEY (`student_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
INSERT INTO `favorite` VALUES ('2025-02-18 01:00:18.857845',1,1,8,'2025-02-18 01:00:18.857845'),('2025-02-18 01:13:33.743540',2,4,5,'2025-02-18 01:13:33.743540'),('2025-02-18 01:13:40.877938',3,1,5,'2025-02-18 01:13:40.877938'),('2025-02-18 01:13:48.763945',4,2,5,'2025-02-18 01:13:48.763945'),('2025-02-18 01:14:09.558309',5,4,4,'2025-02-18 01:14:09.558309'),('2025-02-18 02:52:23.900193',6,15,10,'2025-02-18 02:52:23.900193'),('2025-02-18 03:01:34.566345',7,10,9,'2025-02-18 03:01:34.566345'),('2025-02-20 10:17:15.079138',8,19,11,'2025-02-20 10:17:15.079138'),('2025-02-20 10:20:07.057959',9,3,11,'2025-02-20 10:20:07.057959'),('2025-02-20 11:02:27.785109',10,6,17,'2025-02-20 11:02:27.785109'),('2025-02-20 11:11:03.577966',11,17,11,'2025-02-20 11:11:03.577966'),('2025-02-20 11:11:13.112183',12,21,11,'2025-02-20 11:11:13.112183'),('2025-02-20 11:25:02.463143',13,19,2,'2025-02-20 11:25:02.463143'),('2025-02-20 11:28:50.758954',14,25,11,'2025-02-20 11:28:50.758954');
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashtag`
--

DROP TABLE IF EXISTS `hashtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hashtag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lecture_id` bigint DEFAULT NULL,
  `tag` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK341fs2992nwpvw8jiw2w3ligl` (`lecture_id`),
  CONSTRAINT `FK341fs2992nwpvw8jiw2w3ligl` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtag`
--

LOCK TABLES `hashtag` WRITE;
/*!40000 ALTER TABLE `hashtag` DISABLE KEYS */;
INSERT INTO `hashtag` VALUES (2,1,'테스트'),(3,2,'태그1'),(4,2,'태그2'),(5,3,'스케치'),(6,3,'드로잉'),(7,3,'미니멀스케치'),(8,4,'퍼스널걸러'),(9,4,'초급'),(10,5,'드로잉'),(11,5,'사람'),(12,6,'퍼스널컬러'),(13,6,'중급'),(14,7,'인물'),(15,7,'일러스트'),(16,8,'퍼스널컬러'),(17,8,'고급'),(18,9,'그림'),(19,9,'흑백'),(21,11,'그림'),(22,11,'스토리'),(23,12,'캐릭터'),(24,12,'스케치'),(25,13,'풍경화'),(26,13,'그림'),(27,13,'화풍'),(30,15,'test'),(31,10,'나만의'),(32,10,'이모티콘'),(33,10,'무료강의'),(34,16,'디지털드로잉'),(35,16,'일상드로잉'),(36,16,'아이패드드로잉'),(37,16,'감성드로잉'),(38,16,'SNS그림연재'),(39,16,'굿즈제작'),(40,16,'컬러조합'),(41,16,'드로잉강의'),(42,16,'초보도OK'),(43,17,'드로잉'),(44,17,'그림'),(45,18,'이모티콘'),(46,18,'실전강의'),(47,18,'등록하기'),(50,20,'웹툰'),(51,20,'웹툰제작'),(52,20,'한국웹툰'),(53,20,'네이버웹툰'),(54,20,'카카오웹툰'),(55,21,'이모티콘'),(56,21,'귀여움'),(77,24,'수익화전략'),(78,24,'SNS마케팅'),(79,24,'남성타겟'),(80,24,'디지털드로잉'),(81,24,'굿즈제작'),(82,24,'센스있는드로잉'),(83,24,'쿨하고멋진'),(84,24,'유머이모티콘'),(85,24,'이모티콘제작'),(88,19,'캐릭터'),(89,19,'이모티콘'),(98,23,'캐릭터'),(99,23,'캐릭터디자인'),(105,25,'아이패드');
/*!40000 ALTER TABLE `hashtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_similarity`
--

DROP TABLE IF EXISTS `image_similarity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_similarity` (
  `color_similarity` int DEFAULT NULL,
  `line_thickness_similarity` int DEFAULT NULL,
  `percent` int DEFAULT NULL,
  `structure_similarity` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `curriculum_id` bigint DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `replay_id` bigint DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `color_comment` varchar(1000) DEFAULT NULL,
  `line_comment` varchar(1000) DEFAULT NULL,
  `overall_feedback` varchar(1000) DEFAULT NULL,
  `structure_comment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKmajxop5pbh8qg9wavm7bm76lj` (`curriculum_id`),
  UNIQUE KEY `UK3u602j8yb4p5ud6f89lih5i41` (`replay_id`),
  KEY `FKaqmx82jrnusk3e4f1v3ctr7rx` (`student_id`),
  CONSTRAINT `FKaqmx82jrnusk3e4f1v3ctr7rx` FOREIGN KEY (`student_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKe0v5lx93slfg9cohvqquj6f5o` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`),
  CONSTRAINT `FKka3vmsd86jfuqaoh30mesyklb` FOREIGN KEY (`replay_id`) REFERENCES `replay` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_similarity`
--

LOCK TABLES `image_similarity` WRITE;
/*!40000 ALTER TABLE `image_similarity` DISABLE KEYS */;
INSERT INTO `image_similarity` VALUES (76,29,NULL,30,'2025-02-18 00:59:49.585532',1,1,NULL,8,'2025-02-18 00:59:49.585532','색상이 꽤 유사하지만, 전반적인 밝기나 채도가 약간 다를 수 있어요. 색을 비교할 때 RGB 값이나 HSV 값을 활용해서 보다 정교한 색 조절을 연습해 보세요. 특히 빛과 그림자가 색상에 어떻게 영향을 주는지 연구하면 도움이 될 거예요.','원본과는 전혀 다른 선 표현입니다. 선의 흐름, 굵기, 개수를 전반적으로 다시 점검해보세요. 간단한 도형 위주로 형태를 잡은 뒤, 필요한 선만 추가하는 습관을 길러보시길 권장드립니다. 필압 조절과 선의 밀도를 한 번에 익히려 하기보다는 단계적으로 연습해 보세요.','1. 색상 선택에는 잘 주어진 대로 따르고 있어요. 다만, 그림의 구조와 선의 굵기에서 다소 차이를 보입니다.\n2. 구조와 선의 굵기는 그림의 전체적인 표현과 밀접한 관련이 있으니 이 부분에 좀 더 집중해 보세요.\n3. 그림은 표현의 하나로, 오차가 있을 수 있지만 꾸준히 시도하면서 사소한 부분까지 잘 살펴보는 연습을 하세요.','형태가 많이 달라졌어요. 전체적인 비율과 구성을 다시 점검하고, 선을 맞추는 연습이 필요합니다. 기본 도형을 이용해 구조를 잡아보는 연습을 해보세요.'),(76,93,NULL,62,'2025-02-20 10:19:23.972237',75,2,NULL,11,'2025-02-20 10:19:23.972237','색상이 꽤 유사하지만, 전반적인 밝기나 채도가 약간 다를 수 있어요. 색을 비교할 때 RGB 값이나 HSV 값을 활용해서 보다 정교한 색 조절을 연습해 보세요. 특히 빛과 그림자가 색상에 어떻게 영향을 주는지 연구하면 도움이 될 거예요.','선의 굵기와 개수가 모두 원본과 거의 완벽하게 일치합니다! 아주 섬세한 필압 조절과 선 배치 능력을 갖추셨네요. 이제 선을 좀 더 자연스럽게 이어주거나 흐름에 신경 쓰시면 더욱 완벽한 표현이 가능할 거예요!','색상 선택과 선의 굵기에서는 아주 훌륭한 성과를 보입니다. 하지만 작품의 전체적인 구조에서는 아직 개선이 필요해 보입니다. 특히 물체의 형태와 위치에 더욱 신경 써서 그려보면 도움이 될 것 같습니다.','구조적으로 차이가 있어요. 주요 윤곽선을 다시 확인하고, 기본 비율을 맞추는 연습이 필요합니다. 전체적인 형태의 조화를 맞추는 연습을 진행해 보세요!'),(65,28,NULL,7,'2025-02-20 11:03:50.218256',19,3,NULL,17,'2025-02-20 11:03:50.218256','색상 차이가 꽤 납니다. 비슷한 색을 사용하려 했지만, 색의 밝기나 채도가 원본과 다를 수 있습니다. 색상을 선택할 때, 색의 명도와 채도를 조절하는 연습을 해보면 좋겠습니다. 또한 색상 혼합을 통해 원하는 색을 만들어 보는 연습도 필요해요.','원본과는 전혀 다른 선 표현입니다. 선의 흐름, 굵기, 개수를 전반적으로 다시 점검해보세요. 간단한 도형 위주로 형태를 잡은 뒤, 필요한 선만 추가하는 습관을 길러보시길 권장드립니다. 필압 조절과 선의 밀도를 한 번에 익히려 하기보다는 단계적으로 연습해 보세요.','\"색상은 상당히 잘 잡았어요, 계속해서 색감에 대한 감각을 키우시는 것이 중요합니다. 하지만, 선의 굵기와 구조는 크게 동떨어져 보입니다. 세밀하게 선을 다루는 연습을 하고, 그림의 전체적인 구조를 파악하는 데에 집중해보세요.\"','구조가 완전히 다릅니다. 기본 형태부터 다시 연습해 보세요! 비율과 형태를 잡는 연습을 반복하면서 기본적인 틀을 확립하는 것이 중요합니다.'),(81,29,NULL,15,'2025-02-20 11:27:42.402971',101,4,NULL,11,'2025-02-20 11:27:42.402971','색상이 대부분 비슷하지만, 미묘한 차이가 있어요. 전반적인 색조는 잘 맞췄지만, 일부 영역에서 톤이나 채도가 약간 다릅니다. 색을 더 정확하게 맞추기 위해, 색상 추출 도구를 활용하여 원본과 비교하거나, 색 혼합 연습을 해보는 것도 좋습니다!','원본과는 전혀 다른 선 표현입니다. 선의 흐름, 굵기, 개수를 전반적으로 다시 점검해보세요. 간단한 도형 위주로 형태를 잡은 뒤, 필요한 선만 추가하는 습관을 길러보시길 권장드립니다. 필압 조절과 선의 밀도를 한 번에 익히려 하기보다는 단계적으로 연습해 보세요.','\"색상 선택에 있어서는 잘하고 있어요, 하지만 선의 굵기와 그림 구조에 더 집중해야 해요. 선은 각각의 부분에 따라 굵기를 다르게 해보세요. 그리고 전체적인그림 구조를 먼저 파악하고, 그에 맞춰 세부적으로 그려 가는 연습을 해보세요. 계속 노력하면 더 멋진 그림 그릴 수 있을 거에요!\"','구조가 완전히 다릅니다. 기본 형태부터 다시 연습해 보세요! 비율과 형태를 잡는 연습을 반복하면서 기본적인 틀을 확립하는 것이 중요합니다.'),(81,29,NULL,23,'2025-02-20 11:28:12.678890',102,5,NULL,11,'2025-02-20 11:28:12.678890','색상이 대부분 비슷하지만, 미묘한 차이가 있어요. 전반적인 색조는 잘 맞췄지만, 일부 영역에서 톤이나 채도가 약간 다릅니다. 색을 더 정확하게 맞추기 위해, 색상 추출 도구를 활용하여 원본과 비교하거나, 색 혼합 연습을 해보는 것도 좋습니다!','원본과는 전혀 다른 선 표현입니다. 선의 흐름, 굵기, 개수를 전반적으로 다시 점검해보세요. 간단한 도형 위주로 형태를 잡은 뒤, 필요한 선만 추가하는 습관을 길러보시길 권장드립니다. 필압 조절과 선의 밀도를 한 번에 익히려 하기보다는 단계적으로 연습해 보세요.','색상 적용에 있어 기능을 잘 활용하셨네요, 이 부분은 계속 유지해주세요. 한편, 그림의 선 굵기와 구조에 대한 이해가 조금 더 필요해 보입니다. 다양한 선의 굵기를 활용해 표현력을 높여보시고, 기본적인 형태와 구조를 이해하며 연습해보세요.','구조가 완전히 다릅니다. 기본 형태부터 다시 연습해 보세요! 비율과 형태를 잡는 연습을 반복하면서 기본적인 틀을 확립하는 것이 중요합니다.'),(83,29,NULL,8,'2025-02-20 11:28:41.602669',103,6,NULL,11,'2025-02-20 11:28:41.602669','색상이 대부분 비슷하지만, 미묘한 차이가 있어요. 전반적인 색조는 잘 맞췄지만, 일부 영역에서 톤이나 채도가 약간 다릅니다. 색을 더 정확하게 맞추기 위해, 색상 추출 도구를 활용하여 원본과 비교하거나, 색 혼합 연습을 해보는 것도 좋습니다!','원본과는 전혀 다른 선 표현입니다. 선의 흐름, 굵기, 개수를 전반적으로 다시 점검해보세요. 간단한 도형 위주로 형태를 잡은 뒤, 필요한 선만 추가하는 습관을 길러보시길 권장드립니다. 필압 조절과 선의 밀도를 한 번에 익히려 하기보다는 단계적으로 연습해 보세요.','\"색상표현은 잘 하고 있는 걸 보니 능력이 있으신 것 같아요. 하지만 그림의 전체적인 구조와 선의 굵기에 대한 이해가 조금 부족해 보여요. 그림의 구조를 잘 이해하시고, 더 다양한 선을 사용해서 표현력을 높여보세요.\"','구조가 완전히 다릅니다. 기본 형태부터 다시 연습해 보세요! 비율과 형태를 잡는 연습을 반복하면서 기본적인 틀을 확립하는 것이 중요합니다.'),(80,29,NULL,7,'2025-02-20 11:29:13.981108',104,7,NULL,11,'2025-02-20 11:29:13.981108','색상이 대부분 비슷하지만, 미묘한 차이가 있어요. 전반적인 색조는 잘 맞췄지만, 일부 영역에서 톤이나 채도가 약간 다릅니다. 색을 더 정확하게 맞추기 위해, 색상 추출 도구를 활용하여 원본과 비교하거나, 색 혼합 연습을 해보는 것도 좋습니다!','원본과는 전혀 다른 선 표현입니다. 선의 흐름, 굵기, 개수를 전반적으로 다시 점검해보세요. 간단한 도형 위주로 형태를 잡은 뒤, 필요한 선만 추가하는 습관을 길러보시길 권장드립니다. 필압 조절과 선의 밀도를 한 번에 익히려 하기보다는 단계적으로 연습해 보세요.','\"색상 선택은 훌륭하게 잘 하셨습니다. 그러나 선 굵기와 구조에 대해서는 더 신경써주시면 좋을 것 같아요. 선의 굵기와 그림의 구조를 더욱 자세히 연습하다보면 훨씬 더 훌륭한 작품을 그리실 수 있을 거예요.\"','구조가 완전히 다릅니다. 기본 형태부터 다시 연습해 보세요! 비율과 형태를 잡는 연습을 반복하면서 기본적인 틀을 확립하는 것이 중요합니다.');
/*!40000 ALTER TABLE `image_similarity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture` (
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `instructor_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `intro` varchar(1000) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs0gfbq4wjndx7s4ewrkc2ib5f` (`instructor_id`),
  CONSTRAINT `FKs0gfbq4wjndx7s4ewrkc2ib5f` FOREIGN KEY (`instructor_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture`
--

LOCK TABLES `lecture` WRITE;
/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` VALUES ('2025-02-18 00:51:42.090449',1,3,'2025-02-18 00:51:42.090449','테스트 강의 내용','테스트 강의','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/f94e4d02-8eb0-46d3-9090-42575246537e_테스트 사진2.png'),('2025-02-18 00:57:36.681527',2,4,'2025-02-18 00:57:36.681527','강의 내용입니다.','테스트 강의','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/8c10b685-2c84-4f8c-8471-9723813c2096_testing.jpg'),('2025-02-18 00:57:42.988973',3,5,'2025-02-18 00:57:42.988973','이 강의에서는 미니멀한 선으로 귀여운 동물과 자연을 표현하는 감성적인 스케치 기법을 배웁니다.\r\n쉽고 단순한 선을 활용해 누구나 따라 할 수 있도록 구성했으며,\r\n초보자도 부담 없이 귀여운 캐릭터와 동식물을 그릴 수 있도록 도와드립니다.\r\n\r\n또한, 각 요소를 조화롭게 배치하는 팁과 감성적인 스타일을 살리는 법도 함께 배울 수 있어요!\r\n스케치북과 펜만 있으면 바로 시작할 수 있는 힐링 스케치 강의입니다. ?✨','\"귀여운 감성! 미니멀 스케치로 동식물 그리기\"','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/f73b368e-dd54-4deb-9766-b96bfd077d41_캐릭터스케치.jpg'),('2025-02-18 01:05:09.731264',4,6,'2025-02-18 01:05:09.731264','? 강의 소개\r\n이 강의는 퍼스널 컬러를 처음 접하는 사람들을 위한 입문 과정입니다. 퍼스널 컬러가 무엇인지, 기본적인 색채 이론과 함께 나에게 어울리는 컬러를 찾는 방법을 배울 수 있습니다. 실생활에서 쉽게 적용할 수 있도록 패션, 메이크업, 헤어 컬러 등에 활용하는 방법도 함께 다룹니다.\r\n\r\n? 강의 목표\r\n퍼스널 컬러의 개념과 중요성 이해하기\r\n기본적인 색채 이론(웜톤/쿨톤, 명도·채도 등) 배우기\r\n간단한 셀프 퍼스널 컬러 테스트 수행하기\r\n일상에서 컬러를 적용하는 법 익히기 (패션, 메이크업 등)\r\n\r\n? 추천 대상\r\n퍼스널 컬러가 무엇인지 궁금한 사람\r\n패션이나 메이크업에서 어떤 색이 어울리는지 알고 싶은 사람\r\n간단한 퍼스널 컬러 테스트를 직접 해보고 싶은 사람\r\n\r\n✨ 강의의 장점\r\n✅ 초보자도 이해하기 쉬운 쉬운 설명과 실습 중심의 강의입니다.\r\n✅ 실생활에서 쉽게 적용할 수 있는 내용으로 구성되어 있습니다.\r\n✅ 직접 셀프 컬러 테스트를 해보며 나에게 어울리는 컬러를 찾을 수 있습니다.','퍼스널컬러의 기초 - 초급편','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/3afc7dcc-327a-45ad-be5a-77626fb61e74_pastel_gradients.jpg'),('2025-02-18 01:07:01.152053',5,9,'2025-02-18 01:07:01.152053','선 하나만으로 감정을 표현하고, 공간을 채우며, 몰입의 순간을 경험할 수 있다면 어떨까?\r\n이 수업에서는 다양한 선의 표현 기법을 탐구하며, 선이 만들어내는 리듬과 흐름 속에서 자연스럽게 몰입하는 경험을 한다. 단순한 선 긋기에서 시작해 점점 더 복잡한 형태와 감각적인 조화를 이뤄나가며, 그림을 그리는 행위 자체가 명상과도 같은 순간이 되도록 이끈다.','선으로 깊은 몰입감을 자아내는 그림','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/63e46a25-183d-4da8-940a-218b99ac2203_cover-dictionary-soeun.jpg'),('2025-02-18 01:09:30.279838',6,6,'2025-02-18 01:09:30.279838','? 강의 소개\r\n중급 강의에서는 퍼스널 컬러를 더욱 세부적으로 분석하는 방법을 배웁니다. 4계절 컬러 시스템을 넘어 12가지 세부 톤을 배우고, 패션, 메이크업뿐만 아니라 직업별 퍼스널 컬러 활용법까지 학습합니다. 보다 정확한 퍼스널 컬러 진단을 하고 싶은 사람들에게 추천하는 강의입니다.\r\n\r\n? 강의 목표\r\n12계절 퍼스널 컬러 시스템 이해하기\r\n톤온톤, 톤인톤, 톤앤톤 스타일링 기법 배우기\r\n직업 및 라이프스타일에 맞는 퍼스널 컬러 활용법 익히기\r\n퍼스널 컬러가 심리에 미치는 영향 이해하기\r\n\r\n? 추천 대상\r\n기본적인 퍼스널 컬러 개념을 알고 있지만 더 심화된 내용을 배우고 싶은 사람\r\n자신에게 더 정밀한 컬러 분석을 적용하고 싶은 사람\r\n직업별 스타일링, 메이크업, 헤어 컬러까지 퍼스널 컬러를 활용하고 싶은 사람\r\n\r\n✨ 강의의 장점\r\n✅ 퍼스널 컬러를 4계절이 아닌 12세부 톤으로 더 정확하게 분석 가능\r\n✅ 직업별, 상황별 맞춤 컬러 선택법을 배울 수 있음\r\n✅ 전문가 수준의 드레이핑 기법을 처음 접하는 단계','퍼스널 컬러 심화 - 중급편','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/31ce1eb4-6c39-4b56-b21f-bd2067f55037_SL-011623-55340-07.jpg'),('2025-02-18 01:11:00.244833',7,9,'2025-02-18 01:11:00.244833','꿈에 그리던 나만의 인물화. 그림은 한 번도 그려본 적이 없어 주저하고만 있으셨나요? 그림이 처음이어도, 잘 못그려도 혹은 특별한 도구가 없어도 걱정마세요! 제가 도와드립니다.','실물보다 더 진짜 같은 아름다움','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/8427f711-f80d-49d2-8162-95388e907b39_cover-dictionary-seal.jpg'),('2025-02-18 01:13:15.608816',8,6,'2025-02-18 01:13:15.608816','? 강의 소개\r\n고급 과정은 퍼스널 컬러 컨설턴트가 되기를 희망하는 사람들을 위한 전문가 과정입니다. 고객의 퍼스널 컬러를 정확하게 진단하는 방법부터 개별 맞춤 컨설팅 기법, 브랜드 및 비즈니스에서 컬러를 활용하는 전략까지 배울 수 있습니다. 실제 퍼스널 컬러 컨설턴트가 되기 위한 실전 교육이 포함된 강의입니다.\r\n\r\n? 강의 목표\r\n퍼스널 컬러 컨설턴트로서의 전문적인 진단 기법 익히기\r\n고객 맞춤형 컬러 컨설팅 실습 진행하기\r\n색채 심리학과 컬러 마케팅을 활용한 컨설팅 기술 배우기\r\n퍼스널 컬러 컨설턴트로 활동하기 위한 실전 대비\r\n\r\n? 추천 대상\r\n퍼스널 컬러 컨설턴트로 활동하고 싶은 사람\r\n개인 브랜드 및 기업 컬러 컨설팅을 하고 싶은 사람\r\n색채 심리 및 마케팅 활용까지 배우고 싶은 사람\r\n실제 고객을 대상으로 퍼스널 컬러 진단 및 컨설팅을 해보고 싶은 사람\r\n\r\n✨ 강의의 장점\r\n✅ 전문가 수준의 진단법(드레이핑, 컬러 차트 활용 등) 실습 가능\r\n✅ 개인 맞춤형 컨설팅을 진행할 수 있도록 실전 피드백 제공\r\n✅ 퍼스널 컬러 컨설턴트로서 창업 및 프리랜서 활동 준비 가능','전문가를 위한 퍼스널 컬러 컨설팅 - 고급편','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/1fe21bfd-1a4f-42f6-a45d-a9fdd69cec1b_22d360bf-e473-4118-9a08-a5bccd573fde.jpg'),('2025-02-18 01:13:33.328859',9,9,'2025-02-18 01:13:33.328859','\"무채색으로 완성하는 역동적이고 트렌디한 캐릭터 일러스트, 원현만의 먹칠 테크닉을 모두 공개합니다\"','먹칠로 표현하는 다이나믹 흑백 캐릭터 일러스트','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/e5f8f13d-c2e3-4644-9588-5715733408da_CANNON5.jpg'),('2025-02-18 01:19:37.447145',10,2,'2025-02-18 02:53:27.060425','이모티콘을 만들고 싶지만 어디서부터 시작해야 할지 막막한가요?\r\n기획부터 스케치, 색칠, 움직이는 애니메이션 제작까지!\r\n감성 가득한 이모티콘을 직접 만들어보며 판매까지 이어지는 과정을 배워보세요.','\"귀여운 감성을 담아내는 이모티콘 제작 클래스\"','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/e190f0b1-6eb7-4410-b561-57d39604ef1e_화면 캡처 2025-02-17 160614.png'),('2025-02-18 01:23:25.675431',11,9,'2025-02-18 01:23:25.675431','실습 예제는 실무에 실제로 도움이 되는 자료를 만들기 위해, 보여주기 식의 자료가 아닌 보다 실질적인 내용을 준비했습니다.\r\n 작가의 스킬과 작업 과정, 사용된 기능을 모두 확인할 수 있도록 실제 사용 중인 후보정 스킬을 공개하겠습니다.','진짜 실력을 키우는 웹툰 후보정 실습예제','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/6633b9ff-484a-4c8c-9204-095c3529ac12_asset-johnkafka2-cover.jpg'),('2025-02-18 01:28:06.121544',12,5,'2025-02-18 01:28:06.121544','이 강의에서는 패션과 감성을 담은 캐릭터 스케치를 배웁니다.\r\n얼굴과 몸의 비율을 익히고, 자연스럽고 감각적인 포즈를 그리는 방법을 연습하며\r\n다양한 패션 스타일을 적용하여 개성 있는 캐릭터 디자인을 완성하는 것이 목표입니다.\r\n\r\n또한, 세련된 선 사용법과 감성적인 분위기를 연출하는 테크닉을 배워\r\n보다 감각적인 일러스트를 제작할 수 있도록 도와드립니다. ✍️?','스타일리시한 캐릭터 스케치: 패션과 감성을 담다','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/72a42348-99e3-49c8-b79e-39d62db96f38_스스케케치치.jpg'),('2025-02-18 01:39:37.090234',13,7,'2025-02-18 01:39:37.090234','초보자부터 고급자까지, 풍경화를 단계별로 배우는 강의','풍경화 마스터 클래스','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/2dc02b79-15d7-42c1-8b2f-16ff1f168fef_풍경화.jpg'),('2025-02-18 02:49:29.173067',15,9,'2025-02-18 02:49:29.173067','test','test','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/dedf4532-f768-469d-a325-f8369bfddbca_us-illustrator-guweiz-cover-web.jpg'),('2025-02-20 09:57:06.505516',16,15,'2025-02-20 09:57:06.505516','무심코 지나쳤던 일상의 순간들, 그림으로 남겨보는 건 어떨까요? ??\r\n이 강의에서는 디지털 드로잉으로 감성적인 일상 그림을 그리는 방법을 배웁니다.\r\n쉽게 따라 할 수 있는 드로잉 기법부터 색감, 구도, 스토리텔링까지!\r\n나만의 개성 있는 그림을 완성하고, SNS 연재부터 굿즈 제작까지 활용할 수 있도록 도와드릴게요.\r\n디지털 드로잉을 처음 접하는 분들도 부담 없이 시작할 수 있도록 차근차근 안내해드립니다.\r\n\r\n? 당신만의 따뜻한 하루를 그림으로 남겨보세요!','\"소소한 하루, 감성 한 스푼✨ 디지털 드로잉으로 일상 기록하기\"','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/5c677f7e-18f0-4218-aab3-da26cbfa512f_11122.png'),('2025-02-20 10:00:11.133277',17,12,'2025-02-20 10:00:11.133277','몇 달 내내 아무리 붙잡아도 어려운 인체 드로잉, 수십 장씩 그리는 크로키와 인체 비율 연습으로도 실력은 제자리걸음인 기분이었다면? 지금부터 딱, 100일만 투자해 보세요. 인체 드로잉 분야 3년 연속 베스트셀러 저자이자 회화 전문 작가인 소은 박경선이 여러분을 위한 올인원 인체 드로잉 스킬을 전해드립니다.','단계별 인체 드로잉 올인원 솔루션','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/deea3624-ace9-4948-849f-bde7781276e6_cover-dictionary-soeun.jpg'),('2025-02-20 10:03:36.653620',18,16,'2025-02-20 10:03:36.653620','\"작은 그림 하나가 큰 감정을 전할 수 있다면?\"\r\n이 강의에서는 이모티콘 제작의 A부터 Z까지 배워, 나만의 개성 있는 이모티콘을 직접 만들고 출시하는 과정까지 경험할 수 있습니다.\r\n\r\n✔ 기획부터 판매까지! – 성공적인 이모티콘을 만드는 과정 전부 공개\r\n✔ 실전 중심! – 플랫폼별 등록 및 판매 전략까지 한 번에\r\n✔ 초보자도 OK! – 기본 드로잉부터 애니메이션 이모티콘까지 단계별 학습\r\n✔ 개인 프로젝트 완성! – 강의가 끝나면 실제 이모티콘을 출시할 수 있도록 도와드립니다\r\n\r\n이제 여러분도 감성을 담아 \"전 세계와 소통하는 나만의 이모티콘\" 을 만들어 보세요! ?✨','\"이모티콘 아티스트 되기: 감정을 담는 작은 그림의 세계\"','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/8402a885-73a3-4ef6-b124-4e81a90997e5_dlaxl2.jpg'),('2025-02-20 10:05:57.755707',19,12,'2025-02-20 11:14:35.194923','이모티콘, 귀엽기만 해야 한다고? NO!\r\n재치 있는 유머, 간지나는 스타일, 강렬한 임팩트까지! 남성 타겟을 위한 이모티콘을 만들어보세요.\r\n\r\n이 강의에서는 남성들이 좋아하는 이모티콘의 특징과 트렌드를 분석하고,\r\n디자인부터 애니메이션, 플랫폼 등록까지 실전 제작 과정을 모두 알려드립니다.\r\n코믹한 캐릭터부터 시크한 감성까지!\r\n나만의 개성을 담아 쓸 때마다 빵 터지는 이모티콘을 만들어보세요.\r\n\r\n? 친구들이 \"이거 어디서 샀어?\" 묻는 이모티콘, 직접 제작해보자!','꾸준한 수익을 만드는 이모티콘 플러스 실전 공략서','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/530c2278-fb3e-4e51-bb0d-e3fa3e5767c7_cover-dictionary-gnyang.jpg'),('2025-02-20 10:10:07.787762',20,16,'2025-02-20 10:10:07.787762','\"웹툰 한 편이 세상을 감동시킬 수 있다면?\"\r\n이 강의에서는 웹툰 제작의 기획부터 연재까지 전 과정을 배워, 나만의 개성 있는 웹툰을 직접 만들고 연재할 수 있도록 도와드립니다.\r\n\r\n✔ 기획부터 연재까지! – 성공적인 웹툰을 만드는 과정 전부 공개\r\n✔ 실전 중심! – 플랫폼별 업로드 및 연재 전략까지 한 번에\r\n✔ 초보자도 OK! – 기본 드로잉부터 컷 구성, 연출 기법까지 단계별 학습\r\n✔ 개인 프로젝트 완성! – 강의가 끝나면 실제 웹툰을 연재할 수 있도록 도와드립니다\r\n\r\n이제 여러분도 감성을 담아 \"전 세계와 소통하는 나만의 웹툰\" 을 만들어 보세요! ?✨','\"웹툰 아티스트 되기: 감성을 담아 그리는 스토리의 세계\"','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/b43a206c-02e7-45f7-ad99-8aa39b345a75_웹툰.jpg'),('2025-02-20 10:10:36.151682',21,12,'2025-02-20 10:10:36.151682','오늘 그림을 시작한 분들도 나의 아이디어로 트렌디한 이모티콘을 제작할 수 있도록!\r\n2019년 첫 이모티콘을 출시 후 매 년 평균 10건 이상의 이모티콘을 출시한 6년차 경력 작가인 소콘소콘의 노하우를 담아 이모티콘을 처음 시작하는 분들도 끝까지 포기하지 않고 원하는 이모티콘을 만들 수 있도록 떠먹여드리겠습니다.\r\n\r\n이모티콘 디자인을 처음 접하는 분이라도 아이디어 구상, 캐릭터 디자인, 트렌드 분석, 그리고 최종 제작까지 전 과정을 전자책과 템플릿, 실습 영상과 보조 실습지를 활용해 매력 넘치는 이모티콘을 제작할 수 있습니다.','낙서가 수익으로 이어지는, 입문자를 위한 가장 친절한 이모티콘 제작 키트','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/458ddc74-ed35-4b51-b4ef-b98b23a29ac3_asset-soconsocon-cover.jpg'),('2025-02-20 10:49:51.374022',23,5,'2025-02-20 11:19:18.643159','\"기억에 남는 캐릭터에는 특별한 개성이 담겨 있다!\"\r\n이 강의에서는 캐릭터 디자인의 핵심 원리부터 실전 제작까지 배워, 자신만의 독창적인 캐릭터를 창조하고 완성하는 방법을 익힙니다.\r\n\r\n✔ 초보자도 쉽게! – 기본 이론부터 실전까지 단계별 학습\r\n✔ 디지털 아트 중심! – 최신 툴 활용법과 트렌드 반영\r\n✔ 실무 감각 UP! – 캐릭터를 브랜드화하고 수익화하는 전략 공개\r\n✔ 나만의 캐릭터 완성! – 강의가 끝나면 자신만의 오리지널 캐릭터를 보유\r\n\r\n이제 여러분도 \"세상에 단 하나뿐인 개성 넘치는 캐릭터\" 를 만들어 보세요! ?✨','\"매력적인 캐릭터 만들기: 개성과 스토리가 살아있는 디자인\"','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/6fd41513-49cb-4d2f-b96c-b0b43da2b6f9_zoflrxj.png'),('2025-02-20 11:00:00.845107',24,2,'2025-02-20 11:00:27.255263','이모티콘, 귀엽기만 해야 한다고? NO!\r\n재치 있는 유머, 간지나는 스타일, 강렬한 임팩트까지! 남성 타겟을 위한 이모티콘을 만들어보세요.\r\n\r\n이 강의에서는 남성들이 좋아하는 이모티콘의 특징과 트렌드를 분석하고,\r\n디자인부터 애니메이션, 플랫폼 등록까지 실전 제작 과정을 모두 알려드립니다.\r\n코믹한 캐릭터부터 시크한 감성까지!\r\n나만의 개성을 담아 쓸 때마다 빵 터지는 이모티콘을 만들어보세요.\r\n\r\n? 친구들이 \"이거 어디서 샀어?\" 묻는 이모티콘, 직접 제작해보자!','\"센스 있게 웃기고, 쿨하게 멋있게! 남성 타겟 이모티콘 제작 노하우\"','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/54589177-eeef-4375-a862-7b481719bd5f_41242142424142.png'),('2025-02-20 11:19:56.460775',25,12,'2025-02-20 11:19:56.460775','잘 만든 이모티콘을 캐릭터 브랜드로 성장시켜 추가 기대수익까지!\r\n\r\n승인받는 이모티콘만으로는 부족합니다. 이모티콘을 브랜드로 성장시키고, 이를 통해 추가 수익을 창출하는 전략이 필요합니다. 이번 패키지에서는 단순한 이모티콘 제작을 넘어, 캐릭터를 브랜드화하여 굿즈, 출판, 팝업스토어까지 성장시킬 수 있는, 캐릭터 브랜드로 수익을 극대화하는 방법을 전수합니다. 7년간의 경험을 바탕으로, 이모티콘 시장에서의 생존법과 성공적인 캐릭터 브랜딩 비법을 모두 담았습니다.','이모티콘 승인부터 무한 수익 확장까지, 캐릭터 브랜딩 성공 전략','https://grimtalk.s3.ap-northeast-2.amazonaws.com/lectures/67661827-0b0d-41d4-9a72-559d12ef3f23_global-illustrator-markusyu-cover-web.jpg');
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture_review`
--

DROP TABLE IF EXISTS `lecture_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture_review` (
  `star` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lecture_id` bigint DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKiohdf2u9g51xgwxkfxbhcrr6t` (`lecture_id`),
  KEY `FKmu6u1ncpvc56pmwjqm990hv1q` (`student_id`),
  CONSTRAINT `FKiohdf2u9g51xgwxkfxbhcrr6t` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`),
  CONSTRAINT `FKmu6u1ncpvc56pmwjqm990hv1q` FOREIGN KEY (`student_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture_review`
--

LOCK TABLES `lecture_review` WRITE;
/*!40000 ALTER TABLE `lecture_review` DISABLE KEYS */;
INSERT INTO `lecture_review` VALUES (0,'2025-02-18 01:07:07.083579',1,3,5,'2025-02-18 01:07:07.083579','너무 잘 그리시는 것 같아요!'),(5,'2025-02-18 01:13:31.345279',2,4,5,'2025-02-18 01:13:31.345279','최고입니다 흥미로워요 굉장히!'),(0,'2025-02-18 01:19:46.866786',3,10,2,'2025-02-18 01:19:46.866786','엄청 잘 알려주셔서 실력이 빨리 늘 거 같아요!'),(4,'2025-02-20 10:12:40.031751',4,19,16,'2025-02-20 10:12:40.031751','프로필 사진이 못생겼어요...'),(5,'2025-02-20 11:24:45.489075',5,19,2,'2025-02-20 11:24:45.489075','이 강의를 듣고 나서 그림 실력이 눈에 띄게 향상되었습니다! ?\n강사님이 기본기부터 차근차근 설명해 주셔서 초보자도 쉽게 따라 할 수 있었고, 실전에서 바로 활용할 수 있는 팁들도 가득했어요.\n\n특히, 캐릭터 디자인과 색감 활용법을 배울 수 있어서 그림이 훨씬 생동감 있어졌어요. ✨\n단순한 이론 강의가 아니라 실습 중심이라 더욱 효과적이었고, 강사님 피드백 덕분에 실력이 한 단계 업그레이드된 느낌입니다.\n');
/*!40000 ALTER TABLE `lecture_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live`
--

DROP TABLE IF EXISTS `live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `live` (
  `created_at` datetime(6) DEFAULT NULL,
  `curriculum_id` bigint DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updated_at` datetime(6) DEFAULT NULL,
  `chat_session_id` varchar(255) DEFAULT NULL,
  `draw_session_id` varchar(255) DEFAULT NULL,
  `live_session_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6ejclvcubb6v9n2vlcy8twri` (`curriculum_id`),
  CONSTRAINT `FKf4l3hrx6m1b90in6g3ea81ujk` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live`
--

LOCK TABLES `live` WRITE;
/*!40000 ALTER TABLE `live` DISABLE KEYS */;
/*!40000 ALTER TABLE `live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_history`
--

DROP TABLE IF EXISTS `live_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `live_history` (
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `live_id` bigint DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK628mecslr7ebtp1u9qepslp58` (`live_id`),
  KEY `FKog9q117qnfwgu9v7gq0l1vb9b` (`student_id`),
  CONSTRAINT `FK628mecslr7ebtp1u9qepslp58` FOREIGN KEY (`live_id`) REFERENCES `live` (`id`),
  CONSTRAINT `FKog9q117qnfwgu9v7gq0l1vb9b` FOREIGN KEY (`student_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_history`
--

LOCK TABLES `live_history` WRITE;
/*!40000 ALTER TABLE `live_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `question` int NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subscribe_number` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `intro` varchar(1000) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `auth_provider` enum('GITHUB','GOOGLE','KAKAO','NAVER') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (3,'2025-02-18 00:45:21.775434',1,0,'2025-02-18 00:46:19.722074',NULL,'성북초등학교','admin@admin.com',NULL,'관리자','$2a$10$A4YIOJ8ZmZJOCGcjB2TCaOClVQd9/cPoAknLmN460JIJTGtAyq/D2',NULL),(2,'2025-02-18 00:45:29.812666',2,102,'2025-02-20 11:30:35.024295','✨ 강사 소개 ✨\n안녕하세요! 이모티콘 작가 재열맘입니다. ?✨\n귀여운 그림을 그리고 감정을 표현하는 걸 좋아해서 이모티콘을 직접 제작하고, 다양한 플랫폼에서 판매하고 있어요!\n손끝에서 탄생하는 작은 캐릭터들이 사람들에게 즐거움을 줄 때 가장 큰 보람을 느낍니다. ??\n\n? 경력 및 활동\n✔ 그림톡에서 이모티콘 제작 강의 진행 (예정)\n✔ 카카오O, 네이O OGO, 라O 크리에이터스 마켓 등 다양한 플랫폼에서 이모티콘 판매 중\n✔ 굿즈 제작 & 온라인 스토어 운영 경험 보유\n✔ SNS에서 이모티콘, 디지털 드로잉 관련 콘텐츠 꾸준히 공유\n\n? 강의에서 배울 내용\n이 강의에서는 이모티콘을 처음 만들어보는 분들도 쉽게 따라올 수 있도록,\n? 기획 → 스케치 → 채색 → 애니메이션 → 등록까지 전 과정을 차근차근 알려드립니다!\n\n✔ 나만의 개성 넘치는 캐릭터 디자인하는 법\n✔ 감정을 잘 표현하는 이모티콘 연출 팁\n✔ 판매 가능한 이모티콘 패키지 완성하기\n✔ 이모티콘으로 수익 창출하는 방법까지!\n\n나만의 캐릭터를 세상에 선보이고 싶다면? 지금 바로 함께 시작해봐요! ??','시금치','dlawoduf15@naver.com','https://grimtalk.s3.ap-northeast-2.amazonaws.com/profiles/d363ad1a-c1ce-413b-96e1-8bd7e62210d1_123123123.png','재열맘','$2a$10$VbATXg.aglmL0u4KfKGFguxSCQGpupir7MNj3.0AuDNo3Kh5pq0wa',NULL),(1,'2025-02-18 00:45:39.466065',3,1,'2025-02-18 01:13:42.111969','그림톡 강사 테스트 계정입니다.','ssafy','UserTest3@naver.com',NULL,'강사테스트계정1','$2a$10$i7nH1UfcMrYxYLq8XWjIze8W5BSCWjR6VcxbjTDVB8L6W8lk4hQ0W',NULL),(1,'2025-02-18 00:45:46.564757',4,1,'2025-02-18 01:13:49.681062','그림톡 강사 테스트 계정입니다.','바둑이','UserTest4@naver.com',NULL,'강사테스트계정2','$2a$10$Z0zgR8D3fJsWQ/MNK9RvV.qd9MXJxkYdTw14W/JWTo8qn2wG.7rXS',NULL),(1,'2025-02-18 00:45:57.550581',5,2,'2025-02-20 10:21:31.291516','? 스케치북\r\n안녕하세요! 저는 스케치북입니다. ✏️\r\n그림을 그리고 배우는 걸 좋아해서, 누구나 쉽게 스케치를 즐길 수 있도록 도와주는 강의를 하고 있어요.\r\n\r\n? 스케치는 어렵지 않아요!\r\n기본 선 긋기부터 캐릭터 드로잉, 배경 스케치까지!\r\n단순한 선 하나로도 멋진 작품을 만들 수 있다는 걸 보여주고 싶어요.\r\n\r\n? 라이브 & 강의로 함께해요\r\n혼자 연습하는 게 어려운 분들을 위해 실시간으로 소통하며 배울 수 있는 라이브 강의와\r\n언제든지 보고 따라 할 수 있는 온라인 강의도 진행하고 있어요.\r\n\r\n? 스케치로 세상을 채우는 중\r\n손이 가는 대로 선을 그려 나가다 보면, 어느새 멋진 작품이 탄생하는 순간이 가장 짜릿해요.\r\n스케치는 부담 없이, 즐겁게! 함께 성장해요. ?\r\n\r\n✏️ 스케치북과 함께 그림을 시작해 볼까요?','뽀삐','moda2047@naver.com','https://grimtalk.s3.ap-northeast-2.amazonaws.com/profiles/8b07a2b4-2e3a-48c0-8b2e-32041b9c9e63_tmzpcl.png','스케치북','$2a$10$ZU6WcbpfTWt3nkkLnK8VuexqcuxeYM4K.XLsHdiRythl44tYlr0nW',NULL),(3,'2025-02-18 00:46:58.723541',6,4,'2025-02-18 01:58:11.936207','빠스날컬러 장인입니다 ㅋ','성북초','woans5970@naver.com',NULL,'빠스날컬러','$2a$10$4zunxwm2Y1d1zn5.BQeXcup3qReQ6OfPafW0Nnizijpaas9w.K/yS',NULL),(3,'2025-02-18 00:47:17.672994',7,0,'2025-02-18 00:47:17.672994',NULL,'이동','ssafywoong@gmail.com',NULL,'ArtNova','$2a$10$hoTVG.h9nC5e155AWU9npuKJQ7hMhd7rHiJt3o/t4brspUWjr7UaK',NULL),(1,'2025-02-18 00:54:37.162751',8,0,'2025-02-18 00:54:37.162751',NULL,'ssafy','UserTest1@naver.com',NULL,'수강생테스트계정1','$2a$10$TP3rivB9v1tWn4yMBVOOE.Kwj4vfMyU8LGos.spgO/4ztg6IQZZR2',NULL),(1,'2025-02-18 01:02:13.229885',9,0,'2025-02-18 01:02:13.229885',NULL,'크왕','woo@naver.com',NULL,'크왕크왕크왕','$2a$10$GlUdPTcFswQo6BfVOypwmudAVMss9H9VfiYSbgaTrS/ykbITftWQi',NULL),(3,'2025-02-18 02:52:00.292889',10,0,'2025-02-18 02:52:00.292889',NULL,'준','woo2@naver.com',NULL,'우준규신','$2a$10$m3SaRIPP6WI0VRm5oCNiIOyfmSNfmpGutRsXCsHah.nKiONDuSlbC',NULL),(1,'2025-02-20 09:47:55.991426',11,0,'2025-02-20 10:12:18.442808','소개글을 작성해주세요.','1','test1@naver.com','https://grimtalk.s3.ap-northeast-2.amazonaws.com/profiles/1512e851-168c-402f-9f91-57a879cc51e2_상웅.jpg','나는야웅이','$2a$10$1tAPU9KRIr4cj86AovVYdO5xMPdKN4dD2NnahPaeMqRQF6hzocUM.',NULL),(1,'2025-02-20 09:48:46.422135',12,153,'2025-02-20 11:14:15.161589','✨ 강사 소개 ✨\n안녕하세요! 이모티콘 작가 나는야민수입니다. ?✨\n귀여운 그림을 그리고 감정을 표현하는 걸 좋아해서 이모티콘을 직접 제작하고, 다양한 플랫폼에서 판매하고 있어요!\n손끝에서 탄생하는 작은 캐릭터들이 사람들에게 즐거움을 줄 때 가장 큰 보람을 느낍니다. ??\n\n? 경력 및 활동\n✔ 그림톡에서 이모티콘 제작 강의 진행 (예정)\n✔ 카카오O, 네이O OGO, 라O 크리에이터스 마켓 등 다양한 플랫폼에서 이모티콘 판매 중\n✔ 굿즈 제작 & 온라인 스토어 운영 경험 보유\n✔ SNS에서 이모티콘, 디지털 드로잉 관련 콘텐츠 꾸준히 공유\n\n? 강의에서 배울 내용\n이 강의에서는 이모티콘을 처음 만들어보는 분들도 쉽게 따라올 수 있도록,\n? 기획 → 스케치 → 채색 → 애니메이션 → 등록까지 전 과정을 차근차근 알려드립니다!\n\n✔ 나만의 개성 넘치는 캐릭터 디자인하는 법\n✔ 감정을 잘 표현하는 이모티콘 연출 팁\n✔ 판매 가능한 이모티콘 패키지 완성하기\n✔ 이모티콘으로 수익 창출하는 방법까지!\n\n나만의 캐릭터를 세상에 선보이고 싶다면? 지금 바로 함께 시작해봐요! ??','1','test2@naver.com','https://grimtalk.s3.ap-northeast-2.amazonaws.com/profiles/5196b686-07b3-48f5-bf63-466fe1db3b72_밥로스.jpg','나는야민수','$2a$10$GwgMkGhrrK0UWFd.y6IW4OzBVUDCLmQz7egVcb//05KcGtIYODeO2',NULL),(1,'2025-02-20 09:49:35.254130',13,0,'2025-02-20 09:49:35.254130',NULL,'뽀삐','qwe123@naver.com',NULL,'그림나무','$2a$10$.bK44bUc/0mQwOIdPVdPyeIXgGjqs4YA.MV/rskCiMywN5OrgtYK6',NULL),(1,'2025-02-20 09:50:03.731008',14,0,'2025-02-20 09:50:03.731008',NULL,'뽀삐','qwe1232@naver.com',NULL,'그리미','$2a$10$fpoD.Z6vGiw5Y5f7wcvXfOmTo5on2a8jgsZ8mR0.840XBKWc5H7Lm',NULL),(1,'2025-02-20 09:50:33.448701',15,1,'2025-02-20 09:58:42.362121','? 강사 소개\r\n안녕하세요! 디지털 드로잉 작가 끼리릭입니다. ✨\r\n평범한 하루도 그림으로 남기면 특별한 이야기가 된다고 믿어요. ?️?\r\n일상의 소소한 순간을 따뜻하고 감성적인 그림으로 기록하며, 다양한 플랫폼에서 작품을 공유하고 있습니다.\r\n\r\n? 경력 및 활동\r\n✔ SNS에서 일상 드로잉 콘텐츠 연재 중\r\n✔ 굿즈 제작 & 온라인 스토어 운영\r\n✔ 디지털 드로잉 & 감성 일러스트 강의 진행\r\n✔ 다양한 브랜드와 협업 아트워크 제작\r\n\r\n? 강의에서 배울 내용\r\n이 강의에서는 일상의 순간을 그림으로 기록하는 방법을 알려드립니다.\r\n\"어떤 장면을 그려야 할까?\" 고민하는 분들도 쉽게 따라올 수 있도록,\r\n\r\n✔ 소소한 일상을 감성적인 그림으로 표현하는 법\r\n✔ 단순하지만 따뜻한 색감과 구도 활용하기\r\n✔ 나만의 드로잉 스타일 찾기\r\n✔ 디지털 드로잉을 활용한 굿즈 제작 & 수익화\r\n\r\n까지 실전 팁을 가득 담아 알려드릴게요!\r\n지금 바로, 당신만의 일상을 그림으로 기록하는 여정을 함께 시작해봐요! ✨??','바둑이','dlawoduf16@naver.com','https://grimtalk.s3.ap-northeast-2.amazonaws.com/profiles/953e85e7-e695-457c-9497-d5557cf68ceb_21212121.png','끼리릭','$2a$10$bPypR9k6s11lOfgof1qq.u/pwU5mUUWk9r6.4hucFUX65ZnfxiDhu',NULL),(1,'2025-02-20 09:50:39.782557',16,0,'2025-02-20 09:55:16.707587','? 그림톡 – 감성을 담아 그리는 이모티콘 아티스트 ✨\n\n“작은 그림 속에 담긴 큰 이야기”를 전하는 그림톡입니다! ?\n귀여운 표정, 생동감 넘치는 동작, 감정을 전달하는 섬세한 터치까지 –\n그림톡은 이모티콘 하나로 감정을 표현하는 마법을 만들어요. ?\n\n?️ 특기: 감정을 꾹꾹 눌러 담은 캐릭터 디자인\n? 스타일: 따뜻하고 친근한, 언제 봐도 기분 좋아지는 이모티콘\n? 영감: 일상 속 소소한 순간들, 반짝이는 아이디어에서 탄생\n\n\"내 기분을 대신 전해줄 이모티콘이 있다면?\"\n그럴 땐 그림톡이 그린 이모티콘을 찾아보세요! ??✨','뽀삐','qwe1233@naver.com','https://grimtalk.s3.ap-northeast-2.amazonaws.com/profiles/45f1096b-4ff9-47b8-83aa-e632d1d288c8_임티1.png','그림톡','$2a$10$s8XT.of8FdzNkUecNDrsd.mdNjyn/2K790TM7O3dR0PmKrp7k1V7e',NULL),(3,'2025-02-20 11:01:46.130753',17,0,'2025-02-20 11:01:46.130753',NULL,'123','tester2@test.com',NULL,'tester123','$2a$10$xUpGw6cIJ5KxqYVZMZWOU.6Kfm2ix0vP3W5deYeDcF3VjzZUOp3jW',NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_tag`
--

DROP TABLE IF EXISTS `member_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `membertag_type` enum('ABSTRACT','CALM','COLORFUL','DARK','DETAILED','DREAMY','DYNAMIC','EASY_TO_LEARN','ELEGANT','EXPRESSIVE','FANTASY','INNOVATIVE','LIGHT','MINIMALISTIC','PASSIONATE','REALISTIC','SIMPLE','STORYTELLER','TEXTURED','VIVID') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgodbg35wb92j09pt5pi64udco` (`member_id`),
  CONSTRAINT `FKgodbg35wb92j09pt5pi64udco` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_tag`
--

LOCK TABLES `member_tag` WRITE;
/*!40000 ALTER TABLE `member_tag` DISABLE KEYS */;
INSERT INTO `member_tag` VALUES (1,1,'PASSIONATE'),(2,1,'REALISTIC'),(3,2,'FANTASY'),(4,2,'INNOVATIVE'),(5,3,'EXPRESSIVE'),(6,3,'INNOVATIVE'),(7,4,'DARK'),(8,4,'ELEGANT'),(9,5,'LIGHT'),(10,5,'DARK'),(11,6,'CALM'),(12,6,'FANTASY'),(13,7,'VIVID'),(14,7,'MINIMALISTIC'),(15,8,'ABSTRACT'),(16,8,'SIMPLE'),(17,9,'SIMPLE'),(18,9,'TEXTURED'),(19,10,'EXPRESSIVE'),(20,10,'STORYTELLER'),(21,11,'LIGHT'),(22,11,'DETAILED'),(23,12,'VIVID'),(24,12,'PASSIONATE'),(25,13,'REALISTIC'),(26,13,'DYNAMIC'),(27,14,'CALM'),(28,14,'COLORFUL'),(29,15,'LIGHT'),(30,15,'PASSIONATE'),(31,16,'DETAILED'),(32,16,'CALM'),(33,17,'DYNAMIC'),(34,17,'INNOVATIVE');
/*!40000 ALTER TABLE `member_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lecture_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3lwj4k6ae5bnabk98o1b05t7n` (`lecture_id`),
  CONSTRAINT `FK3lwj4k6ae5bnabk98o1b05t7n` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES ('2025-02-18 00:59:44.932727',1,3,'2025-02-18 00:59:44.932727','12시에 시작하도록 할게요!!\n\n나중에 봅시당!\n\n모르는거 많이 물어보시고 구독과 즐겨찾기 많이많이 부탁드립니다!','오늘 라이브는 예정된 시간보다 조금 일찍 시작할 예정입니다.'),('2025-02-18 01:07:37.542205',2,5,'2025-02-18 01:07:37.542205','현재 많은 분들이 수업에 함께 해주시고 있습니다. 더욱 발전된 저를 보여드리겠습니다.','수업에 대하여'),('2025-02-18 02:57:29.209961',3,10,'2025-02-18 02:57:29.209961','? 공지사항\n안녕하세요! **\"귀여운 감성을 담아내는 이모티콘 제작 클래스\"**에 오신 걸 환영합니다! ?✨\n강의를 듣기 전, 원활한 수강을 위해 아래 내용을 꼭 확인해주세요.\n\n✅ 준비물 안내\n이 강의에서는 아이패드와 프로크리에이트 앱을 사용합니다.\n\n아이패드 (모델 상관없음, 애플 펜슬 사용 가능하면 좋아요!)\nProcreate 앱 (유료, 앱스토어에서 다운로드 가능)\n기본 제공되는 브러시만으로도 충분히 작업할 수 있어요!\n\n? 강의 일정\n강의는 **[업로드 일정]**에 따라 순차적으로 공개됩니다.\n강의가 공개되면 언제든지 자유롭게 수강하실 수 있어요!\n\n? 완성한 이모티콘 공유 이벤트!\n강의를 듣고 제작한 이모티콘을 SNS에 공유하면 소정의 선물을 드려요!\n참여 방법: [이벤트 참여 방법 및 해시태그 안내]','?✨ 수업준비 안내'),('2025-02-20 10:11:55.317128',4,20,'2025-02-20 10:11:55.317128','제가 개인사정으로 인해서 죄송합니다 ㅠㅠ','오늘 강의는 휴강하도록 하겠습니다.');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_comment`
--

DROP TABLE IF EXISTS `notice_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice_comment` (
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `notice_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK621q2kme0cak0gg8fgm7emp09` (`member_id`),
  KEY `FKax7qcww5twiq84y8dvvpaketx` (`notice_id`),
  CONSTRAINT `FK621q2kme0cak0gg8fgm7emp09` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKax7qcww5twiq84y8dvvpaketx` FOREIGN KEY (`notice_id`) REFERENCES `notice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_comment`
--

LOCK TABLES `notice_comment` WRITE;
/*!40000 ALTER TABLE `notice_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `is_read` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1xep8o2ge7if6diclyyx53v4q` (`member_id`),
  CONSTRAINT `FK1xep8o2ge7if6diclyyx53v4q` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refresh_token`
--

DROP TABLE IF EXISTS `refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refresh_token` (
  `expiry_date` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKdnbbikqdsc2r2cee1afysqfk9` (`member_id`),
  CONSTRAINT `FK5gdbafb2i76hk1ai18ah6an4w` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_token`
--

LOCK TABLES `refresh_token` WRITE;
/*!40000 ALTER TABLE `refresh_token` DISABLE KEYS */;
INSERT INTO `refresh_token` VALUES ('2025-03-04 01:53:36.363543',15,4,'05022270-50a5-4b48-a139-e78988954b1c'),('2025-03-04 02:52:10.667911',21,10,'8c55466f-536e-4829-8b7c-bb125d58f580'),('2025-03-04 03:30:15.563390',25,7,'05be208f-b830-4b06-9b7d-5e7da16b9036'),('2025-03-04 03:34:42.020764',27,9,'fd6b1205-517d-4190-b6b7-e5530493e54f'),('2025-03-06 11:09:18.604504',57,12,'9bb1faf8-757a-42f7-9adf-48f524b66883'),('2025-03-06 11:16:28.176364',61,5,'338a337b-8ef3-4222-8003-d23f2ae6db19'),('2025-03-06 11:25:21.956330',62,11,'59e47234-282b-4a48-bc6e-c861b9c19a5b');
/*!40000 ALTER TABLE `refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay`
--

DROP TABLE IF EXISTS `replay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replay` (
  `created_at` datetime(6) DEFAULT NULL,
  `curriculum_id` bigint DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updated_at` datetime(6) DEFAULT NULL,
  `replay_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKi39530ibicmm5j479vku60xo` (`curriculum_id`),
  CONSTRAINT `FKljv81e47cirvbr8k46ho1ks21` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay`
--

LOCK TABLES `replay` WRITE;
/*!40000 ALTER TABLE `replay` DISABLE KEYS */;
INSERT INTO `replay` VALUES ('2025-02-18 00:53:27.211401',1,1,'2025-02-18 00:53:27.211401',NULL),('2025-02-18 01:04:30.515325',5,3,'2025-02-18 01:04:30.515325',NULL),('2025-02-18 01:09:59.150327',4,4,'2025-02-18 01:09:59.150327',NULL),('2025-02-18 01:14:58.086022',8,5,'2025-02-18 01:14:58.086022',NULL),('2025-02-18 01:17:37.734172',9,6,'2025-02-18 01:17:37.734172',NULL),('2025-02-18 02:51:15.188577',52,7,'2025-02-18 02:51:15.188577',NULL),('2025-02-18 02:58:56.931769',53,8,'2025-02-18 02:58:56.931769',NULL),('2025-02-18 03:03:31.049774',55,9,'2025-02-18 03:03:31.049774',NULL),('2025-02-18 03:35:03.748552',6,10,'2025-02-18 03:35:03.748552',NULL),('2025-02-18 03:35:05.962653',3,11,'2025-02-18 03:35:05.962653',NULL),('2025-02-18 03:35:37.915230',54,12,'2025-02-18 03:35:37.915230',NULL),('2025-02-20 10:04:51.375230',56,13,'2025-02-20 10:04:51.375230',NULL),('2025-02-20 10:18:50.650926',75,14,'2025-02-20 10:25:11.157599','https://grimtalk.s3.ap-northeast-2.amazonaws.com/replays/7204c0e0-4803-405a-be94-51af0332b260_01. 이모티콘 작가 소개.mp4'),('2025-02-20 10:20:48.856817',7,15,'2025-02-20 10:20:48.856817',NULL),('2025-02-20 10:50:17.161343',94,16,'2025-02-20 10:50:17.161343',NULL),('2025-02-20 10:53:42.799242',95,17,'2025-02-20 10:53:42.799242',NULL),('2025-02-20 11:03:15.547507',19,18,'2025-02-20 11:03:15.547507',NULL),('2025-02-20 11:20:33.310692',101,19,'2025-02-20 11:20:33.310692',NULL),('2025-02-20 11:22:11.862182',102,20,'2025-02-20 11:22:11.862182',NULL),('2025-02-20 11:22:37.115540',103,21,'2025-02-20 11:22:37.115540',NULL),('2025-02-20 11:23:18.423757',104,22,'2025-02-20 11:23:18.423757',NULL),('2025-02-20 11:23:53.645083',105,23,'2025-02-20 11:23:53.645083',NULL),('2025-02-20 11:24:22.659578',106,24,'2025-02-20 11:24:22.659578',NULL),('2025-02-20 11:25:05.871529',107,25,'2025-02-20 11:25:05.871529',NULL),('2025-02-20 11:25:18.041080',108,26,'2025-02-20 11:25:18.041080',NULL),('2025-02-20 11:25:32.591829',110,27,'2025-02-20 11:25:32.591829',NULL),('2025-02-20 11:25:44.658787',111,28,'2025-02-20 11:25:44.658787',NULL),('2025-02-20 11:29:59.100794',112,29,'2025-02-20 11:29:59.100794',NULL);
/*!40000 ALTER TABLE `replay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay_history`
--

DROP TABLE IF EXISTS `replay_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replay_history` (
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `replay_id` bigint DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp7ulnc8yn511g6id2uh9cd02l` (`replay_id`),
  KEY `FKln89egh9cpuxtfc802fiue1ct` (`student_id`),
  CONSTRAINT `FKln89egh9cpuxtfc802fiue1ct` FOREIGN KEY (`student_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKp7ulnc8yn511g6id2uh9cd02l` FOREIGN KEY (`replay_id`) REFERENCES `replay` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay_history`
--

LOCK TABLES `replay_history` WRITE;
/*!40000 ALTER TABLE `replay_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `replay_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_drawing`
--

DROP TABLE IF EXISTS `student_drawing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_drawing` (
  `created_at` datetime(6) DEFAULT NULL,
  `curriculum_id` bigint DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc04iicvg7tmyquqr4ludrvfp8` (`curriculum_id`),
  KEY `FKbmh80dm8bku3oc7xjmiv89b08` (`student_id`),
  CONSTRAINT `FKbmh80dm8bku3oc7xjmiv89b08` FOREIGN KEY (`student_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKc04iicvg7tmyquqr4ludrvfp8` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_drawing`
--

LOCK TABLES `student_drawing` WRITE;
/*!40000 ALTER TABLE `student_drawing` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_drawing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `instructor_id` bigint DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcva7p7r79hk1o10laasla46jr` (`instructor_id`),
  KEY `FKhdnbnwu36cww7jl8tgymjygfv` (`student_id`),
  CONSTRAINT `FKcva7p7r79hk1o10laasla46jr` FOREIGN KEY (`instructor_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKhdnbnwu36cww7jl8tgymjygfv` FOREIGN KEY (`student_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES ('2025-02-18 01:13:34.886783',3,6,5,'2025-02-18 01:13:34.886783'),('2025-02-18 01:13:42.106005',4,3,5,'2025-02-18 01:13:42.106005'),('2025-02-18 01:13:49.675812',5,4,5,'2025-02-18 01:13:49.675812'),('2025-02-18 01:18:47.074549',6,6,9,'2025-02-18 01:18:47.074549'),('2025-02-18 01:39:25.011766',7,6,2,'2025-02-18 01:39:25.011766'),('2025-02-18 01:40:29.535466',8,6,7,'2025-02-18 01:40:29.535466'),('2025-02-18 01:41:24.475397',9,5,7,'2025-02-18 01:41:24.475397'),('2025-02-18 03:01:33.558671',17,2,9,'2025-02-18 03:01:33.558671'),('2025-02-20 09:58:42.353514',18,15,2,'2025-02-20 09:58:42.353514'),('2025-02-20 10:20:03.769420',20,5,11,'2025-02-20 10:20:03.769420'),('2025-02-20 11:12:06.066159',22,12,11,'2025-02-20 11:12:06.066159'),('2025-02-20 11:30:35.019512',23,2,11,'2025-02-20 11:30:35.019512');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-20 20:34:52
