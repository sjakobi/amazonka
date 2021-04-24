{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DolbyVisionLevel6Mode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DolbyVisionLevel6Mode
  ( DolbyVisionLevel6Mode
      ( ..,
        DVLMPassthrough,
        DVLMRecalculate,
        DVLMSpecify
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Dolby Vision Mode to choose how the service will handle Dolby Vision MaxCLL and MaxFALL properies.
data DolbyVisionLevel6Mode
  = DolbyVisionLevel6Mode'
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

pattern DVLMPassthrough :: DolbyVisionLevel6Mode
pattern DVLMPassthrough = DolbyVisionLevel6Mode' "PASSTHROUGH"

pattern DVLMRecalculate :: DolbyVisionLevel6Mode
pattern DVLMRecalculate = DolbyVisionLevel6Mode' "RECALCULATE"

pattern DVLMSpecify :: DolbyVisionLevel6Mode
pattern DVLMSpecify = DolbyVisionLevel6Mode' "SPECIFY"

{-# COMPLETE
  DVLMPassthrough,
  DVLMRecalculate,
  DVLMSpecify,
  DolbyVisionLevel6Mode'
  #-}

instance FromText DolbyVisionLevel6Mode where
  parser = (DolbyVisionLevel6Mode' . mk) <$> takeText

instance ToText DolbyVisionLevel6Mode where
  toText (DolbyVisionLevel6Mode' ci) = original ci

instance Hashable DolbyVisionLevel6Mode

instance NFData DolbyVisionLevel6Mode

instance ToByteString DolbyVisionLevel6Mode

instance ToQuery DolbyVisionLevel6Mode

instance ToHeader DolbyVisionLevel6Mode

instance ToJSON DolbyVisionLevel6Mode where
  toJSON = toJSONText

instance FromJSON DolbyVisionLevel6Mode where
  parseJSON = parseJSONText "DolbyVisionLevel6Mode"
