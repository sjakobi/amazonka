{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ReturnItemCollectionMetrics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ReturnItemCollectionMetrics
  ( ReturnItemCollectionMetrics
      ( ..,
        RICMNone,
        RICMSize
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReturnItemCollectionMetrics
  = ReturnItemCollectionMetrics'
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

pattern RICMNone :: ReturnItemCollectionMetrics
pattern RICMNone = ReturnItemCollectionMetrics' "NONE"

pattern RICMSize :: ReturnItemCollectionMetrics
pattern RICMSize = ReturnItemCollectionMetrics' "SIZE"

{-# COMPLETE
  RICMNone,
  RICMSize,
  ReturnItemCollectionMetrics'
  #-}

instance FromText ReturnItemCollectionMetrics where
  parser = (ReturnItemCollectionMetrics' . mk) <$> takeText

instance ToText ReturnItemCollectionMetrics where
  toText (ReturnItemCollectionMetrics' ci) = original ci

instance Hashable ReturnItemCollectionMetrics

instance NFData ReturnItemCollectionMetrics

instance ToByteString ReturnItemCollectionMetrics

instance ToQuery ReturnItemCollectionMetrics

instance ToHeader ReturnItemCollectionMetrics

instance ToJSON ReturnItemCollectionMetrics where
  toJSON = toJSONText
