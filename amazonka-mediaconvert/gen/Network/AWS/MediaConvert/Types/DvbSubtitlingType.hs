{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitlingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitlingType
  ( DvbSubtitlingType
      ( ..,
        DSTHearingImpaired,
        DSTStandard
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify whether your DVB subtitles are standard or for hearing impaired. Choose hearing impaired if your subtitles include audio descriptions and dialogue. Choose standard if your subtitles include only dialogue.
data DvbSubtitlingType = DvbSubtitlingType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DSTHearingImpaired :: DvbSubtitlingType
pattern DSTHearingImpaired = DvbSubtitlingType' "HEARING_IMPAIRED"

pattern DSTStandard :: DvbSubtitlingType
pattern DSTStandard = DvbSubtitlingType' "STANDARD"

{-# COMPLETE
  DSTHearingImpaired,
  DSTStandard,
  DvbSubtitlingType'
  #-}

instance FromText DvbSubtitlingType where
  parser = (DvbSubtitlingType' . mk) <$> takeText

instance ToText DvbSubtitlingType where
  toText (DvbSubtitlingType' ci) = original ci

instance Hashable DvbSubtitlingType

instance NFData DvbSubtitlingType

instance ToByteString DvbSubtitlingType

instance ToQuery DvbSubtitlingType

instance ToHeader DvbSubtitlingType

instance ToJSON DvbSubtitlingType where
  toJSON = toJSONText

instance FromJSON DvbSubtitlingType where
  parseJSON = parseJSONText "DvbSubtitlingType"
