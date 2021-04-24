{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.ComparisonOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ComparisonOperator
  ( ComparisonOperator
      ( ..,
        EqualTo,
        GreaterThan,
        LessThan
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The comparison operator of a notification. Currently the service supports the following operators:
--
--
-- @GREATER_THAN@ , @LESS_THAN@ , @EQUAL_TO@
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

pattern EqualTo :: ComparisonOperator
pattern EqualTo = ComparisonOperator' "EQUAL_TO"

pattern GreaterThan :: ComparisonOperator
pattern GreaterThan = ComparisonOperator' "GREATER_THAN"

pattern LessThan :: ComparisonOperator
pattern LessThan = ComparisonOperator' "LESS_THAN"

{-# COMPLETE
  EqualTo,
  GreaterThan,
  LessThan,
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
