{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.ChannelMessages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.ChannelMessages where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies one or more sets of channel messages.
--
--
--
-- /See:/ 'channelMessages' smart constructor.
newtype ChannelMessages = ChannelMessages'
  { _cmS3Paths ::
      Maybe (List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ChannelMessages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmS3Paths' - Specifies one or more keys that identify the Amazon Simple Storage Service (Amazon S3) objects that save your channel messages.
channelMessages ::
  ChannelMessages
channelMessages =
  ChannelMessages' {_cmS3Paths = Nothing}

-- | Specifies one or more keys that identify the Amazon Simple Storage Service (Amazon S3) objects that save your channel messages.
cmS3Paths :: Lens' ChannelMessages (Maybe (NonEmpty Text))
cmS3Paths = lens _cmS3Paths (\s a -> s {_cmS3Paths = a}) . mapping _List1

instance Hashable ChannelMessages

instance NFData ChannelMessages

instance ToJSON ChannelMessages where
  toJSON ChannelMessages' {..} =
    object (catMaybes [("s3Paths" .=) <$> _cmS3Paths])
