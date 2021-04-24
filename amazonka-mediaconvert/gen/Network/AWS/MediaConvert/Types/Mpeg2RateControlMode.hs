{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2RateControlMode
  ( Mpeg2RateControlMode
      ( ..,
        MCbr,
        MVbr
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Rate control mode (Mpeg2RateControlMode) to specify whether the bitrate is variable (vbr) or constant (cbr).
data Mpeg2RateControlMode
  = Mpeg2RateControlMode'
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

pattern MCbr :: Mpeg2RateControlMode
pattern MCbr = Mpeg2RateControlMode' "CBR"

pattern MVbr :: Mpeg2RateControlMode
pattern MVbr = Mpeg2RateControlMode' "VBR"

{-# COMPLETE
  MCbr,
  MVbr,
  Mpeg2RateControlMode'
  #-}

instance FromText Mpeg2RateControlMode where
  parser = (Mpeg2RateControlMode' . mk) <$> takeText

instance ToText Mpeg2RateControlMode where
  toText (Mpeg2RateControlMode' ci) = original ci

instance Hashable Mpeg2RateControlMode

instance NFData Mpeg2RateControlMode

instance ToByteString Mpeg2RateControlMode

instance ToQuery Mpeg2RateControlMode

instance ToHeader Mpeg2RateControlMode

instance ToJSON Mpeg2RateControlMode where
  toJSON = toJSONText

instance FromJSON Mpeg2RateControlMode where
  parseJSON = parseJSONText "Mpeg2RateControlMode"
