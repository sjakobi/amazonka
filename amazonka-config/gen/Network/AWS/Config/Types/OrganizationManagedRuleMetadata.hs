{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.OrganizationManagedRuleMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.OrganizationManagedRuleMetadata where

import Network.AWS.Config.Types.MaximumExecutionFrequency
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object that specifies organization managed rule metadata such as resource type and ID of AWS resource along with the rule identifier. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic.
--
--
--
-- /See:/ 'organizationManagedRuleMetadata' smart constructor.
data OrganizationManagedRuleMetadata = OrganizationManagedRuleMetadata'
  { _omrmTagKeyScope ::
      !( Maybe
           Text
       ),
    _omrmMaximumExecutionFrequency ::
      !( Maybe
           MaximumExecutionFrequency
       ),
    _omrmResourceIdScope ::
      !( Maybe
           Text
       ),
    _omrmInputParameters ::
      !( Maybe
           Text
       ),
    _omrmDescription ::
      !( Maybe
           Text
       ),
    _omrmResourceTypesScope ::
      !( Maybe
           [Text]
       ),
    _omrmTagValueScope ::
      !( Maybe
           Text
       ),
    _omrmRuleIdentifier ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'OrganizationManagedRuleMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omrmTagKeyScope' - One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
--
-- * 'omrmMaximumExecutionFrequency' - The maximum frequency with which AWS Config runs evaluations for a rule. You are using an AWS managed rule that is triggered at a periodic frequency.
--
-- * 'omrmResourceIdScope' - The ID of the AWS resource that was evaluated.
--
-- * 'omrmInputParameters' - A string, in JSON format, that is passed to organization config rule Lambda function.
--
-- * 'omrmDescription' - The description that you provide for organization config rule.
--
-- * 'omrmResourceTypesScope' - The type of the AWS resource that was evaluated.
--
-- * 'omrmTagValueScope' - The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
--
-- * 'omrmRuleIdentifier' - For organization config managed rules, a predefined identifier from a list. For example, @IAM_PASSWORD_POLICY@ is a managed rule. To reference a managed rule, see <https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html Using AWS Managed Config Rules> .
organizationManagedRuleMetadata ::
  -- | 'omrmRuleIdentifier'
  Text ->
  OrganizationManagedRuleMetadata
organizationManagedRuleMetadata pRuleIdentifier_ =
  OrganizationManagedRuleMetadata'
    { _omrmTagKeyScope =
        Nothing,
      _omrmMaximumExecutionFrequency = Nothing,
      _omrmResourceIdScope = Nothing,
      _omrmInputParameters = Nothing,
      _omrmDescription = Nothing,
      _omrmResourceTypesScope = Nothing,
      _omrmTagValueScope = Nothing,
      _omrmRuleIdentifier = pRuleIdentifier_
    }

-- | One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
omrmTagKeyScope :: Lens' OrganizationManagedRuleMetadata (Maybe Text)
omrmTagKeyScope = lens _omrmTagKeyScope (\s a -> s {_omrmTagKeyScope = a})

-- | The maximum frequency with which AWS Config runs evaluations for a rule. You are using an AWS managed rule that is triggered at a periodic frequency.
omrmMaximumExecutionFrequency :: Lens' OrganizationManagedRuleMetadata (Maybe MaximumExecutionFrequency)
omrmMaximumExecutionFrequency = lens _omrmMaximumExecutionFrequency (\s a -> s {_omrmMaximumExecutionFrequency = a})

-- | The ID of the AWS resource that was evaluated.
omrmResourceIdScope :: Lens' OrganizationManagedRuleMetadata (Maybe Text)
omrmResourceIdScope = lens _omrmResourceIdScope (\s a -> s {_omrmResourceIdScope = a})

-- | A string, in JSON format, that is passed to organization config rule Lambda function.
omrmInputParameters :: Lens' OrganizationManagedRuleMetadata (Maybe Text)
omrmInputParameters = lens _omrmInputParameters (\s a -> s {_omrmInputParameters = a})

-- | The description that you provide for organization config rule.
omrmDescription :: Lens' OrganizationManagedRuleMetadata (Maybe Text)
omrmDescription = lens _omrmDescription (\s a -> s {_omrmDescription = a})

-- | The type of the AWS resource that was evaluated.
omrmResourceTypesScope :: Lens' OrganizationManagedRuleMetadata [Text]
omrmResourceTypesScope = lens _omrmResourceTypesScope (\s a -> s {_omrmResourceTypesScope = a}) . _Default . _Coerce

-- | The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
omrmTagValueScope :: Lens' OrganizationManagedRuleMetadata (Maybe Text)
omrmTagValueScope = lens _omrmTagValueScope (\s a -> s {_omrmTagValueScope = a})

-- | For organization config managed rules, a predefined identifier from a list. For example, @IAM_PASSWORD_POLICY@ is a managed rule. To reference a managed rule, see <https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html Using AWS Managed Config Rules> .
omrmRuleIdentifier :: Lens' OrganizationManagedRuleMetadata Text
omrmRuleIdentifier = lens _omrmRuleIdentifier (\s a -> s {_omrmRuleIdentifier = a})

instance FromJSON OrganizationManagedRuleMetadata where
  parseJSON =
    withObject
      "OrganizationManagedRuleMetadata"
      ( \x ->
          OrganizationManagedRuleMetadata'
            <$> (x .:? "TagKeyScope")
            <*> (x .:? "MaximumExecutionFrequency")
            <*> (x .:? "ResourceIdScope")
            <*> (x .:? "InputParameters")
            <*> (x .:? "Description")
            <*> (x .:? "ResourceTypesScope" .!= mempty)
            <*> (x .:? "TagValueScope")
            <*> (x .: "RuleIdentifier")
      )

instance Hashable OrganizationManagedRuleMetadata

instance NFData OrganizationManagedRuleMetadata

instance ToJSON OrganizationManagedRuleMetadata where
  toJSON OrganizationManagedRuleMetadata' {..} =
    object
      ( catMaybes
          [ ("TagKeyScope" .=) <$> _omrmTagKeyScope,
            ("MaximumExecutionFrequency" .=)
              <$> _omrmMaximumExecutionFrequency,
            ("ResourceIdScope" .=) <$> _omrmResourceIdScope,
            ("InputParameters" .=) <$> _omrmInputParameters,
            ("Description" .=) <$> _omrmDescription,
            ("ResourceTypesScope" .=)
              <$> _omrmResourceTypesScope,
            ("TagValueScope" .=) <$> _omrmTagValueScope,
            Just ("RuleIdentifier" .= _omrmRuleIdentifier)
          ]
      )
