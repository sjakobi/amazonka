{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        GreaterThan,
        GreaterThanEquals,
        InCidrSet,
        InPortSet,
        InSet,
        LessThan,
        LessThanEquals,
        NotInCidrSet,
        NotInPortSet,
        NotInSet
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ComparisonOperator
  = ComparisonOperator'
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

pattern GreaterThan :: ComparisonOperator
pattern GreaterThan = ComparisonOperator' "greater-than"

pattern GreaterThanEquals :: ComparisonOperator
pattern GreaterThanEquals = ComparisonOperator' "greater-than-equals"

pattern InCidrSet :: ComparisonOperator
pattern InCidrSet = ComparisonOperator' "in-cidr-set"

pattern InPortSet :: ComparisonOperator
pattern InPortSet = ComparisonOperator' "in-port-set"

pattern InSet :: ComparisonOperator
pattern InSet = ComparisonOperator' "in-set"

pattern LessThan :: ComparisonOperator
pattern LessThan = ComparisonOperator' "less-than"

pattern LessThanEquals :: ComparisonOperator
pattern LessThanEquals = ComparisonOperator' "less-than-equals"

pattern NotInCidrSet :: ComparisonOperator
pattern NotInCidrSet = ComparisonOperator' "not-in-cidr-set"

pattern NotInPortSet :: ComparisonOperator
pattern NotInPortSet = ComparisonOperator' "not-in-port-set"

pattern NotInSet :: ComparisonOperator
pattern NotInSet = ComparisonOperator' "not-in-set"

{-# COMPLETE
  GreaterThan,
  GreaterThanEquals,
  InCidrSet,
  InPortSet,
  InSet,
  LessThan,
  LessThanEquals,
  NotInCidrSet,
  NotInPortSet,
  NotInSet,
  ComparisonOperator'
  #-}

instance FromText ComparisonOperator where
  parser = (ComparisonOperator' . mk) <$> takeText

instance ToText ComparisonOperator where
  toText (ComparisonOperator' ci) = original ci

instance Hashable ComparisonOperator

instance NFData ComparisonOperator

instance ToByteString ComparisonOperator

instance ToQuery ComparisonOperator

instance ToHeader ComparisonOperator

instance ToJSON ComparisonOperator where
  toJSON = toJSONText

instance FromJSON ComparisonOperator where
  parseJSON = parseJSONText "ComparisonOperator"
