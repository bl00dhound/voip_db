UPDATE ACLOSE_STAT SET SITE_ID = 65 WHERE SITE_ID = 45;
UPDATE ACLOSE_STAT SET RPARAM_ID = 489 WHERE RPARAM_ID = 490;
UPDATE ACLOSE_STAT SET RPARAM_ID = 932 WHERE RPARAM_ID = 935;
UPDATE AUTOCLOSE_RULES SET SITE_ID = 65 WHERE SITE_ID = 45;
UPDATE AUTOCLOSE_RULES SET SITE_ID = 118 WHERE SITE_ID = 7;
UPDATE AUTOCLOSE_RULES SET SITE_ID = 136 WHERE SITE_ID = 92;
UPDATE AUTOCLOSE_RULES SET SITE_ID = 143 WHERE SITE_ID = 99;
update BALANCE_HISTORY set OPER_ID = 67 where OPER_ID not in (select distinct ID from operators);
update BUH_CLIENT_ATTR set OPER_ID = 67 where OPER_ID not in (select distinct ID from operators);
update BUHDOCS set  OPER_ID = 67 where OPER_ID not in (select distinct ID from operators);
update CURRENCY_RATES set SCHM_ID = 7914 where SCHM_ID not  in (select distinct ID from SCHEME_INFO);
update PAY set OPER_ID = 67 where OPER_ID not in (select distinct ID from operators);
update user_agents set user_id = 27 where user_id not in (select distinct user_id from user_info);


ALTER TABLE ACLOSE_STAT ADD CONSTRAINT FK_ACLOSE_STAT__SITE_ID FOREIGN KEY (SITE_ID) REFERENCES SITE(ID);
ALTER TABLE ACLOSE_STAT ADD CONSTRAINT ACLOSE_STAT_RPARAM_ID_FK FOREIGN KEY (RPARAM_ID) REFERENCES rparam (ID);
ALTER TABLE ACTIONS ADD CONSTRAINT ACTIONS_FORMS_ID_FK FOREIGN KEY (FORM_ID) REFERENCES FORMS (ID);
alter table AUTOCLOSE_RULES add constraint AUTOCLOSE_RULES_SITE_ID_fk foreign key (SITE_ID) references SITE (ID);
alter table BALANCE_HISTORY add constraint BALANCE_HISTORY_operators_ID_fk foreign key (OPER_ID) references operators (ID);
alter table BUH_CLIENT_ATTR add constraint BUH_CLIENT_ATTR_operators_ID_fk foreign key (OPER_ID) references operators (ID);
alter table BUHDOCS add constraint BUHDOCS_operators_ID_fk foreign key (OPER_ID) references operators (ID);
alter table CDR_BILL201901 add constraint CDR_BILL201901_SERVERS_ID_fk foreign key (SERVER_ID) references SERVERS (ID);
alter table CURRENCY_RATES add constraint CURRENCY_RATES_SCHEME_INFO_id_fk foreign key (SCHM_ID) references SCHEME_INFO (id);
alter table DEST_CODE add constraint DEST_CODE_DEST_ID_fk foreign key (DEST_ID) references DEST (ID);
alter table FORMS add constraint FORMS_MENUS_ID_fk foreign key (MENU_ID) references MENUS (ID);
alter table LOGS add constraint LOGS_FORMS_ID_fk foreign key (FORM_ID) references FORMS (ID);
alter table LOGS add constraint LOGS_ACTIONS_ID_fk foreign key (ACTION_ID) references ACTIONS (ID);
alter table PAY add constraint PAY_operators_ID_fk foreign key (OPER_ID) references operators (ID);
alter table SITE add constraint SITE_operators_ID_fk foreign key (OPER_ID) references operators (ID);
alter table user_agents add constraint user_agents_user_info_user_id_fk foreign key (user_id) references user_info (user_id);
