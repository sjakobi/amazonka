{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.AggregatedSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.AggregatedSourceType
  ( AggregatedSourceType
      ( ..,
        Account,
        Organization
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AggregatedSourceType
  = AggregatedSourceType'
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

pattern Account :: AggregatedSourceType
pattern Account = AggregatedSourceType' "ACCOUNT"

pattern Organization :: AggregatedSourceType
pattern Organization = AggregatedSourceType' "ORGANIZATION"

{-# COMPLETE
  Account,
  Organization,
  AggregatedSourceType'
  #-}

instance FromText AggregatedSourceType where
  parser = (AggregatedSourceType' . mk) <$> takeText

instance ToText AggregatedSourceType where
  toText (AggregatedSourceType' ci) = original ci

instance Hashable AggregatedSourceType

instance NFData AggregatedSourceType

instance ToByteString AggregatedSourceType

instance ToQuery AggregatedSourceType

instance ToHeader AggregatedSourceType

instance FromJSON AggregatedSourceType where
  parseJSON = parseJSONText "AggregatedSourceType"
