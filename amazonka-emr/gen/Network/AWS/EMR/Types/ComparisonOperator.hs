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
-- Module      : Network.AWS.EMR.Types.ComparisonOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.ComparisonOperator
  ( ComparisonOperator
      ( ..,
        ComparisonOperatorGREATERTHAN,
        ComparisonOperatorGREATERTHANOREQUAL,
        ComparisonOperatorLESSTHAN,
        ComparisonOperatorLESSTHANOREQUAL
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

pattern ComparisonOperatorGREATERTHAN :: ComparisonOperator
pattern ComparisonOperatorGREATERTHAN = ComparisonOperator' "GREATER_THAN"

pattern ComparisonOperatorGREATERTHANOREQUAL :: ComparisonOperator
pattern ComparisonOperatorGREATERTHANOREQUAL = ComparisonOperator' "GREATER_THAN_OR_EQUAL"

pattern ComparisonOperatorLESSTHAN :: ComparisonOperator
pattern ComparisonOperatorLESSTHAN = ComparisonOperator' "LESS_THAN"

pattern ComparisonOperatorLESSTHANOREQUAL :: ComparisonOperator
pattern ComparisonOperatorLESSTHANOREQUAL = ComparisonOperator' "LESS_THAN_OR_EQUAL"

{-# COMPLETE
  ComparisonOperatorGREATERTHAN,
  ComparisonOperatorGREATERTHANOREQUAL,
  ComparisonOperatorLESSTHAN,
  ComparisonOperatorLESSTHANOREQUAL,
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
