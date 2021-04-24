{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264RateControlMode
  ( H264RateControlMode
      ( ..,
        Cbr,
        Multiplex,
        Qvbr,
        Vbr
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Rate Control Mode
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

pattern Cbr :: H264RateControlMode
pattern Cbr = H264RateControlMode' "CBR"

pattern Multiplex :: H264RateControlMode
pattern Multiplex = H264RateControlMode' "MULTIPLEX"

pattern Qvbr :: H264RateControlMode
pattern Qvbr = H264RateControlMode' "QVBR"

pattern Vbr :: H264RateControlMode
pattern Vbr = H264RateControlMode' "VBR"

{-# COMPLETE
  Cbr,
  Multiplex,
  Qvbr,
  Vbr,
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
