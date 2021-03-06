prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>2400405578329584
,p_default_application_id=>984337
,p_default_id_offset=>0
,p_default_owner=>'MT_NDBRUIJN'
);
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(12495499263265880052)
,p_name=>'Save Flow'
,p_alias=>'SAVE_FLOW'
,p_page_mode=>'MODAL'
,p_step_title=>'Save Flow'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MOKLEIN'
,p_last_upd_yyyymmddhh24miss=>'20200702203454'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12494356860095002311)
,p_plug_name=>'Form'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(12495582446800880234)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12494289448867384067)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12494356860095002311)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_api.id(12495521691135880126)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12493492953577758629)
,p_branch_name=>'Redirect'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:P1_NAME:&P2_NAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12494289786116385321)
,p_name=>'P2_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12494356860095002311)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'DIAGRAMS'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when=>'P2_NAME'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(12495522847445880132)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12493493083489758630)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Diagram'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_dgrm_content clob;',
'begin',
'  select ac.clob001',
'    into l_dgrm_content',
'    from apex_collections ac',
'   where ac.collection_name = ''CLOB_CONTENT''',
'  ;',
'  flow_bpmn_parser_pkg.upload_and_parse',
'  ( ',
'    pi_dgrm_name    => :p2_name',
'  , pi_dgrm_content => l_dgrm_content',
'  );',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
