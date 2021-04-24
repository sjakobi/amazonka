{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.Tag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.Tag where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

-- | A complex type that contains information about a tag that you want to add or edit for the specified health check or hosted zone.
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
-- * 'tagKey' - The value of @Key@ depends on the operation that you want to perform:     * __Add a tag to a health check or hosted zone__ : @Key@ is the name that you want to give the new tag.     * __Edit a tag__ : @Key@ is the name of the tag that you want to change the @Value@ for.     * __Delete a key__ : @Key@ is the name of the tag you want to remove.     * __Give a name to a health check__ : Edit the default @Name@ tag. In the Amazon Route 53 console, the list of your health checks includes a __Name__ column that lets you see the name that you've given to each health check.
--
-- * 'tagValue' - The value of @Value@ depends on the operation that you want to perform:     * __Add a tag to a health check or hosted zone__ : @Value@ is the value that you want to give the new tag.     * __Edit a tag__ : @Value@ is the new value that you want to assign the tag.
tag ::
  Tag
tag = Tag' {_tagKey = Nothing, _tagValue = Nothing}

-- | The value of @Key@ depends on the operation that you want to perform:     * __Add a tag to a health check or hosted zone__ : @Key@ is the name that you want to give the new tag.     * __Edit a tag__ : @Key@ is the name of the tag that you want to change the @Value@ for.     * __Delete a key__ : @Key@ is the name of the tag you want to remove.     * __Give a name to a health check__ : Edit the default @Name@ tag. In the Amazon Route 53 console, the list of your health checks includes a __Name__ column that lets you see the name that you've given to each health check.
tagKey :: Lens' Tag (Maybe Text)
tagKey = lens _tagKey (\s a -> s {_tagKey = a})

-- | The value of @Value@ depends on the operation that you want to perform:     * __Add a tag to a health check or hosted zone__ : @Value@ is the value that you want to give the new tag.     * __Edit a tag__ : @Value@ is the new value that you want to assign the tag.
tagValue :: Lens' Tag (Maybe Text)
tagValue = lens _tagValue (\s a -> s {_tagValue = a})

instance FromXML Tag where
  parseXML x =
    Tag' <$> (x .@? "Key") <*> (x .@? "Value")

instance Hashable Tag

instance NFData Tag

instance ToXML Tag where
  toXML Tag' {..} =
    mconcat ["Key" @= _tagKey, "Value" @= _tagValue]
