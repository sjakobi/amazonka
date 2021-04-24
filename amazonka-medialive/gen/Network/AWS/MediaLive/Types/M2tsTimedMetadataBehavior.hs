{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsTimedMetadataBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsTimedMetadataBehavior
  ( M2tsTimedMetadataBehavior
      ( ..,
        MTMBNoPassthrough,
        MTMBPassthrough
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | M2ts Timed Metadata Behavior
data M2tsTimedMetadataBehavior
  = M2tsTimedMetadataBehavior'
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

pattern MTMBNoPassthrough :: M2tsTimedMetadataBehavior
pattern MTMBNoPassthrough = M2tsTimedMetadataBehavior' "NO_PASSTHROUGH"

pattern MTMBPassthrough :: M2tsTimedMetadataBehavior
pattern MTMBPassthrough = M2tsTimedMetadataBehavior' "PASSTHROUGH"

{-# COMPLETE
  MTMBNoPassthrough,
  MTMBPassthrough,
  M2tsTimedMetadataBehavior'
  #-}

instance FromText M2tsTimedMetadataBehavior where
  parser = (M2tsTimedMetadataBehavior' . mk) <$> takeText

instance ToText M2tsTimedMetadataBehavior where
  toText (M2tsTimedMetadataBehavior' ci) = original ci

instance Hashable M2tsTimedMetadataBehavior

instance NFData M2tsTimedMetadataBehavior

instance ToByteString M2tsTimedMetadataBehavior

instance ToQuery M2tsTimedMetadataBehavior

instance ToHeader M2tsTimedMetadataBehavior

instance ToJSON M2tsTimedMetadataBehavior where
  toJSON = toJSONText

instance FromJSON M2tsTimedMetadataBehavior where
  parseJSON = parseJSONText "M2tsTimedMetadataBehavior"
