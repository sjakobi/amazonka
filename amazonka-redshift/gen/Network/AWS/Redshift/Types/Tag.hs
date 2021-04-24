{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.Tag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.Tag where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

-- | A tag consisting of a name/value pair for a resource.
--
--
--
-- /See:/ 'tag' smart constructor.
data Tag = Tag'
  { _tagKey :: !(Maybe Text),
    _tagValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Tag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tagKey' - The key, or name, for the resource tag.
--
-- * 'tagValue' - The value for the resource tag.
tag ::
  Tag
tag = Tag' {_tagKey = Nothing, _tagValue = Nothing}

-- | The key, or name, for the resource tag.
tagKey :: Lens' Tag (Maybe Text)
tagKey = lens _tagKey (\s a -> s {_tagKey = a})

-- | The value for the resource tag.
tagValue :: Lens' Tag (Maybe Text)
tagValue = lens _tagValue (\s a -> s {_tagValue = a})

instance FromXML Tag where
  parseXML x =
    Tag' <$> (x .@? "Key") <*> (x .@? "Value")

instance Hashable Tag

instance NFData Tag

instance ToQuery Tag where
  toQuery Tag' {..} =
    mconcat ["Key" =: _tagKey, "Value" =: _tagValue]
