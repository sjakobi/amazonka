{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Av1RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Av1RateControlMode
  ( Av1RateControlMode
      ( ..,
        ARCMQvbr
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | 'With AV1 outputs, for rate control mode, MediaConvert supports only quality-defined variable bitrate (QVBR). You can''t use CBR or VBR.'
data Av1RateControlMode
  = Av1RateControlMode'
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

pattern ARCMQvbr :: Av1RateControlMode
pattern ARCMQvbr = Av1RateControlMode' "QVBR"

{-# COMPLETE
  ARCMQvbr,
  Av1RateControlMode'
  #-}

instance FromText Av1RateControlMode where
  parser = (Av1RateControlMode' . mk) <$> takeText

instance ToText Av1RateControlMode where
  toText (Av1RateControlMode' ci) = original ci

instance Hashable Av1RateControlMode

instance NFData Av1RateControlMode

instance ToByteString Av1RateControlMode

instance ToQuery Av1RateControlMode

instance ToHeader Av1RateControlMode

instance ToJSON Av1RateControlMode where
  toJSON = toJSONText

instance FromJSON Av1RateControlMode where
  parseJSON = parseJSONText "Av1RateControlMode"
