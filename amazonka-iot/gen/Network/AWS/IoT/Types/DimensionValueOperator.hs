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
-- Module      : Network.AWS.IoT.Types.DimensionValueOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DimensionValueOperator
  ( DimensionValueOperator
      ( ..,
        DimensionValueOperatorIN,
        DimensionValueOperatorNOTIN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DimensionValueOperator = DimensionValueOperator'
  { fromDimensionValueOperator ::
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

pattern DimensionValueOperatorIN :: DimensionValueOperator
pattern DimensionValueOperatorIN = DimensionValueOperator' "IN"

pattern DimensionValueOperatorNOTIN :: DimensionValueOperator
pattern DimensionValueOperatorNOTIN = DimensionValueOperator' "NOT_IN"

{-# COMPLETE
  DimensionValueOperatorIN,
  DimensionValueOperatorNOTIN,
  DimensionValueOperator'
  #-}

instance Prelude.FromText DimensionValueOperator where
  parser = DimensionValueOperator' Prelude.<$> Prelude.takeText

instance Prelude.ToText DimensionValueOperator where
  toText (DimensionValueOperator' x) = x

instance Prelude.Hashable DimensionValueOperator

instance Prelude.NFData DimensionValueOperator

instance Prelude.ToByteString DimensionValueOperator

instance Prelude.ToQuery DimensionValueOperator

instance Prelude.ToHeader DimensionValueOperator

instance Prelude.ToJSON DimensionValueOperator where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DimensionValueOperator where
  parseJSON = Prelude.parseJSONText "DimensionValueOperator"
