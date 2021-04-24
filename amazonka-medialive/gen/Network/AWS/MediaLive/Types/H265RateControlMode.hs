{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265RateControlMode
  ( H265RateControlMode
      ( ..,
        HRCMCbr,
        HRCMMultiplex,
        HRCMQvbr
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H265 Rate Control Mode
data H265RateControlMode
  = H265RateControlMode'
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

pattern HRCMCbr :: H265RateControlMode
pattern HRCMCbr = H265RateControlMode' "CBR"

pattern HRCMMultiplex :: H265RateControlMode
pattern HRCMMultiplex = H265RateControlMode' "MULTIPLEX"

pattern HRCMQvbr :: H265RateControlMode
pattern HRCMQvbr = H265RateControlMode' "QVBR"

{-# COMPLETE
  HRCMCbr,
  HRCMMultiplex,
  HRCMQvbr,
  H265RateControlMode'
  #-}

instance FromText H265RateControlMode where
  parser = (H265RateControlMode' . mk) <$> takeText

instance ToText H265RateControlMode where
  toText (H265RateControlMode' ci) = original ci

instance Hashable H265RateControlMode

instance NFData H265RateControlMode

instance ToByteString H265RateControlMode

instance ToQuery H265RateControlMode

instance ToHeader H265RateControlMode

instance ToJSON H265RateControlMode where
  toJSON = toJSONText

instance FromJSON H265RateControlMode where
  parseJSON = parseJSONText "H265RateControlMode"
