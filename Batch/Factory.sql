USE [SPEEDOO_DB]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[P_DELETE_DATA]
@SUBMIT_FLAG INT OUTPUT
AS
BEGIN
SET @SUBMIT_FLAG=0
DELETE FROM T_SHAREEK
DELETE FROM T_SANAD_HAWALA_HISTORY
DELETE FROM T_SANAD_HAWALA
DELETE FROM T_SANAD_HISTORY
DELETE FROM T_PATH_BACKUP
DELETE FROM T_FORM_LAYOUT_FILE
DELETE FROM T_FACTORY_ITEM_WAITING
DELETE FROM T_SALES_PDF
DELETE FROM T_COUPON
DELETE FROM T_BUY_INSERT_SPEED
DELETE FROM T_BUY_DETAILS_TRANSFARE
DELETE FROM T_ITEM_FREE
DELETE FROM T_STAFF
DELETE FROM T_VISITOR
DELETE FROM T_MAINTENANCE
DELETE FROM T_MAINTENANCE_DEVICE
DELETE FROM T_MAINTENANCE_LABEL
DELETE FROM TA_PANDEL
DELETE FROM TA_PROJECT
DELETE FROM TA_PROJECT_KADER
DELETE FROM TA_PROJECT_PANDEL
DELETE FROM TH_ROOM
DELETE FROM TH_ROOM_BOOKING
DELETE FROM TH_ROOM_BOOKING_GUEST
DELETE FROM TH_ROOM_BOOKING_STATE
DELETE FROM TH_ROOM_FLOOR
DELETE FROM TH_ROOM_IMAGE
DELETE FROM T_FORM_APP
DELETE FROM T_FORM_SHORTCUT
DELETE FROM T_ITEM_APPLICATION
DELETE FROM T_ITEMS_REPORT
DELETE FROM T_KAFEL_CLIENT
DELETE FROM T_RECEVER_ORDER
DELETE FROM T_REGION_SHIP
DELETE FROM T_SALES_DIRECT
DELETE FROM T_SALES_DIRECT_DETAILS
DELETE FROM T_SALES_EXPENSES
DELETE FROM T_SALES_FRUIT
DELETE FROM T_SALES_FRUIT_DETAILS
DELETE FROM T_SALES_SHIPPING
DELETE FROM T_USERS_TAG
DELETE FROM tblAttendances
DELETE FROM tblDeleteUsers
DELETE FROM T_ITEMS_MANDOOB
DELETE FROM TA_STUDENT
DELETE FROM TA_STUDENT_DEGREE
DELETE FROM TA_STUDENT_ENTRY
DELETE FROM TA_STUDENT_GATE
DELETE FROM TA_STUDENT_GROUP
DELETE FROM TA_CARS
DELETE FROM TA_CARS_DETAILS
DELETE FROM TA_CARS_EXPENSES
DELETE FROM T_JOINT_COURSES_FREE
DELETE FROM T_JOINT_COURSES
DELETE FROM T_JOINT_SUBSCRIPTION
DELETE FROM T_JOINT_GATE
DELETE FROM T_JOINT
DELETE FROM T_SUBSCRIPTION
DELETE FROM T_GATE
DELETE FROM T_AKSAT_ITEM_DETAILS
DELETE FROM T_AKSAT_ITEMS
DELETE FROM T_BOOKING
DELETE FROM T_BOOKING_DATE
DELETE FROM T_BOOKING_DETAILS
DELETE FROM T_BOOKING_HOLIDAY
DELETE FROM T_BOOKING_QISM
DELETE FROM T_CONTAINER
DELETE FROM T_CONTAINER_DETAILS
DELETE FROM T_CONTAINER_EXPENSES
DELETE FROM T_DRIVERS
DELETE FROM T_VIDEO_LINK
DELETE FROM T_ATTACHMENT
DELETE FROM T_USERS_MAWJOOD
DELETE FROM T_SMS_MASSAGE_TYPE
DELETE FROM T_PRINTER_STORE
DELETE FROM T_NOTES
DELETE FROM T_MAWJOOD_STATUS
DELETE FROM T_AKSAT_DETAILS
DELETE FROM T_AKSAT_MODEL
DELETE FROM T_AKSAT_MODEL_DETAILS
DELETE FROM T_ITEM_CORRECT
DELETE FROM T_ITEM_RESTURANT
DELETE FROM T_ITEM_SERIAL
DELETE FROM T_ITEM_AVG_CURSER
DELETE FROM T_ITEM_MATERIAL
DELETE FROM T_ITEM_MATERIAL_EFFECTIVE
DELETE FROM T_TAG_PROCCESS WHERE TAG_PROCCESS_CODE>0
DELETE FROM TB_PROJECT
DELETE FROM TB_PROJECT_SUPPLIER
DELETE FROM TB_ZONE
DELETE FROM TB_BUILDING
DELETE FROM TB_FLOOR
DELETE FROM TB_HOUSE 
DELETE FROM TB_ATTACHMENT
DELETE FROM TB_CLIENT_INFO
DELETE FROM TB_HOUSE_TOKEN
DELETE FROM TB_MAINTENANCE
DELETE FROM TB_NEWS
DELETE FROM TB_NEWS_TYPE
DELETE FROM TB_RELATION_CLIENT
DELETE FROM TB_RENTER_HOUSE
DELETE FROM TB_SERVICE
DELETE FROM TB_SERVICE_DETAILS
DELETE FROM TB_AQED_AYGAR
DELETE FROM T_ITEM_MISWAK_INFO 
DELETE FROM T_OFFER
DELETE FROM T_OFFERS_DETAILS 
DELETE FROM T_APP_INVOICE 
DELETE FROM T_CLIENT_GIM_ENTRY 
DELETE FROM T_ITEMS_ARSHIF 
DELETE FROM T_ITEM_MATERIAL 
DELETE FROM T_ITEM_IMAGE 
DELETE FROM T_USER_ERROR 
DELETE FROM T_TELE_SCH 
DELETE FROM T_TELE_SYNC 
DELETE FROM T_CENTER_COST_INVOICE
DELETE FROM T_SALES_DISCOUNT
DELETE FROM T_SALES_IN_OUT
DELETE FROM T_SANAD_CNY
DELETE from T_SETTING
DELETE from T_SETTING_DISCOUNT
INSERT INTO [dbo].[T_SETTING_DISCOUNT] ([T_ID] ,[ST_SETTING]) VALUES(1,N'0;0;0;0;0;0')
DELETE FROM T_NOTFICATION_TITLE          
DELETE FROM T_NOTIFICATION           
DELETE FROM T_ACCOUNT_CHECKED 
DELETE from T_MAINTANACE
DELETE FROM T_ACCOUNTS WHERE ACCOUNT_PARENT=1
DELETE FROM T_ACCOUNTS WHERE ACCOUNT_PARENT=3
DELETE FROM T_ACCOUNTS WHERE ACCOUNT_PARENT=4
DELETE FROM T_ACCOUNTS WHERE ACCOUNT_PARENT=5 AND ACCOUNT_CODE <> 5000
DELETE FROM T_ACCOUNTS WHERE ACCOUNT_PARENT=6 AND ACCOUNT_CODE <> 6000
DELETE FROM T_ACCOUNTS WHERE ACCOUNT_PARENT=7 AND ACCOUNT_CODE <> 7000
DELETE FROM T_ACCOUNTS WHERE ACCOUNT_PARENT=8 AND ACCOUNT_CODE <> 8000
DELETE FROM T_ACCOUNTS WHERE ACCOUNT_PARENT=9 AND ACCOUNT_CODE <> 9000
DELETE FROM T_ACCOUNTS WHERE ACCOUNT_PARENT=21 AND ACCOUNT_CODE <> 2100000
DELETE FROM T_CLIENT WHERE  ACCOUNT_CODE <> 2100000
DELETE FROM T_AKSAT 
DELETE FROM T_BALANCE_FINAL 
DELETE FROM T_BARCODE_PRINT 
DELETE FROM T_BOX 
DELETE FROM T_BOX_REPORT_ACCOUNT 
DELETE FROM T_BOX_REPORT_ACCOUNT_DETAILS 
DELETE FROM T_SALES_IN_OUT 
DELETE FROM T_EMP_ENTER 
DELETE FROM T_EMP_ENTER_REPORT
DELETE FROM T_EMPLOYEE
DELETE FROM T_AA_ACCOUNT_NEW_YEAR
DELETE FROM T_AA_ITEM_NEW_YEAR
DELETE FROM T_CENTER_COST
DELETE FROM T_CENTER_COST_ITEMS
DELETE FROM T_VERSION
DELETE FROM T_VERSION_NEW
DELETE FROM T_VERSION_DATA
DELETE FROM T_KAFEL
DELETE FROM T_LEVEL WHERE LEVEL_CODE>1
DELETE FROM T_MANDOOB       
DELETE FROM T_MOVE WHERE ACTIVE=0 OR MOVE_CODE>300
DELETE FROM T_PRINTER WHERE T_ID > 0
DELETE FROM T_SANAD 
DELETE FROM T_SANAD_DOLLAR
DELETE FROM T_SANAD_KAYD
DELETE FROM T_SANAD_KAYD_DETAILS
DELETE FROM T_SANAD_SMAH
DELETE FROM  T_COMPANY
DELETE FROM T_SALES
DELETE FROM T_SALES_PATROL
DELETE FROM T_SALES_DETAILS
DELETE FROM T_SALES_TEMP
DELETE FROM  T_BUY
DELETE FROM  T_BUY_DETAILS 
DELETE FROM  T_BUY_EXPENSES
DELETE FROM  T_BUY_RETURN
DELETE FROM  T_BUY_RETURN_DETAILS
DELETE FROM  T_FACTORY
DELETE FROM  T_FACTORY_DETAILS 
DELETE FROM  T_ITEM_BARCODE WHERE ITEM_CODE>0
DELETE FROM  T_ITEM_CATEGORY WHERE CATEGORY_CODE>0
DELETE FROM  T_ITEM_CATEGORY_RATING WHERE CATEGORY_RATING_CODE>0
DELETE FROM  T_ITEMS WHERE ITEM_CODE>0
DELETE FROM  T_ITEM_MISWAK_INFO
DELETE FROM  T_ITEM_UNIT WHERE ITEM_CODE>0
DELETE FROM  T_STORE_BOX 
DELETE FROM  T_STORE_TRANSFARE
DELETE FROM  T_STORE_TRANSFARE_DETAILS
DELETE FROM  T_STORE_TYPE WHERE STORE_CODE >0
DELETE FROM  T_UNIT_FORM
DELETE FROM  T_UNIT_FORM_INFO
DELETE FROM  T_USER_DETAILS
DELETE FROM T_USERS WHERE USER_CODE<>1 
UPDATE T_USERS SET USER_NAME=N'Admin',USER_PWD=N'fpd2Te7d3NwzGck5qAgK8g==',ACTIVE=1,LEVEL_CODE=1,LOG_IN=0,BOX_CODE=5000,IS_ENC=1,SECURETY_CODE=3,APP_PWD=NULL,STORE_CODE=-10,TYPE_PRICE_CODE=-10,MANDOOB_CODE=-10 WHERE USER_CODE=1
UPDATE T_WORK_JOB SET D_DATE=NULL ,[START_DATE]=NULL,IS_ON_OFF=0 WHERE T_ID=1
UPDATE T_PARAMETERS SET P_VALUE=2 WHERE P_CODE=1
UPDATE T_STORE_BOX set ST_IN=0, ST_OUT=0 where BILL_NUMBER=0 UPDATE T_BUY_DETAILS SET QTY=0,TOTAL=0,TOTAL_COST=0,QTY_IN=0,QTY_OUT=0,TOTAL_OUT=0 WHERE BILL_NUMBER=0
UPDATE T_CURRANNCY SET CURRANCY_EQUAL=1,CURRANCY_PRIMARY=0
SET @SUBMIT_FLAG=1

END