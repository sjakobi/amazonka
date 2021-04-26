{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        ReturnItemCollectionMetricsNONE,
        ReturnItemCollectionMetricsSIZE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReturnItemCollectionMetrics = ReturnItemCollectionMetrics'
  { fromReturnItemCollectionMetrics ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ReturnItemCollectionMetricsNONE :: ReturnItemCollectionMetrics
pattern ReturnItemCollectionMetricsNONE = ReturnItemCollectionMetrics' "NONE"

pattern ReturnItemCollectionMetricsSIZE :: ReturnItemCollectionMetrics
pattern ReturnItemCollectionMetricsSIZE = ReturnItemCollectionMetrics' "SIZE"

{-# COMPLETE
  ReturnItemCollectionMetricsNONE,
  ReturnItemCollectionMetricsSIZE,
  ReturnItemCollectionMetrics'
  #-}

instance Prelude.FromText ReturnItemCollectionMetrics where
  parser = ReturnItemCollectionMetrics' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReturnItemCollectionMetrics where
  toText (ReturnItemCollectionMetrics' x) = x

instance Prelude.Hashable ReturnItemCollectionMetrics

instance Prelude.NFData ReturnItemCollectionMetrics

instance Prelude.ToByteString ReturnItemCollectionMetrics

instance Prelude.ToQuery ReturnItemCollectionMetrics

instance Prelude.ToHeader ReturnItemCollectionMetrics

instance Prelude.ToJSON ReturnItemCollectionMetrics where
  toJSON = Prelude.toJSONText
