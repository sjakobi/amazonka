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
-- Module      : Network.AWS.IoT.Types.ComparisonOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ComparisonOperator
  ( ComparisonOperator
      ( ..,
        ComparisonOperatorGreaterThan,
        ComparisonOperatorGreaterThanEquals,
        ComparisonOperatorInCidrSet,
        ComparisonOperatorInPortSet,
        ComparisonOperatorInSet,
        ComparisonOperatorLessThan,
        ComparisonOperatorLessThanEquals,
        ComparisonOperatorNotInCidrSet,
        ComparisonOperatorNotInPortSet,
        ComparisonOperatorNotInSet
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ComparisonOperator = ComparisonOperator'
  { fromComparisonOperator ::
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

pattern ComparisonOperatorGreaterThan :: ComparisonOperator
pattern ComparisonOperatorGreaterThan = ComparisonOperator' "greater-than"

pattern ComparisonOperatorGreaterThanEquals :: ComparisonOperator
pattern ComparisonOperatorGreaterThanEquals = ComparisonOperator' "greater-than-equals"

pattern ComparisonOperatorInCidrSet :: ComparisonOperator
pattern ComparisonOperatorInCidrSet = ComparisonOperator' "in-cidr-set"

pattern ComparisonOperatorInPortSet :: ComparisonOperator
pattern ComparisonOperatorInPortSet = ComparisonOperator' "in-port-set"

pattern ComparisonOperatorInSet :: ComparisonOperator
pattern ComparisonOperatorInSet = ComparisonOperator' "in-set"

pattern ComparisonOperatorLessThan :: ComparisonOperator
pattern ComparisonOperatorLessThan = ComparisonOperator' "less-than"

pattern ComparisonOperatorLessThanEquals :: ComparisonOperator
pattern ComparisonOperatorLessThanEquals = ComparisonOperator' "less-than-equals"

pattern ComparisonOperatorNotInCidrSet :: ComparisonOperator
pattern ComparisonOperatorNotInCidrSet = ComparisonOperator' "not-in-cidr-set"

pattern ComparisonOperatorNotInPortSet :: ComparisonOperator
pattern ComparisonOperatorNotInPortSet = ComparisonOperator' "not-in-port-set"

pattern ComparisonOperatorNotInSet :: ComparisonOperator
pattern ComparisonOperatorNotInSet = ComparisonOperator' "not-in-set"

{-# COMPLETE
  ComparisonOperatorGreaterThan,
  ComparisonOperatorGreaterThanEquals,
  ComparisonOperatorInCidrSet,
  ComparisonOperatorInPortSet,
  ComparisonOperatorInSet,
  ComparisonOperatorLessThan,
  ComparisonOperatorLessThanEquals,
  ComparisonOperatorNotInCidrSet,
  ComparisonOperatorNotInPortSet,
  ComparisonOperatorNotInSet,
  ComparisonOperator'
  #-}

instance Prelude.FromText ComparisonOperator where
  parser = ComparisonOperator' Prelude.<$> Prelude.takeText

instance Prelude.ToText ComparisonOperator where
  toText (ComparisonOperator' x) = x

instance Prelude.Hashable ComparisonOperator

instance Prelude.NFData ComparisonOperator

instance Prelude.ToByteString ComparisonOperator

instance Prelude.ToQuery ComparisonOperator

instance Prelude.ToHeader ComparisonOperator

instance Prelude.ToJSON ComparisonOperator where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ComparisonOperator where
  parseJSON = Prelude.parseJSONText "ComparisonOperator"
