{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AacRateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AacRateControlMode
  ( AacRateControlMode
      ( ..,
        ARCMCbr,
        ARCMVbr
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Aac Rate Control Mode
data AacRateControlMode
  = AacRateControlMode'
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

pattern ARCMCbr :: AacRateControlMode
pattern ARCMCbr = AacRateControlMode' "CBR"

pattern ARCMVbr :: AacRateControlMode
pattern ARCMVbr = AacRateControlMode' "VBR"

{-# COMPLETE
  ARCMCbr,
  ARCMVbr,
  AacRateControlMode'
  #-}

instance FromText AacRateControlMode where
  parser = (AacRateControlMode' . mk) <$> takeText

instance ToText AacRateControlMode where
  toText (AacRateControlMode' ci) = original ci

instance Hashable AacRateControlMode

instance NFData AacRateControlMode

instance ToByteString AacRateControlMode

instance ToQuery AacRateControlMode

instance ToHeader AacRateControlMode

instance ToJSON AacRateControlMode where
  toJSON = toJSONText

instance FromJSON AacRateControlMode where
  parseJSON = parseJSONText "AacRateControlMode"
