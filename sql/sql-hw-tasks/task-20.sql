select   *, 
         -- -----------------------------------------------------
        to_hex(
            sha512(
                concat( 
                    coalesce(account,                         '<field_account>'),
                    coalesce(campaign,                        '<field_campaign>'),
                    coalesce(search_keyword,                  '<field_search_keyword>'),
                    coalesce(headline,                        '<field_headline>'),
                    coalesce(headline_1,                      '<field_headline_1>'),
                    coalesce(headline_2,                      '<field_headline_2>'),
                    coalesce(expanded_text_ad_headline_3,     '<field_expanded_text_ad_headline_3>'),
                    coalesce(short_headline,                  '<field_short_headline>'),
                    coalesce(long_headline,                   '<field_long_headline>'),
                    coalesce(description,                     '<field_description>'),
                    coalesce(expanded_text_ad_description_2,  '<field_expanded_text_ad_description_2>'),
                    coalesce(description_line_1,              '<field_description_line_1>'),
                    coalesce(description_line_2,              '<field_description_line_2>'),
                    coalesce(display_url,                     '<field_display_url>'),
                    coalesce(ad,                              '<field_ad>'),
                    coalesce(path_1,                          '<field_path_1>'),
                    coalesce(path_2,                          '<field_path_2>'),
                    coalesce(business_name,                   '<field_business_name>'),
                    coalesce(ad_group,                        '<field_ad_group>'),
                    coalesce(search_term,                     '<field_search_term>'),
                    coalesce(device,                          '<field_device>'),
                    coalesce(network_with_search_partners,    '<field_network_with_search_partners>'),
                    coalesce(time_zone,                       '<field_time_zone>'),
                    coalesce(currency,                        '<field_currency>'),
                    coalesce(labels_on_account,               '<field_labels_on_account>'),
                    coalesce(ad_state,                        '<field_ad_state>'),
                    coalesce(ad_status,                       '<field_ad_status>'),
                    coalesce(ad_final_url,                    '<field_ad_final_url>'),
                    coalesce(quality_score,                   '<field_quality_score>'),
                    coalesce(month,                           '<field_month>'),
                    coalesce(day,                             '<field_day>'),
                    coalesce(day_of_week,                     '<field_day_of_week>'),
                    coalesce(year,                            '<field_year>'),
                    coalesce(ad_relevance,                    '<field_ad_relevance>'),
                    coalesce(landing_page_experience,         '<field_landing_page_experience>'),
                    coalesce(expected_clickthrough_rate,      '<field_expected_clickthrough_rate>'),
                    coalesce(search_term_match_type,          '<field_search_term_match_type>'),
                    coalesce(search_keyword_status,           '<field_search_keyword_status>'),
                    coalesce(clicks,                          '<field_clicks>'),
                    coalesce(impressions,                     '<field_impressions>'),
                    coalesce(cost,                            '<field_cost>'),
                    coalesce(ctr,                             '<field_ctr>'),
                    coalesce(avg_cpc,                         '<field_avg_cpc>'),
                    coalesce(avg_position,                    '<field_avg_position>'),
                    coalesce(conversions,                     '<field_conversions>'),
                    coalesce(cost_divided_by_conv,            '<field_cost_divided_by_conv>'),
                    coalesce(conv_rate,                       '<field_conv_rate>'),
                    coalesce(view_through_conv,               '<field_view_through_conv>'),
                    coalesce(all_conv,                        '<field_all_conv>'),
                    coalesce(cross_device_conv,               '<field_cross_device_conv>'),
                    coalesce(all_conv_rate,                   '<field_all_conv_rate>')
                ) 
            )
        ) hash_sha512
from `data-science-course-226116.sql_lessons.google_ads`