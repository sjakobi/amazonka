{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M2tsRateMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsRateMode
  ( M2tsRateMode
      ( ..,
        MRMCbr,
        MRMVbr
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When set to CBR, inserts null packets into transport stream to fill specified bitrate. When set to VBR, the bitrate setting acts as the maximum bitrate, but the output will not be padded up to that bitrate.
data M2tsRateMode = M2tsRateMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MRMCbr :: M2tsRateMode
pattern MRMCbr = M2tsRateMode' "CBR"

pattern MRMVbr :: M2tsRateMode
pattern MRMVbr = M2tsRateMode' "VBR"

{-# COMPLETE
  MRMCbr,
  MRMVbr,
  M2tsRateMode'
  #-}

instance FromText M2tsRateMode where
  parser = (M2tsRateMode' . mk) <$> takeText

instance ToText M2tsRateMode where
  toText (M2tsRateMode' ci) = original ci

instance Hashable M2tsRateMode

instance NFData M2tsRateMode

instance ToByteString M2tsRateMode

instance ToQuery M2tsRateMode

instance ToHeader M2tsRateMode

instance ToJSON M2tsRateMode where
  toJSON = toJSONText

instance FromJSON M2tsRateMode where
  parseJSON = parseJSONText "M2tsRateMode"
