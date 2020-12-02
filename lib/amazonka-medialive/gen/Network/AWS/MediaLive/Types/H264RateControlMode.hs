{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264RateControlMode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264RateControlMode where

import Network.AWS.Prelude

-- | H264 Rate Control Mode
data H264RateControlMode
  = HRCMCbr
  | HRCMMultiplex
  | HRCMQvbr
  | HRCMVbr
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Enum,
      Bounded,
      Data,
      Typeable,
      Generic
    )

instance FromText H264RateControlMode where
  parser =
    takeLowerText >>= \case
      "cbr" -> pure HRCMCbr
      "multiplex" -> pure HRCMMultiplex
      "qvbr" -> pure HRCMQvbr
      "vbr" -> pure HRCMVbr
      e ->
        fromTextError $
          "Failure parsing H264RateControlMode from value: '" <> e
            <> "'. Accepted values: cbr, multiplex, qvbr, vbr"

instance ToText H264RateControlMode where
  toText = \case
    HRCMCbr -> "CBR"
    HRCMMultiplex -> "MULTIPLEX"
    HRCMQvbr -> "QVBR"
    HRCMVbr -> "VBR"

instance Hashable H264RateControlMode

instance NFData H264RateControlMode

instance ToByteString H264RateControlMode

instance ToQuery H264RateControlMode

instance ToHeader H264RateControlMode

instance ToJSON H264RateControlMode where
  toJSON = toJSONText

instance FromJSON H264RateControlMode where
  parseJSON = parseJSONText "H264RateControlMode"
