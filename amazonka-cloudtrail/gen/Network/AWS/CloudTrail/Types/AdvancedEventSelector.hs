{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudTrail.Types.AdvancedEventSelector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudTrail.Types.AdvancedEventSelector where

import Network.AWS.CloudTrail.Types.AdvancedFieldSelector
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Advanced event selectors let you create fine-grained selectors for the following AWS CloudTrail event record ﬁelds. They help you control costs by logging only those events that are important to you. For more information about advanced event selectors, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html Logging data events for trails> in the /AWS CloudTrail User Guide/ .
--
--
--     * @readOnly@
--
--     * @eventSource@
--
--     * @eventName@
--
--     * @eventCategory@
--
--     * @resources.type@
--
--     * @resources.ARN@
--
--
--
-- You cannot apply both event selectors and advanced event selectors to a trail.
--
--
-- /See:/ 'advancedEventSelector' smart constructor.
data AdvancedEventSelector = AdvancedEventSelector'
  { _aesName ::
      !(Maybe Text),
    _aesFieldSelectors ::
      !( List1
           AdvancedFieldSelector
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AdvancedEventSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aesName' - An optional, descriptive name for an advanced event selector, such as "Log data events for only two S3 buckets".
--
-- * 'aesFieldSelectors' - Contains all selector statements in an advanced event selector.
advancedEventSelector ::
  -- | 'aesFieldSelectors'
  NonEmpty AdvancedFieldSelector ->
  AdvancedEventSelector
advancedEventSelector pFieldSelectors_ =
  AdvancedEventSelector'
    { _aesName = Nothing,
      _aesFieldSelectors = _List1 # pFieldSelectors_
    }

-- | An optional, descriptive name for an advanced event selector, such as "Log data events for only two S3 buckets".
aesName :: Lens' AdvancedEventSelector (Maybe Text)
aesName = lens _aesName (\s a -> s {_aesName = a})

-- | Contains all selector statements in an advanced event selector.
aesFieldSelectors :: Lens' AdvancedEventSelector (NonEmpty AdvancedFieldSelector)
aesFieldSelectors = lens _aesFieldSelectors (\s a -> s {_aesFieldSelectors = a}) . _List1

instance FromJSON AdvancedEventSelector where
  parseJSON =
    withObject
      "AdvancedEventSelector"
      ( \x ->
          AdvancedEventSelector'
            <$> (x .:? "Name") <*> (x .: "FieldSelectors")
      )

instance Hashable AdvancedEventSelector

instance NFData AdvancedEventSelector

instance ToJSON AdvancedEventSelector where
  toJSON AdvancedEventSelector' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _aesName,
            Just ("FieldSelectors" .= _aesFieldSelectors)
          ]
      )
