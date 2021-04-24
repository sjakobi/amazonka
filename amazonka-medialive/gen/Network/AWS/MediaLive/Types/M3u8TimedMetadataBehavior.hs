{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M3u8TimedMetadataBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M3u8TimedMetadataBehavior
  ( M3u8TimedMetadataBehavior
      ( ..,
        M3uNoPassthrough,
        M3uPassthrough
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | M3u8 Timed Metadata Behavior
data M3u8TimedMetadataBehavior
  = M3u8TimedMetadataBehavior'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern M3uNoPassthrough :: M3u8TimedMetadataBehavior
pattern M3uNoPassthrough = M3u8TimedMetadataBehavior' "NO_PASSTHROUGH"

pattern M3uPassthrough :: M3u8TimedMetadataBehavior
pattern M3uPassthrough = M3u8TimedMetadataBehavior' "PASSTHROUGH"

{-# COMPLETE
  M3uNoPassthrough,
  M3uPassthrough,
  M3u8TimedMetadataBehavior'
  #-}

instance FromText M3u8TimedMetadataBehavior where
  parser = (M3u8TimedMetadataBehavior' . mk) <$> takeText

instance ToText M3u8TimedMetadataBehavior where
  toText (M3u8TimedMetadataBehavior' ci) = original ci

instance Hashable M3u8TimedMetadataBehavior

instance NFData M3u8TimedMetadataBehavior

instance ToByteString M3u8TimedMetadataBehavior

instance ToQuery M3u8TimedMetadataBehavior

instance ToHeader M3u8TimedMetadataBehavior

instance ToJSON M3u8TimedMetadataBehavior where
  toJSON = toJSONText

instance FromJSON M3u8TimedMetadataBehavior where
  parseJSON = parseJSONText "M3u8TimedMetadataBehavior"
