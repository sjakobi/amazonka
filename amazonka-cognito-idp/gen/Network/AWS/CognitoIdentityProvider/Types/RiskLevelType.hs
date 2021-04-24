{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.RiskLevelType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.RiskLevelType
  ( RiskLevelType
      ( ..,
        High,
        Low,
        Medium
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RiskLevelType = RiskLevelType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern High :: RiskLevelType
pattern High = RiskLevelType' "High"

pattern Low :: RiskLevelType
pattern Low = RiskLevelType' "Low"

pattern Medium :: RiskLevelType
pattern Medium = RiskLevelType' "Medium"

{-# COMPLETE
  High,
  Low,
  Medium,
  RiskLevelType'
  #-}

instance FromText RiskLevelType where
  parser = (RiskLevelType' . mk) <$> takeText

instance ToText RiskLevelType where
  toText (RiskLevelType' ci) = original ci

instance Hashable RiskLevelType

instance NFData RiskLevelType

instance ToByteString RiskLevelType

instance ToQuery RiskLevelType

instance ToHeader RiskLevelType

instance FromJSON RiskLevelType where
  parseJSON = parseJSONText "RiskLevelType"
