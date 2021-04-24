{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Fmp4TimedMetadataBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Fmp4TimedMetadataBehavior
  ( Fmp4TimedMetadataBehavior
      ( ..,
        FTMBNoPassthrough,
        FTMBPassthrough
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Fmp4 Timed Metadata Behavior
data Fmp4TimedMetadataBehavior
  = Fmp4TimedMetadataBehavior'
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

pattern FTMBNoPassthrough :: Fmp4TimedMetadataBehavior
pattern FTMBNoPassthrough = Fmp4TimedMetadataBehavior' "NO_PASSTHROUGH"

pattern FTMBPassthrough :: Fmp4TimedMetadataBehavior
pattern FTMBPassthrough = Fmp4TimedMetadataBehavior' "PASSTHROUGH"

{-# COMPLETE
  FTMBNoPassthrough,
  FTMBPassthrough,
  Fmp4TimedMetadataBehavior'
  #-}

instance FromText Fmp4TimedMetadataBehavior where
  parser = (Fmp4TimedMetadataBehavior' . mk) <$> takeText

instance ToText Fmp4TimedMetadataBehavior where
  toText (Fmp4TimedMetadataBehavior' ci) = original ci

instance Hashable Fmp4TimedMetadataBehavior

instance NFData Fmp4TimedMetadataBehavior

instance ToByteString Fmp4TimedMetadataBehavior

instance ToQuery Fmp4TimedMetadataBehavior

instance ToHeader Fmp4TimedMetadataBehavior

instance ToJSON Fmp4TimedMetadataBehavior where
  toJSON = toJSONText

instance FromJSON Fmp4TimedMetadataBehavior where
  parseJSON = parseJSONText "Fmp4TimedMetadataBehavior"
