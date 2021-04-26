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
-- Module      : Network.AWS.SageMaker.Types.BooleanOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.BooleanOperator
  ( BooleanOperator
      ( ..,
        BooleanOperatorAnd,
        BooleanOperatorOR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BooleanOperator = BooleanOperator'
  { fromBooleanOperator ::
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

pattern BooleanOperatorAnd :: BooleanOperator
pattern BooleanOperatorAnd = BooleanOperator' "And"

pattern BooleanOperatorOR :: BooleanOperator
pattern BooleanOperatorOR = BooleanOperator' "Or"

{-# COMPLETE
  BooleanOperatorAnd,
  BooleanOperatorOR,
  BooleanOperator'
  #-}

instance Prelude.FromText BooleanOperator where
  parser = BooleanOperator' Prelude.<$> Prelude.takeText

instance Prelude.ToText BooleanOperator where
  toText (BooleanOperator' x) = x

instance Prelude.Hashable BooleanOperator

instance Prelude.NFData BooleanOperator

instance Prelude.ToByteString BooleanOperator

instance Prelude.ToQuery BooleanOperator

instance Prelude.ToHeader BooleanOperator

instance Prelude.ToJSON BooleanOperator where
  toJSON = Prelude.toJSONText
