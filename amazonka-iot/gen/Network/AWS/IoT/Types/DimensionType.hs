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
-- Module      : Network.AWS.IoT.Types.DimensionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DimensionType
  ( DimensionType
      ( ..,
        DimensionTypeTOPICFILTER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DimensionType = DimensionType'
  { fromDimensionType ::
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

pattern DimensionTypeTOPICFILTER :: DimensionType
pattern DimensionTypeTOPICFILTER = DimensionType' "TOPIC_FILTER"

{-# COMPLETE
  DimensionTypeTOPICFILTER,
  DimensionType'
  #-}

instance Prelude.FromText DimensionType where
  parser = DimensionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DimensionType where
  toText (DimensionType' x) = x

instance Prelude.Hashable DimensionType

instance Prelude.NFData DimensionType

instance Prelude.ToByteString DimensionType

instance Prelude.ToQuery DimensionType

instance Prelude.ToHeader DimensionType

instance Prelude.ToJSON DimensionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DimensionType where
  parseJSON = Prelude.parseJSONText "DimensionType"
