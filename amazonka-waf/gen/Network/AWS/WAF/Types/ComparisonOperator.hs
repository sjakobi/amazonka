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
-- Module      : Network.AWS.WAF.Types.ComparisonOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.ComparisonOperator
  ( ComparisonOperator
      ( ..,
        ComparisonOperatorEQ,
        ComparisonOperatorGE,
        ComparisonOperatorGT,
        ComparisonOperatorLE,
        ComparisonOperatorLT,
        ComparisonOperatorNE
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

pattern ComparisonOperatorEQ :: ComparisonOperator
pattern ComparisonOperatorEQ = ComparisonOperator' "EQ"

pattern ComparisonOperatorGE :: ComparisonOperator
pattern ComparisonOperatorGE = ComparisonOperator' "GE"

pattern ComparisonOperatorGT :: ComparisonOperator
pattern ComparisonOperatorGT = ComparisonOperator' "GT"

pattern ComparisonOperatorLE :: ComparisonOperator
pattern ComparisonOperatorLE = ComparisonOperator' "LE"

pattern ComparisonOperatorLT :: ComparisonOperator
pattern ComparisonOperatorLT = ComparisonOperator' "LT"

pattern ComparisonOperatorNE :: ComparisonOperator
pattern ComparisonOperatorNE = ComparisonOperator' "NE"

{-# COMPLETE
  ComparisonOperatorEQ,
  ComparisonOperatorGE,
  ComparisonOperatorGT,
  ComparisonOperatorLE,
  ComparisonOperatorLT,
  ComparisonOperatorNE,
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
