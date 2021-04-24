{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroupsTagging.Types.TagFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroupsTagging.Types.TagFilter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A list of tags (keys and values) that are used to specify the associated resources.
--
--
--
-- /See:/ 'tagFilter' smart constructor.
data TagFilter = TagFilter'
  { _tfKey :: !(Maybe Text),
    _tfValues :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfKey' - One part of a key-value pair that makes up a tag. A key is a general label that acts like a category for more specific tag values.
--
-- * 'tfValues' - One part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key). The value can be empty or null.
tagFilter ::
  TagFilter
tagFilter =
  TagFilter' {_tfKey = Nothing, _tfValues = Nothing}

-- | One part of a key-value pair that makes up a tag. A key is a general label that acts like a category for more specific tag values.
tfKey :: Lens' TagFilter (Maybe Text)
tfKey = lens _tfKey (\s a -> s {_tfKey = a})

-- | One part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key). The value can be empty or null.
tfValues :: Lens' TagFilter [Text]
tfValues = lens _tfValues (\s a -> s {_tfValues = a}) . _Default . _Coerce

instance Hashable TagFilter

instance NFData TagFilter

instance ToJSON TagFilter where
  toJSON TagFilter' {..} =
    object
      ( catMaybes
          [("Key" .=) <$> _tfKey, ("Values" .=) <$> _tfValues]
      )
