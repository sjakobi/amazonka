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
-- Module      : Network.AWS.DynamoDB.Types.ComparisonOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ComparisonOperator
  ( ComparisonOperator
      ( ..,
        ComparisonOperatorBEGINSWITH,
        ComparisonOperatorBETWEEN,
        ComparisonOperatorCONTAINS,
        ComparisonOperatorEQ,
        ComparisonOperatorGE,
        ComparisonOperatorGT,
        ComparisonOperatorIN,
        ComparisonOperatorLE,
        ComparisonOperatorLT,
        ComparisonOperatorNE,
        ComparisonOperatorNOTCONTAINS,
        ComparisonOperatorNOTNULL,
        ComparisonOperatorNULL
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

pattern ComparisonOperatorBEGINSWITH :: ComparisonOperator
pattern ComparisonOperatorBEGINSWITH = ComparisonOperator' "BEGINS_WITH"

pattern ComparisonOperatorBETWEEN :: ComparisonOperator
pattern ComparisonOperatorBETWEEN = ComparisonOperator' "BETWEEN"

pattern ComparisonOperatorCONTAINS :: ComparisonOperator
pattern ComparisonOperatorCONTAINS = ComparisonOperator' "CONTAINS"

pattern ComparisonOperatorEQ :: ComparisonOperator
pattern ComparisonOperatorEQ = ComparisonOperator' "EQ"

pattern ComparisonOperatorGE :: ComparisonOperator
pattern ComparisonOperatorGE = ComparisonOperator' "GE"

pattern ComparisonOperatorGT :: ComparisonOperator
pattern ComparisonOperatorGT = ComparisonOperator' "GT"

pattern ComparisonOperatorIN :: ComparisonOperator
pattern ComparisonOperatorIN = ComparisonOperator' "IN"

pattern ComparisonOperatorLE :: ComparisonOperator
pattern ComparisonOperatorLE = ComparisonOperator' "LE"

pattern ComparisonOperatorLT :: ComparisonOperator
pattern ComparisonOperatorLT = ComparisonOperator' "LT"

pattern ComparisonOperatorNE :: ComparisonOperator
pattern ComparisonOperatorNE = ComparisonOperator' "NE"

pattern ComparisonOperatorNOTCONTAINS :: ComparisonOperator
pattern ComparisonOperatorNOTCONTAINS = ComparisonOperator' "NOT_CONTAINS"

pattern ComparisonOperatorNOTNULL :: ComparisonOperator
pattern ComparisonOperatorNOTNULL = ComparisonOperator' "NOT_NULL"

pattern ComparisonOperatorNULL :: ComparisonOperator
pattern ComparisonOperatorNULL = ComparisonOperator' "NULL"

{-# COMPLETE
  ComparisonOperatorBEGINSWITH,
  ComparisonOperatorBETWEEN,
  ComparisonOperatorCONTAINS,
  ComparisonOperatorEQ,
  ComparisonOperatorGE,
  ComparisonOperatorGT,
  ComparisonOperatorIN,
  ComparisonOperatorLE,
  ComparisonOperatorLT,
  ComparisonOperatorNE,
  ComparisonOperatorNOTCONTAINS,
  ComparisonOperatorNOTNULL,
  ComparisonOperatorNULL,
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
