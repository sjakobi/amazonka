{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.IFrameOnlyPlaylistType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.IFrameOnlyPlaylistType
  ( IFrameOnlyPlaylistType
      ( ..,
        IFOPTDisabled,
        IFOPTStandard
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When set to "standard", an I-Frame only playlist will be written out for each video output in the output group. This I-Frame only playlist will contain byte range offsets pointing to the I-frame(s) in each segment.
data IFrameOnlyPlaylistType
  = IFrameOnlyPlaylistType'
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

pattern IFOPTDisabled :: IFrameOnlyPlaylistType
pattern IFOPTDisabled = IFrameOnlyPlaylistType' "DISABLED"

pattern IFOPTStandard :: IFrameOnlyPlaylistType
pattern IFOPTStandard = IFrameOnlyPlaylistType' "STANDARD"

{-# COMPLETE
  IFOPTDisabled,
  IFOPTStandard,
  IFrameOnlyPlaylistType'
  #-}

instance FromText IFrameOnlyPlaylistType where
  parser = (IFrameOnlyPlaylistType' . mk) <$> takeText

instance ToText IFrameOnlyPlaylistType where
  toText (IFrameOnlyPlaylistType' ci) = original ci

instance Hashable IFrameOnlyPlaylistType

instance NFData IFrameOnlyPlaylistType

instance ToByteString IFrameOnlyPlaylistType

instance ToQuery IFrameOnlyPlaylistType

instance ToHeader IFrameOnlyPlaylistType

instance ToJSON IFrameOnlyPlaylistType where
  toJSON = toJSONText

instance FromJSON IFrameOnlyPlaylistType where
  parseJSON = parseJSONText "IFrameOnlyPlaylistType"
