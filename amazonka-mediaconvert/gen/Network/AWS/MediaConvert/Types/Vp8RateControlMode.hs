{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vp8RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp8RateControlMode
  ( Vp8RateControlMode
      ( ..,
        VRCMVbr
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | With the VP8 codec, you can use only the variable bitrate (VBR) rate control mode.
data Vp8RateControlMode
  = Vp8RateControlMode'
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

pattern VRCMVbr :: Vp8RateControlMode
pattern VRCMVbr = Vp8RateControlMode' "VBR"

{-# COMPLETE
  VRCMVbr,
  Vp8RateControlMode'
  #-}

instance FromText Vp8RateControlMode where
  parser = (Vp8RateControlMode' . mk) <$> takeText

instance ToText Vp8RateControlMode where
  toText (Vp8RateControlMode' ci) = original ci

instance Hashable Vp8RateControlMode

instance NFData Vp8RateControlMode

instance ToByteString Vp8RateControlMode

instance ToQuery Vp8RateControlMode

instance ToHeader Vp8RateControlMode

instance ToJSON Vp8RateControlMode where
  toJSON = toJSONText

instance FromJSON Vp8RateControlMode where
  parseJSON = parseJSONText "Vp8RateControlMode"
