{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vp9RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp9RateControlMode
  ( Vp9RateControlMode
      ( ..,
        VVbr
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | With the VP9 codec, you can use only the variable bitrate (VBR) rate control mode.
data Vp9RateControlMode
  = Vp9RateControlMode'
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

pattern VVbr :: Vp9RateControlMode
pattern VVbr = Vp9RateControlMode' "VBR"

{-# COMPLETE
  VVbr,
  Vp9RateControlMode'
  #-}

instance FromText Vp9RateControlMode where
  parser = (Vp9RateControlMode' . mk) <$> takeText

instance ToText Vp9RateControlMode where
  toText (Vp9RateControlMode' ci) = original ci

instance Hashable Vp9RateControlMode

instance NFData Vp9RateControlMode

instance ToByteString Vp9RateControlMode

instance ToQuery Vp9RateControlMode

instance ToHeader Vp9RateControlMode

instance ToJSON Vp9RateControlMode where
  toJSON = toJSONText

instance FromJSON Vp9RateControlMode where
  parseJSON = parseJSONText "Vp9RateControlMode"
