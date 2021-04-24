{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.AggregatedSourceStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.AggregatedSourceStatusType
  ( AggregatedSourceStatusType
      ( ..,
        ASSTFailed,
        ASSTOutdated,
        ASSTSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AggregatedSourceStatusType
  = AggregatedSourceStatusType'
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

pattern ASSTFailed :: AggregatedSourceStatusType
pattern ASSTFailed = AggregatedSourceStatusType' "FAILED"

pattern ASSTOutdated :: AggregatedSourceStatusType
pattern ASSTOutdated = AggregatedSourceStatusType' "OUTDATED"

pattern ASSTSucceeded :: AggregatedSourceStatusType
pattern ASSTSucceeded = AggregatedSourceStatusType' "SUCCEEDED"

{-# COMPLETE
  ASSTFailed,
  ASSTOutdated,
  ASSTSucceeded,
  AggregatedSourceStatusType'
  #-}

instance FromText AggregatedSourceStatusType where
  parser = (AggregatedSourceStatusType' . mk) <$> takeText

instance ToText AggregatedSourceStatusType where
  toText (AggregatedSourceStatusType' ci) = original ci

instance Hashable AggregatedSourceStatusType

instance NFData AggregatedSourceStatusType

instance ToByteString AggregatedSourceStatusType

instance ToQuery AggregatedSourceStatusType

instance ToHeader AggregatedSourceStatusType

instance ToJSON AggregatedSourceStatusType where
  toJSON = toJSONText

instance FromJSON AggregatedSourceStatusType where
  parseJSON = parseJSONText "AggregatedSourceStatusType"
