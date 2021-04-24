{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ConfidenceLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ConfidenceLevel
  ( ConfidenceLevel
      ( ..,
        High,
        Low,
        Medium
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConfidenceLevel = ConfidenceLevel' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern High :: ConfidenceLevel
pattern High = ConfidenceLevel' "HIGH"

pattern Low :: ConfidenceLevel
pattern Low = ConfidenceLevel' "LOW"

pattern Medium :: ConfidenceLevel
pattern Medium = ConfidenceLevel' "MEDIUM"

{-# COMPLETE
  High,
  Low,
  Medium,
  ConfidenceLevel'
  #-}

instance FromText ConfidenceLevel where
  parser = (ConfidenceLevel' . mk) <$> takeText

instance ToText ConfidenceLevel where
  toText (ConfidenceLevel' ci) = original ci

instance Hashable ConfidenceLevel

instance NFData ConfidenceLevel

instance ToByteString ConfidenceLevel

instance ToQuery ConfidenceLevel

instance ToHeader ConfidenceLevel

instance ToJSON ConfidenceLevel where
  toJSON = toJSONText

instance FromJSON ConfidenceLevel where
  parseJSON = parseJSONText "ConfidenceLevel"
