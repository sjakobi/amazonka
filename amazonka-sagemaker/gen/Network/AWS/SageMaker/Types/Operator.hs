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
-- Module      : Network.AWS.SageMaker.Types.Operator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Operator
  ( Operator
      ( ..,
        OperatorContains,
        OperatorEquals,
        OperatorExists,
        OperatorGreaterThan,
        OperatorGreaterThanOrEqualTo,
        OperatorIN,
        OperatorLessThan,
        OperatorLessThanOrEqualTo,
        OperatorNotEquals,
        OperatorNotExists
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Operator = Operator'
  { fromOperator ::
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

pattern OperatorContains :: Operator
pattern OperatorContains = Operator' "Contains"

pattern OperatorEquals :: Operator
pattern OperatorEquals = Operator' "Equals"

pattern OperatorExists :: Operator
pattern OperatorExists = Operator' "Exists"

pattern OperatorGreaterThan :: Operator
pattern OperatorGreaterThan = Operator' "GreaterThan"

pattern OperatorGreaterThanOrEqualTo :: Operator
pattern OperatorGreaterThanOrEqualTo = Operator' "GreaterThanOrEqualTo"

pattern OperatorIN :: Operator
pattern OperatorIN = Operator' "In"

pattern OperatorLessThan :: Operator
pattern OperatorLessThan = Operator' "LessThan"

pattern OperatorLessThanOrEqualTo :: Operator
pattern OperatorLessThanOrEqualTo = Operator' "LessThanOrEqualTo"

pattern OperatorNotEquals :: Operator
pattern OperatorNotEquals = Operator' "NotEquals"

pattern OperatorNotExists :: Operator
pattern OperatorNotExists = Operator' "NotExists"

{-# COMPLETE
  OperatorContains,
  OperatorEquals,
  OperatorExists,
  OperatorGreaterThan,
  OperatorGreaterThanOrEqualTo,
  OperatorIN,
  OperatorLessThan,
  OperatorLessThanOrEqualTo,
  OperatorNotEquals,
  OperatorNotExists,
  Operator'
  #-}

instance Prelude.FromText Operator where
  parser = Operator' Prelude.<$> Prelude.takeText

instance Prelude.ToText Operator where
  toText (Operator' x) = x

instance Prelude.Hashable Operator

instance Prelude.NFData Operator

instance Prelude.ToByteString Operator

instance Prelude.ToQuery Operator

instance Prelude.ToHeader Operator

instance Prelude.ToJSON Operator where
  toJSON = Prelude.toJSONText
