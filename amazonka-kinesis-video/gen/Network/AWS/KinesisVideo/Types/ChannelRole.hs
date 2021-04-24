{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideo.Types.ChannelRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.ChannelRole
  ( ChannelRole
      ( ..,
        Master,
        Viewer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChannelRole = ChannelRole' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Master :: ChannelRole
pattern Master = ChannelRole' "MASTER"

pattern Viewer :: ChannelRole
pattern Viewer = ChannelRole' "VIEWER"

{-# COMPLETE
  Master,
  Viewer,
  ChannelRole'
  #-}

instance FromText ChannelRole where
  parser = (ChannelRole' . mk) <$> takeText

instance ToText ChannelRole where
  toText (ChannelRole' ci) = original ci

instance Hashable ChannelRole

instance NFData ChannelRole

instance ToByteString ChannelRole

instance ToQuery ChannelRole

instance ToHeader ChannelRole

instance ToJSON ChannelRole where
  toJSON = toJSONText
