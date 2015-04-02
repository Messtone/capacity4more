<?php
/**
 * @file
 * Hooks provided by the capacity4more Organic Group Functionality module.
 */

/**
 * @addtogroup hooks
 * @{
 */


/**
 * Define the features available for groups.
 *
 * You need to implement the hook_c4m_og_feature() hook to define
 * what features should be made available.
 *
 * @return array
 *   An array of features and their settings. The keys are used to identify
 *   the available features.
 *   Each feature has the following data:
 *   - name : The name of the feature.
 *   - description : The description of the feature.
 *   - machine_name : The machine name of the feature.
 *   - weight : The weight used to sort the feature in listings.
 *   - default : The default state of the feature.
 */
function hook_c4m_og_feature_info() {
  return array(
    'c4m_features_og_group_dashboard' => array(
      'name' => t('Dashboard'),
      'description' => t('A dashboard overview.'),
      'machine_name' => 'c4m_features_og_group_dashboard',
      'weight' => 0,
      'default' => TRUE,
    ),
  );
}


/**
 * @} End of "addtogroup hooks".
 */
