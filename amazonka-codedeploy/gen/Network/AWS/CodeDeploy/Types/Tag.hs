{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.Tag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.Tag where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a tag.
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
-- * 'tagKey' - The tag's key.
--
-- * 'tagValue' - The tag's value.
tag ::
  Tag
tag = Tag' {_tagKey = Nothing, _tagValue = Nothing}

-- | The tag's key.
tagKey :: Lens' Tag (Maybe Text)
tagKey = lens _tagKey (\s a -> s {_tagKey = a})

-- | The tag's value.
tagValue :: Lens' Tag (Maybe Text)
tagValue = lens _tagValue (\s a -> s {_tagValue = a})

instance FromJSON Tag where
  parseJSON =
    withObject
      "Tag"
      (\x -> Tag' <$> (x .:? "Key") <*> (x .:? "Value"))

instance Hashable Tag

instance NFData Tag

instance ToJSON Tag where
  toJSON Tag' {..} =
    object
      ( catMaybes
          [("Key" .=) <$> _tagKey, ("Value" .=) <$> _tagValue]
      )
