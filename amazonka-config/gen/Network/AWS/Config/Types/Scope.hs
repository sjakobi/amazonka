{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.Scope
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.Scope where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Defines which resources trigger an evaluation for an AWS Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.
--
--
--
-- /See:/ 'scope' smart constructor.
data Scope = Scope'
  { _sTagValue :: !(Maybe Text),
    _sTagKey :: !(Maybe Text),
    _sComplianceResourceId :: !(Maybe Text),
    _sComplianceResourceTypes :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Scope' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTagValue' - The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule. If you specify a value for @TagValue@ , you must also specify a value for @TagKey@ .
--
-- * 'sTagKey' - The tag key that is applied to only those AWS resources that you want to trigger an evaluation for the rule.
--
-- * 'sComplianceResourceId' - The ID of the only AWS resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for @ComplianceResourceTypes@ .
--
-- * 'sComplianceResourceTypes' - The resource types of only those AWS resources that you want to trigger an evaluation for the rule. You can only specify one type if you also specify a resource ID for @ComplianceResourceId@ .
scope ::
  Scope
scope =
  Scope'
    { _sTagValue = Nothing,
      _sTagKey = Nothing,
      _sComplianceResourceId = Nothing,
      _sComplianceResourceTypes = Nothing
    }

-- | The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule. If you specify a value for @TagValue@ , you must also specify a value for @TagKey@ .
sTagValue :: Lens' Scope (Maybe Text)
sTagValue = lens _sTagValue (\s a -> s {_sTagValue = a})

-- | The tag key that is applied to only those AWS resources that you want to trigger an evaluation for the rule.
sTagKey :: Lens' Scope (Maybe Text)
sTagKey = lens _sTagKey (\s a -> s {_sTagKey = a})

-- | The ID of the only AWS resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for @ComplianceResourceTypes@ .
sComplianceResourceId :: Lens' Scope (Maybe Text)
sComplianceResourceId = lens _sComplianceResourceId (\s a -> s {_sComplianceResourceId = a})

-- | The resource types of only those AWS resources that you want to trigger an evaluation for the rule. You can only specify one type if you also specify a resource ID for @ComplianceResourceId@ .
sComplianceResourceTypes :: Lens' Scope [Text]
sComplianceResourceTypes = lens _sComplianceResourceTypes (\s a -> s {_sComplianceResourceTypes = a}) . _Default . _Coerce

instance FromJSON Scope where
  parseJSON =
    withObject
      "Scope"
      ( \x ->
          Scope'
            <$> (x .:? "TagValue")
            <*> (x .:? "TagKey")
            <*> (x .:? "ComplianceResourceId")
            <*> (x .:? "ComplianceResourceTypes" .!= mempty)
      )

instance Hashable Scope

instance NFData Scope

instance ToJSON Scope where
  toJSON Scope' {..} =
    object
      ( catMaybes
          [ ("TagValue" .=) <$> _sTagValue,
            ("TagKey" .=) <$> _sTagKey,
            ("ComplianceResourceId" .=)
              <$> _sComplianceResourceId,
            ("ComplianceResourceTypes" .=)
              <$> _sComplianceResourceTypes
          ]
      )
