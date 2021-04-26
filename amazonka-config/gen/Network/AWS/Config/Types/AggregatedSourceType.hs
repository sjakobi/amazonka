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
-- Module      : Network.AWS.Config.Types.AggregatedSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.AggregatedSourceType
  ( AggregatedSourceType
      ( ..,
        AggregatedSourceTypeACCOUNT,
        AggregatedSourceTypeORGANIZATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AggregatedSourceType = AggregatedSourceType'
  { fromAggregatedSourceType ::
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

pattern AggregatedSourceTypeACCOUNT :: AggregatedSourceType
pattern AggregatedSourceTypeACCOUNT = AggregatedSourceType' "ACCOUNT"

pattern AggregatedSourceTypeORGANIZATION :: AggregatedSourceType
pattern AggregatedSourceTypeORGANIZATION = AggregatedSourceType' "ORGANIZATION"

{-# COMPLETE
  AggregatedSourceTypeACCOUNT,
  AggregatedSourceTypeORGANIZATION,
  AggregatedSourceType'
  #-}

instance Prelude.FromText AggregatedSourceType where
  parser = AggregatedSourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AggregatedSourceType where
  toText (AggregatedSourceType' x) = x

instance Prelude.Hashable AggregatedSourceType

instance Prelude.NFData AggregatedSourceType

instance Prelude.ToByteString AggregatedSourceType

instance Prelude.ToQuery AggregatedSourceType

instance Prelude.ToHeader AggregatedSourceType

instance Prelude.FromJSON AggregatedSourceType where
  parseJSON = Prelude.parseJSONText "AggregatedSourceType"
