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
-- Module      : Network.AWS.CostExplorer.Types.NumericOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.NumericOperator
  ( NumericOperator
      ( ..,
        NumericOperatorBETWEEN,
        NumericOperatorEQUAL,
        NumericOperatorGREATERTHAN,
        NumericOperatorGREATERTHANOREQUAL,
        NumericOperatorLESSTHAN,
        NumericOperatorLESSTHANOREQUAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NumericOperator = NumericOperator'
  { fromNumericOperator ::
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

pattern NumericOperatorBETWEEN :: NumericOperator
pattern NumericOperatorBETWEEN = NumericOperator' "BETWEEN"

pattern NumericOperatorEQUAL :: NumericOperator
pattern NumericOperatorEQUAL = NumericOperator' "EQUAL"

pattern NumericOperatorGREATERTHAN :: NumericOperator
pattern NumericOperatorGREATERTHAN = NumericOperator' "GREATER_THAN"

pattern NumericOperatorGREATERTHANOREQUAL :: NumericOperator
pattern NumericOperatorGREATERTHANOREQUAL = NumericOperator' "GREATER_THAN_OR_EQUAL"

pattern NumericOperatorLESSTHAN :: NumericOperator
pattern NumericOperatorLESSTHAN = NumericOperator' "LESS_THAN"

pattern NumericOperatorLESSTHANOREQUAL :: NumericOperator
pattern NumericOperatorLESSTHANOREQUAL = NumericOperator' "LESS_THAN_OR_EQUAL"

{-# COMPLETE
  NumericOperatorBETWEEN,
  NumericOperatorEQUAL,
  NumericOperatorGREATERTHAN,
  NumericOperatorGREATERTHANOREQUAL,
  NumericOperatorLESSTHAN,
  NumericOperatorLESSTHANOREQUAL,
  NumericOperator'
  #-}

instance Prelude.FromText NumericOperator where
  parser = NumericOperator' Prelude.<$> Prelude.takeText

instance Prelude.ToText NumericOperator where
  toText (NumericOperator' x) = x

instance Prelude.Hashable NumericOperator

instance Prelude.NFData NumericOperator

instance Prelude.ToByteString NumericOperator

instance Prelude.ToQuery NumericOperator

instance Prelude.ToHeader NumericOperator

instance Prelude.ToJSON NumericOperator where
  toJSON = Prelude.toJSONText
