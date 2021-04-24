{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M3u8NielsenId3Behavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M3u8NielsenId3Behavior
  ( M3u8NielsenId3Behavior
      ( ..,
        MNoPassthrough,
        MPassthrough
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | M3u8 Nielsen Id3 Behavior
data M3u8NielsenId3Behavior
  = M3u8NielsenId3Behavior'
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

pattern MNoPassthrough :: M3u8NielsenId3Behavior
pattern MNoPassthrough = M3u8NielsenId3Behavior' "NO_PASSTHROUGH"

pattern MPassthrough :: M3u8NielsenId3Behavior
pattern MPassthrough = M3u8NielsenId3Behavior' "PASSTHROUGH"

{-# COMPLETE
  MNoPassthrough,
  MPassthrough,
  M3u8NielsenId3Behavior'
  #-}

instance FromText M3u8NielsenId3Behavior where
  parser = (M3u8NielsenId3Behavior' . mk) <$> takeText

instance ToText M3u8NielsenId3Behavior where
  toText (M3u8NielsenId3Behavior' ci) = original ci

instance Hashable M3u8NielsenId3Behavior

instance NFData M3u8NielsenId3Behavior

instance ToByteString M3u8NielsenId3Behavior

instance ToQuery M3u8NielsenId3Behavior

instance ToHeader M3u8NielsenId3Behavior

instance ToJSON M3u8NielsenId3Behavior where
  toJSON = toJSONText

instance FromJSON M3u8NielsenId3Behavior where
  parseJSON = parseJSONText "M3u8NielsenId3Behavior"
