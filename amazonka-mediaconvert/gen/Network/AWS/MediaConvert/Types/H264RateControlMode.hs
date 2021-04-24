{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264RateControlMode
  ( H264RateControlMode
      ( ..,
        HRCMCbr,
        HRCMQvbr,
        HRCMVbr
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
data H264RateControlMode
  = H264RateControlMode'
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

pattern HRCMCbr :: H264RateControlMode
pattern HRCMCbr = H264RateControlMode' "CBR"

pattern HRCMQvbr :: H264RateControlMode
pattern HRCMQvbr = H264RateControlMode' "QVBR"

pattern HRCMVbr :: H264RateControlMode
pattern HRCMVbr = H264RateControlMode' "VBR"

{-# COMPLETE
  HRCMCbr,
  HRCMQvbr,
  HRCMVbr,
  H264RateControlMode'
  #-}

instance FromText H264RateControlMode where
  parser = (H264RateControlMode' . mk) <$> takeText

instance ToText H264RateControlMode where
  toText (H264RateControlMode' ci) = original ci

instance Hashable H264RateControlMode

instance NFData H264RateControlMode

instance ToByteString H264RateControlMode

instance ToQuery H264RateControlMode

instance ToHeader H264RateControlMode

instance ToJSON H264RateControlMode where
  toJSON = toJSONText

instance FromJSON H264RateControlMode where
  parseJSON = parseJSONText "H264RateControlMode"
