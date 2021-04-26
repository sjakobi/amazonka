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
-- Module      : Network.AWS.DeviceFarm.Types.RuleOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.RuleOperator
  ( RuleOperator
      ( ..,
        RuleOperatorCONTAINS,
        RuleOperatorEQUALS,
        RuleOperatorGREATERTHAN,
        RuleOperatorGREATERTHANOREQUALS,
        RuleOperatorIN,
        RuleOperatorLESSTHAN,
        RuleOperatorLESSTHANOREQUALS,
        RuleOperatorNOTIN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RuleOperator = RuleOperator'
  { fromRuleOperator ::
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

pattern RuleOperatorCONTAINS :: RuleOperator
pattern RuleOperatorCONTAINS = RuleOperator' "CONTAINS"

pattern RuleOperatorEQUALS :: RuleOperator
pattern RuleOperatorEQUALS = RuleOperator' "EQUALS"

pattern RuleOperatorGREATERTHAN :: RuleOperator
pattern RuleOperatorGREATERTHAN = RuleOperator' "GREATER_THAN"

pattern RuleOperatorGREATERTHANOREQUALS :: RuleOperator
pattern RuleOperatorGREATERTHANOREQUALS = RuleOperator' "GREATER_THAN_OR_EQUALS"

pattern RuleOperatorIN :: RuleOperator
pattern RuleOperatorIN = RuleOperator' "IN"

pattern RuleOperatorLESSTHAN :: RuleOperator
pattern RuleOperatorLESSTHAN = RuleOperator' "LESS_THAN"

pattern RuleOperatorLESSTHANOREQUALS :: RuleOperator
pattern RuleOperatorLESSTHANOREQUALS = RuleOperator' "LESS_THAN_OR_EQUALS"

pattern RuleOperatorNOTIN :: RuleOperator
pattern RuleOperatorNOTIN = RuleOperator' "NOT_IN"

{-# COMPLETE
  RuleOperatorCONTAINS,
  RuleOperatorEQUALS,
  RuleOperatorGREATERTHAN,
  RuleOperatorGREATERTHANOREQUALS,
  RuleOperatorIN,
  RuleOperatorLESSTHAN,
  RuleOperatorLESSTHANOREQUALS,
  RuleOperatorNOTIN,
  RuleOperator'
  #-}

instance Prelude.FromText RuleOperator where
  parser = RuleOperator' Prelude.<$> Prelude.takeText

instance Prelude.ToText RuleOperator where
  toText (RuleOperator' x) = x

instance Prelude.Hashable RuleOperator

instance Prelude.NFData RuleOperator

instance Prelude.ToByteString RuleOperator

instance Prelude.ToQuery RuleOperator

instance Prelude.ToHeader RuleOperator

instance Prelude.ToJSON RuleOperator where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RuleOperator where
  parseJSON = Prelude.parseJSONText "RuleOperator"
