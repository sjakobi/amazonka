{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideo.Types.ChannelType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.ChannelType
  ( ChannelType
      ( ..,
        SingleMaster
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChannelType = ChannelType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SingleMaster :: ChannelType
pattern SingleMaster = ChannelType' "SINGLE_MASTER"

{-# COMPLETE
  SingleMaster,
  ChannelType'
  #-}

instance FromText ChannelType where
  parser = (ChannelType' . mk) <$> takeText

instance ToText ChannelType where
  toText (ChannelType' ci) = original ci

instance Hashable ChannelType

instance NFData ChannelType

instance ToByteString ChannelType

instance ToQuery ChannelType

instance ToHeader ChannelType

instance ToJSON ChannelType where
  toJSON = toJSONText

instance FromJSON ChannelType where
  parseJSON = parseJSONText "ChannelType"
