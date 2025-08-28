prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_default_workspace_id=>7641001998970091
);
end;
/
prompt  WORKSPACE 7641001998970091
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   09:08 Thursday August 28, 2025
--   Exported By:     DEMO
--   Export Type:     Workspace Export
--   Version:         24.2.5
--   Instance ID:     7640817054811121
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_240200
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>7641001998970091);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace DEMO...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 7641478508970314
 ,p_provisioning_company_id => 7641001998970091
 ,p_short_name => 'DEMO'
 ,p_display_name => 'DEMO'
 ,p_first_schema_provisioned => 'WKSP_DEMO'
 ,p_company_schemas => 'DEMO:WKSP_DEMO'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'DEMO'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'DEMO'
 ,p_files_version => 1
 ,p_is_extension_yn => 'N'
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1405898031030452,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1405745204030452,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1405683304030451,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '10562197545504601',
  p_user_name                    => 'ALLEN',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'vidisha.shet@oracle.com',
  p_web_password                 => '01A08E639F2E048B45F3FFAB42C16F86A58BEDB0F519ABD90F1AD6AF4D2968FB76929BE63135ADFE8CE3F5B5A52FAA9B2139ADAD16B7BFE1CA9FE1B124220F30',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202504280716','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9791683097006802',
  p_user_name                    => 'ANACHATT',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'ANACHATT@yourdomain.com',
  p_web_password                 => '464706991EDC6A4DB029BE51620243EF6313B4EF6C4B15BE017B30F52617D49604E209F6661D1D1862B430102F8CC0AAD3719EB5B748D97FCAD32E7E7AE474F4',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202408201149','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9792068767006820',
  p_user_name                    => 'BO',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'BO@yourdomain.com',
  p_web_password                 => 'D0CE3EA182CCB2F5BF711927D44F60EEB92B1DAA08A8AC60C25C8B346B0170A237A4FE5617D567D108FF16F339261F37674326207B8F908B15F03125AE04FA8C',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202408200000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '10563858791489664',
  p_user_name                    => 'CLARK',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'jainam.doshi@oracle.com',
  p_web_password                 => '2B3C43DDF093EDAC9FE331ECAEE1F40331FC64DF0263E2811D03F23C227F4AACF05FF9CFA8CDF77773BDF6E766E132617483A2CF79BFF648E832113C2662CD86',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202504250000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9792897875006856',
  p_user_name                    => 'DARYL',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'DARYL@yourdomain.com',
  p_web_password                 => 'B8FF6565BCA12FD1896450C23D37B27D16BDBDA629588B8C1D348D20E86E6A68A7A961CBB6D7B8F084EFA9737E2554207ECEF160C4996858551741FE66D12AE3',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202408200000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '7641296472970091',
  p_user_name                    => 'DEMO',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => '',
  p_web_password                 => 'FFF0362D3F9EB75E22EDB739A1879C048982505AC6BCDEB48703897FBD3059A52130A96964374FAA38C1C3F81198C9E91099A23150B28B41E5B147440382B739',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202508060516','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9160018385230046',
  p_user_name                    => 'JAINAM.DOSHI@ORACLE.COM',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'jainam.doshi@oracle.com',
  p_web_password                 => '5A300ED108690ADDA0DFA520097ABE9994005C70511F9E6340A3587FE73107C80FC10F015A88FBBF0C0F42BDBD36AD74B90A96D15C507BF1B4E37CC668F60BED',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1405683304030451:1405745204030452:1405898031030452:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202504150000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9791808007006811',
  p_user_name                    => 'JANE',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'JANE@yourdomain.com',
  p_web_password                 => '83AA8DDC712BFB7BFDE87875F223D88EB45DA2BCB11665803C540F4327939458C7551A60037059C8AB39752F91D1BFFDACDE694660973B30F4CCCC4DE3901124',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202504250625','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9792467408006838',
  p_user_name                    => 'MARTIN',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'MARTIN@yourdomain.com',
  p_web_password                 => '3CF3BEB8ED67008E151160ABBBB88BD6301ED9884028565D04E1985E6CB276304EEDC671892A121F627C96D2B65AEFEC563DFBD16745ED402D1754EC2C5251C2',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202408200000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9792289068006829',
  p_user_name                    => 'PAT',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'PAT@yourdomain.com',
  p_web_password                 => '252604E164A638F5D5AE678BDD721800B0D3FB5C70A7BB1535F0CA61EB7D3DCEBA15CA7CDBA6201DAAA7B146D450A27E509AF023B86271AA1A7D697717B7A6AD',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202504250622','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9793002761006865',
  p_user_name                    => 'RAJESH',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'RAJESH@yourdomain.com',
  p_web_password                 => '57B1A2179387E324A91FAEC6DC7BCA3A8FC626747912F5331AC8878264C3A942717F66AA0321F96F2855BF8201A45F84D5F5A5F07A2A21EEB886FCB5939ED58D',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202408201150','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9791438593006788',
  p_user_name                    => 'ROBERT',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'ROBERT@yourdomain.com',
  p_web_password                 => 'FDF9181B6FF7694549311A2EB101D39575422F3809FE8FC357F74AD9A75A0685599A2BA5DE3930328A294B822D6792A8EAB3EAF48DEB8DE720AC97643D3A8405',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202408200000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9793211588006875',
  p_user_name                    => 'STEVE',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'STEVE@yourdomain.com',
  p_web_password                 => '1214775E257E702A73DCFB10939E4B1A1F38B7386030CEA32379EAFFE2487B084D72A9A74DECF60DE7F2ED1D89137E788D8CE6D28D97BDA6F517CCB31BD5FD4F',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202504250620','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9792601372006847',
  p_user_name                    => 'SUSIE',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'SUSIE@yourdomain.com',
  p_web_password                 => '88D4D98D3E220C1733E2A5B6C401435287C933C4A9DB1DE69F8F50383C9C497B748C8476AE47C4F348004A50FED9CDDE4E4AC302B89D1C9B2FC0913C76C6E005',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202408200000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '14858010310673712',
  p_user_name                    => 'TEST_USER',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'test_user@oracle.com',
  p_web_password                 => '866B0C492463FC80DEA52E3ACB53277CE3885BF2CB0167F1F34B5B556F23CC7553F345540E2448CE7BAC03BD9681D5625502E2B2C967C79FD934954946944861',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202508210000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9160482010225483',
  p_user_name                    => 'VIDISHA.SHET@ORACLE.COM',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'vidisha.shet@oracle.com',
  p_web_password                 => 'B4DA412FC5E58364401E4B0C46359D867DC2A9ED32BD3076ACD51856F5F6E4B200A4D3535DE09270F72B51F89FC7FC49908F6287151896D2E3B9AC3DFCDFA26D',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1405683304030451:1405745204030452:1405898031030452:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202504150000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '11181110556318378',
  p_user_name                    => 'WARD',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'vidisha.shet@oracle.com',
  p_web_password                 => 'F3E8E3CD828AFF3CB0B3566E82F3CCF7FA809433BA64C678A424BB3AA3BF0AA696B226937601825B9DB5440A9AFEC346A68AD0864D1DE12CDB6735530CA51A70',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_DEMO',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202504290000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ... Extension Links
 
 
prompt ... Extension Grants
 
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
