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
-- Module      : Network.AWS.Redshift.Types.OperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.OperatorType
  ( OperatorType
      ( ..,
        OperatorTypeBetween,
        OperatorTypeEQ,
        OperatorTypeGE,
        OperatorTypeGT,
        OperatorTypeIN,
        OperatorTypeLE,
        OperatorTypeLT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype OperatorType = OperatorType'
  { fromOperatorType ::
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

pattern OperatorTypeBetween :: OperatorType
pattern OperatorTypeBetween = OperatorType' "between"

pattern OperatorTypeEQ :: OperatorType
pattern OperatorTypeEQ = OperatorType' "eq"

pattern OperatorTypeGE :: OperatorType
pattern OperatorTypeGE = OperatorType' "ge"

pattern OperatorTypeGT :: OperatorType
pattern OperatorTypeGT = OperatorType' "gt"

pattern OperatorTypeIN :: OperatorType
pattern OperatorTypeIN = OperatorType' "in"

pattern OperatorTypeLE :: OperatorType
pattern OperatorTypeLE = OperatorType' "le"

pattern OperatorTypeLT :: OperatorType
pattern OperatorTypeLT = OperatorType' "lt"

{-# COMPLETE
  OperatorTypeBetween,
  OperatorTypeEQ,
  OperatorTypeGE,
  OperatorTypeGT,
  OperatorTypeIN,
  OperatorTypeLE,
  OperatorTypeLT,
  OperatorType'
  #-}

instance Prelude.FromText OperatorType where
  parser = OperatorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OperatorType where
  toText (OperatorType' x) = x

instance Prelude.Hashable OperatorType

instance Prelude.NFData OperatorType

instance Prelude.ToByteString OperatorType

instance Prelude.ToQuery OperatorType

instance Prelude.ToHeader OperatorType
