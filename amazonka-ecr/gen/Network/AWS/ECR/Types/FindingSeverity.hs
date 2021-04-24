{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.FindingSeverity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.FindingSeverity
  ( FindingSeverity
      ( ..,
        Critical,
        High,
        Informational,
        Low,
        Medium,
        Undefined
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FindingSeverity = FindingSeverity' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Critical :: FindingSeverity
pattern Critical = FindingSeverity' "CRITICAL"

pattern High :: FindingSeverity
pattern High = FindingSeverity' "HIGH"

pattern Informational :: FindingSeverity
pattern Informational = FindingSeverity' "INFORMATIONAL"

pattern Low :: FindingSeverity
pattern Low = FindingSeverity' "LOW"

pattern Medium :: FindingSeverity
pattern Medium = FindingSeverity' "MEDIUM"

pattern Undefined :: FindingSeverity
pattern Undefined = FindingSeverity' "UNDEFINED"

{-# COMPLETE
  Critical,
  High,
  Informational,
  Low,
  Medium,
  Undefined,
  FindingSeverity'
  #-}

instance FromText FindingSeverity where
  parser = (FindingSeverity' . mk) <$> takeText

instance ToText FindingSeverity where
  toText (FindingSeverity' ci) = original ci

instance Hashable FindingSeverity

instance NFData FindingSeverity

instance ToByteString FindingSeverity

instance ToQuery FindingSeverity

instance ToHeader FindingSeverity

instance FromJSON FindingSeverity where
  parseJSON = parseJSONText "FindingSeverity"
