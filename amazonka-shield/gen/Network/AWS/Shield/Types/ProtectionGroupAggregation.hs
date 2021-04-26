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
-- Module      : Network.AWS.Shield.Types.ProtectionGroupAggregation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.ProtectionGroupAggregation
  ( ProtectionGroupAggregation
      ( ..,
        ProtectionGroupAggregationMAX,
        ProtectionGroupAggregationMEAN,
        ProtectionGroupAggregationSUM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProtectionGroupAggregation = ProtectionGroupAggregation'
  { fromProtectionGroupAggregation ::
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

pattern ProtectionGroupAggregationMAX :: ProtectionGroupAggregation
pattern ProtectionGroupAggregationMAX = ProtectionGroupAggregation' "MAX"

pattern ProtectionGroupAggregationMEAN :: ProtectionGroupAggregation
pattern ProtectionGroupAggregationMEAN = ProtectionGroupAggregation' "MEAN"

pattern ProtectionGroupAggregationSUM :: ProtectionGroupAggregation
pattern ProtectionGroupAggregationSUM = ProtectionGroupAggregation' "SUM"

{-# COMPLETE
  ProtectionGroupAggregationMAX,
  ProtectionGroupAggregationMEAN,
  ProtectionGroupAggregationSUM,
  ProtectionGroupAggregation'
  #-}

instance Prelude.FromText ProtectionGroupAggregation where
  parser = ProtectionGroupAggregation' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProtectionGroupAggregation where
  toText (ProtectionGroupAggregation' x) = x

instance Prelude.Hashable ProtectionGroupAggregation

instance Prelude.NFData ProtectionGroupAggregation

instance Prelude.ToByteString ProtectionGroupAggregation

instance Prelude.ToQuery ProtectionGroupAggregation

instance Prelude.ToHeader ProtectionGroupAggregation

instance Prelude.ToJSON ProtectionGroupAggregation where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProtectionGroupAggregation where
  parseJSON = Prelude.parseJSONText "ProtectionGroupAggregation"
