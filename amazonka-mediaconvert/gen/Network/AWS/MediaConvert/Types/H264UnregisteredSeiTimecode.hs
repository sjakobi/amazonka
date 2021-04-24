{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264UnregisteredSeiTimecode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264UnregisteredSeiTimecode
  ( H264UnregisteredSeiTimecode
      ( ..,
        HUSTDisabled,
        HUSTEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
data H264UnregisteredSeiTimecode
  = H264UnregisteredSeiTimecode'
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

pattern HUSTDisabled :: H264UnregisteredSeiTimecode
pattern HUSTDisabled = H264UnregisteredSeiTimecode' "DISABLED"

pattern HUSTEnabled :: H264UnregisteredSeiTimecode
pattern HUSTEnabled = H264UnregisteredSeiTimecode' "ENABLED"

{-# COMPLETE
  HUSTDisabled,
  HUSTEnabled,
  H264UnregisteredSeiTimecode'
  #-}

instance FromText H264UnregisteredSeiTimecode where
  parser = (H264UnregisteredSeiTimecode' . mk) <$> takeText

instance ToText H264UnregisteredSeiTimecode where
  toText (H264UnregisteredSeiTimecode' ci) = original ci

instance Hashable H264UnregisteredSeiTimecode

instance NFData H264UnregisteredSeiTimecode

instance ToByteString H264UnregisteredSeiTimecode

instance ToQuery H264UnregisteredSeiTimecode

instance ToHeader H264UnregisteredSeiTimecode

instance ToJSON H264UnregisteredSeiTimecode where
  toJSON = toJSONText

instance FromJSON H264UnregisteredSeiTimecode where
  parseJSON = parseJSONText "H264UnregisteredSeiTimecode"
