{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.TagFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.TagFilter where

import Network.AWS.CodeDeploy.Types.TagFilterType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an on-premises instance tag filter.
--
--
--
-- /See:/ 'tagFilter' smart constructor.
data TagFilter = TagFilter'
  { _tfKey :: !(Maybe Text),
    _tfValue :: !(Maybe Text),
    _tfType :: !(Maybe TagFilterType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfKey' - The on-premises instance tag filter key.
--
-- * 'tfValue' - The on-premises instance tag filter value.
--
-- * 'tfType' - The on-premises instance tag filter type:     * KEY_ONLY: Key only.     * VALUE_ONLY: Value only.     * KEY_AND_VALUE: Key and value.
tagFilter ::
  TagFilter
tagFilter =
  TagFilter'
    { _tfKey = Nothing,
      _tfValue = Nothing,
      _tfType = Nothing
    }

-- | The on-premises instance tag filter key.
tfKey :: Lens' TagFilter (Maybe Text)
tfKey = lens _tfKey (\s a -> s {_tfKey = a})

-- | The on-premises instance tag filter value.
tfValue :: Lens' TagFilter (Maybe Text)
tfValue = lens _tfValue (\s a -> s {_tfValue = a})

-- | The on-premises instance tag filter type:     * KEY_ONLY: Key only.     * VALUE_ONLY: Value only.     * KEY_AND_VALUE: Key and value.
tfType :: Lens' TagFilter (Maybe TagFilterType)
tfType = lens _tfType (\s a -> s {_tfType = a})

instance FromJSON TagFilter where
  parseJSON =
    withObject
      "TagFilter"
      ( \x ->
          TagFilter'
            <$> (x .:? "Key") <*> (x .:? "Value") <*> (x .:? "Type")
      )

instance Hashable TagFilter

instance NFData TagFilter

instance ToJSON TagFilter where
  toJSON TagFilter' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _tfKey,
            ("Value" .=) <$> _tfValue,
            ("Type" .=) <$> _tfType
          ]
      )
