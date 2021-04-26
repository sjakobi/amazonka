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
-- Module      : Network.AWS.Budgets.Types.ComparisonOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ComparisonOperator
  ( ComparisonOperator
      ( ..,
        ComparisonOperatorEQUALTO,
        ComparisonOperatorGREATERTHAN,
        ComparisonOperatorLESSTHAN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The comparison operator of a notification. Currently the service
-- supports the following operators:
--
-- @GREATER_THAN@, @LESS_THAN@, @EQUAL_TO@
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

pattern ComparisonOperatorEQUALTO :: ComparisonOperator
pattern ComparisonOperatorEQUALTO = ComparisonOperator' "EQUAL_TO"

pattern ComparisonOperatorGREATERTHAN :: ComparisonOperator
pattern ComparisonOperatorGREATERTHAN = ComparisonOperator' "GREATER_THAN"

pattern ComparisonOperatorLESSTHAN :: ComparisonOperator
pattern ComparisonOperatorLESSTHAN = ComparisonOperator' "LESS_THAN"

{-# COMPLETE
  ComparisonOperatorEQUALTO,
  ComparisonOperatorGREATERTHAN,
  ComparisonOperatorLESSTHAN,
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
