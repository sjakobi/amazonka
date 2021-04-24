{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.NumericOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.NumericOperator
  ( NumericOperator
      ( ..,
        Between,
        Equal,
        GreaterThan,
        GreaterThanOrEqual,
        LessThan,
        LessThanOrEqual
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NumericOperator = NumericOperator' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Between :: NumericOperator
pattern Between = NumericOperator' "BETWEEN"

pattern Equal :: NumericOperator
pattern Equal = NumericOperator' "EQUAL"

pattern GreaterThan :: NumericOperator
pattern GreaterThan = NumericOperator' "GREATER_THAN"

pattern GreaterThanOrEqual :: NumericOperator
pattern GreaterThanOrEqual = NumericOperator' "GREATER_THAN_OR_EQUAL"

pattern LessThan :: NumericOperator
pattern LessThan = NumericOperator' "LESS_THAN"

pattern LessThanOrEqual :: NumericOperator
pattern LessThanOrEqual = NumericOperator' "LESS_THAN_OR_EQUAL"

{-# COMPLETE
  Between,
  Equal,
  GreaterThan,
  GreaterThanOrEqual,
  LessThan,
  LessThanOrEqual,
  NumericOperator'
  #-}

instance FromText NumericOperator where
  parser = (NumericOperator' . mk) <$> takeText

instance ToText NumericOperator where
  toText (NumericOperator' ci) = original ci

instance Hashable NumericOperator

instance NFData NumericOperator

instance ToByteString NumericOperator

instance ToQuery NumericOperator

instance ToHeader NumericOperator

instance ToJSON NumericOperator where
  toJSON = toJSONText
