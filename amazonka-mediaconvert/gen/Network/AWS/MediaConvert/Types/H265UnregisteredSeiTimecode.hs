{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265UnregisteredSeiTimecode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265UnregisteredSeiTimecode
  ( H265UnregisteredSeiTimecode
      ( ..,
        HUSTUDisabled,
        HUSTUEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
data H265UnregisteredSeiTimecode
  = H265UnregisteredSeiTimecode'
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

pattern HUSTUDisabled :: H265UnregisteredSeiTimecode
pattern HUSTUDisabled = H265UnregisteredSeiTimecode' "DISABLED"

pattern HUSTUEnabled :: H265UnregisteredSeiTimecode
pattern HUSTUEnabled = H265UnregisteredSeiTimecode' "ENABLED"

{-# COMPLETE
  HUSTUDisabled,
  HUSTUEnabled,
  H265UnregisteredSeiTimecode'
  #-}

instance FromText H265UnregisteredSeiTimecode where
  parser = (H265UnregisteredSeiTimecode' . mk) <$> takeText

instance ToText H265UnregisteredSeiTimecode where
  toText (H265UnregisteredSeiTimecode' ci) = original ci

instance Hashable H265UnregisteredSeiTimecode

instance NFData H265UnregisteredSeiTimecode

instance ToByteString H265UnregisteredSeiTimecode

instance ToQuery H265UnregisteredSeiTimecode

instance ToHeader H265UnregisteredSeiTimecode

instance ToJSON H265UnregisteredSeiTimecode where
  toJSON = toJSONText

instance FromJSON H265UnregisteredSeiTimecode where
  parseJSON = parseJSONText "H265UnregisteredSeiTimecode"
