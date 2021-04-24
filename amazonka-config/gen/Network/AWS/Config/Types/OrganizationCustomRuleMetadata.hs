{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.OrganizationCustomRuleMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.OrganizationCustomRuleMetadata where

import Network.AWS.Config.Types.MaximumExecutionFrequency
import Network.AWS.Config.Types.OrganizationConfigRuleTriggerType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object that specifies organization custom rule metadata such as resource type, resource ID of AWS resource, Lamdba function ARN, and organization trigger types that trigger AWS Config to evaluate your AWS resources against a rule. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic.
--
--
--
-- /See:/ 'organizationCustomRuleMetadata' smart constructor.
data OrganizationCustomRuleMetadata = OrganizationCustomRuleMetadata'
  { _ocrmTagKeyScope ::
      !( Maybe
           Text
       ),
    _ocrmMaximumExecutionFrequency ::
      !( Maybe
           MaximumExecutionFrequency
       ),
    _ocrmResourceIdScope ::
      !( Maybe
           Text
       ),
    _ocrmInputParameters ::
      !( Maybe
           Text
       ),
    _ocrmDescription ::
      !( Maybe
           Text
       ),
    _ocrmResourceTypesScope ::
      !( Maybe
           [Text]
       ),
    _ocrmTagValueScope ::
      !( Maybe
           Text
       ),
    _ocrmLambdaFunctionARN ::
      !Text,
    _ocrmOrganizationConfigRuleTriggerTypes ::
      ![OrganizationConfigRuleTriggerType]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'OrganizationCustomRuleMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrmTagKeyScope' - One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
--
-- * 'ocrmMaximumExecutionFrequency' - The maximum frequency with which AWS Config runs evaluations for a rule. Your custom rule is triggered when AWS Config delivers the configuration snapshot. For more information, see 'ConfigSnapshotDeliveryProperties' .
--
-- * 'ocrmResourceIdScope' - The ID of the AWS resource that was evaluated.
--
-- * 'ocrmInputParameters' - A string, in JSON format, that is passed to organization config rule Lambda function.
--
-- * 'ocrmDescription' - The description that you provide for organization config rule.
--
-- * 'ocrmResourceTypesScope' - The type of the AWS resource that was evaluated.
--
-- * 'ocrmTagValueScope' - The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
--
-- * 'ocrmLambdaFunctionARN' - The lambda function ARN.
--
-- * 'ocrmOrganizationConfigRuleTriggerTypes' - The type of notification that triggers AWS Config to run an evaluation for a rule. You can specify the following notification types:     * @ConfigurationItemChangeNotification@ - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.     * @OversizedConfigurationItemChangeNotification@ - Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.     * @ScheduledNotification@ - Triggers a periodic evaluation at the frequency specified for @MaximumExecutionFrequency@ .
organizationCustomRuleMetadata ::
  -- | 'ocrmLambdaFunctionARN'
  Text ->
  OrganizationCustomRuleMetadata
organizationCustomRuleMetadata pLambdaFunctionARN_ =
  OrganizationCustomRuleMetadata'
    { _ocrmTagKeyScope =
        Nothing,
      _ocrmMaximumExecutionFrequency = Nothing,
      _ocrmResourceIdScope = Nothing,
      _ocrmInputParameters = Nothing,
      _ocrmDescription = Nothing,
      _ocrmResourceTypesScope = Nothing,
      _ocrmTagValueScope = Nothing,
      _ocrmLambdaFunctionARN =
        pLambdaFunctionARN_,
      _ocrmOrganizationConfigRuleTriggerTypes =
        mempty
    }

-- | One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
ocrmTagKeyScope :: Lens' OrganizationCustomRuleMetadata (Maybe Text)
ocrmTagKeyScope = lens _ocrmTagKeyScope (\s a -> s {_ocrmTagKeyScope = a})

-- | The maximum frequency with which AWS Config runs evaluations for a rule. Your custom rule is triggered when AWS Config delivers the configuration snapshot. For more information, see 'ConfigSnapshotDeliveryProperties' .
ocrmMaximumExecutionFrequency :: Lens' OrganizationCustomRuleMetadata (Maybe MaximumExecutionFrequency)
ocrmMaximumExecutionFrequency = lens _ocrmMaximumExecutionFrequency (\s a -> s {_ocrmMaximumExecutionFrequency = a})

-- | The ID of the AWS resource that was evaluated.
ocrmResourceIdScope :: Lens' OrganizationCustomRuleMetadata (Maybe Text)
ocrmResourceIdScope = lens _ocrmResourceIdScope (\s a -> s {_ocrmResourceIdScope = a})

-- | A string, in JSON format, that is passed to organization config rule Lambda function.
ocrmInputParameters :: Lens' OrganizationCustomRuleMetadata (Maybe Text)
ocrmInputParameters = lens _ocrmInputParameters (\s a -> s {_ocrmInputParameters = a})

-- | The description that you provide for organization config rule.
ocrmDescription :: Lens' OrganizationCustomRuleMetadata (Maybe Text)
ocrmDescription = lens _ocrmDescription (\s a -> s {_ocrmDescription = a})

-- | The type of the AWS resource that was evaluated.
ocrmResourceTypesScope :: Lens' OrganizationCustomRuleMetadata [Text]
ocrmResourceTypesScope = lens _ocrmResourceTypesScope (\s a -> s {_ocrmResourceTypesScope = a}) . _Default . _Coerce

-- | The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
ocrmTagValueScope :: Lens' OrganizationCustomRuleMetadata (Maybe Text)
ocrmTagValueScope = lens _ocrmTagValueScope (\s a -> s {_ocrmTagValueScope = a})

-- | The lambda function ARN.
ocrmLambdaFunctionARN :: Lens' OrganizationCustomRuleMetadata Text
ocrmLambdaFunctionARN = lens _ocrmLambdaFunctionARN (\s a -> s {_ocrmLambdaFunctionARN = a})

-- | The type of notification that triggers AWS Config to run an evaluation for a rule. You can specify the following notification types:     * @ConfigurationItemChangeNotification@ - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.     * @OversizedConfigurationItemChangeNotification@ - Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.     * @ScheduledNotification@ - Triggers a periodic evaluation at the frequency specified for @MaximumExecutionFrequency@ .
ocrmOrganizationConfigRuleTriggerTypes :: Lens' OrganizationCustomRuleMetadata [OrganizationConfigRuleTriggerType]
ocrmOrganizationConfigRuleTriggerTypes = lens _ocrmOrganizationConfigRuleTriggerTypes (\s a -> s {_ocrmOrganizationConfigRuleTriggerTypes = a}) . _Coerce

instance FromJSON OrganizationCustomRuleMetadata where
  parseJSON =
    withObject
      "OrganizationCustomRuleMetadata"
      ( \x ->
          OrganizationCustomRuleMetadata'
            <$> (x .:? "TagKeyScope")
            <*> (x .:? "MaximumExecutionFrequency")
            <*> (x .:? "ResourceIdScope")
            <*> (x .:? "InputParameters")
            <*> (x .:? "Description")
            <*> (x .:? "ResourceTypesScope" .!= mempty)
            <*> (x .:? "TagValueScope")
            <*> (x .: "LambdaFunctionArn")
            <*> ( x .:? "OrganizationConfigRuleTriggerTypes"
                    .!= mempty
                )
      )

instance Hashable OrganizationCustomRuleMetadata

instance NFData OrganizationCustomRuleMetadata

instance ToJSON OrganizationCustomRuleMetadata where
  toJSON OrganizationCustomRuleMetadata' {..} =
    object
      ( catMaybes
          [ ("TagKeyScope" .=) <$> _ocrmTagKeyScope,
            ("MaximumExecutionFrequency" .=)
              <$> _ocrmMaximumExecutionFrequency,
            ("ResourceIdScope" .=) <$> _ocrmResourceIdScope,
            ("InputParameters" .=) <$> _ocrmInputParameters,
            ("Description" .=) <$> _ocrmDescription,
            ("ResourceTypesScope" .=)
              <$> _ocrmResourceTypesScope,
            ("TagValueScope" .=) <$> _ocrmTagValueScope,
            Just ("LambdaFunctionArn" .= _ocrmLambdaFunctionARN),
            Just
              ( "OrganizationConfigRuleTriggerTypes"
                  .= _ocrmOrganizationConfigRuleTriggerTypes
              )
          ]
      )
