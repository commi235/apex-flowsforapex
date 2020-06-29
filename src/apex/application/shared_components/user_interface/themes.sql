prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 100
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>2400405578329584
,p_default_application_id=>984337
,p_default_id_offset=>329200360457307309
,p_default_owner=>'MT_NDBRUIJN'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(12990620171372853929)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(12990719765290854136)
,p_default_dialog_template=>wwv_flow_api.id(12990725549579854143)
,p_error_template=>wwv_flow_api.id(12990730951162854157)
,p_printer_friendly_template=>wwv_flow_api.id(12990719765290854136)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(12990730951162854157)
,p_default_button_template=>wwv_flow_api.id(12990622985747853963)
,p_default_region_template=>wwv_flow_api.id(12990683665037854071)
,p_default_chart_template=>wwv_flow_api.id(12990683665037854071)
,p_default_form_template=>wwv_flow_api.id(12990683665037854071)
,p_default_reportr_template=>wwv_flow_api.id(12990683665037854071)
,p_default_tabform_template=>wwv_flow_api.id(12990683665037854071)
,p_default_wizard_template=>wwv_flow_api.id(12990683665037854071)
,p_default_menur_template=>wwv_flow_api.id(12990674265687854058)
,p_default_listr_template=>wwv_flow_api.id(12990683665037854071)
,p_default_irr_template=>wwv_flow_api.id(12990685552545854072)
,p_default_report_template=>wwv_flow_api.id(12990660920190854027)
,p_default_label_template=>wwv_flow_api.id(12990624065682853969)
,p_default_menu_template=>wwv_flow_api.id(12990621518752853963)
,p_default_calendar_template=>wwv_flow_api.id(12990621422928853957)
,p_default_list_template=>wwv_flow_api.id(12990632418005853985)
,p_default_nav_list_template=>wwv_flow_api.id(12990633524503853988)
,p_default_top_nav_list_temp=>wwv_flow_api.id(12990633524503853988)
,p_default_side_nav_list_temp=>wwv_flow_api.id(12990635217963853989)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(12990707719060854097)
,p_default_dialogr_template=>wwv_flow_api.id(12990711074419854100)
,p_default_option_label=>wwv_flow_api.id(12990624065682853969)
,p_default_required_label=>wwv_flow_api.id(12990623766981853969)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(12990635600581853991)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.5/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
