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
-- Module      : Network.AWS.DynamoDB.Types.ConditionalOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ConditionalOperator
  ( ConditionalOperator
      ( ..,
        ConditionalOperatorAND,
        ConditionalOperatorOR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConditionalOperator = ConditionalOperator'
  { fromConditionalOperator ::
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

pattern ConditionalOperatorAND :: ConditionalOperator
pattern ConditionalOperatorAND = ConditionalOperator' "AND"

pattern ConditionalOperatorOR :: ConditionalOperator
pattern ConditionalOperatorOR = ConditionalOperator' "OR"

{-# COMPLETE
  ConditionalOperatorAND,
  ConditionalOperatorOR,
  ConditionalOperator'
  #-}

instance Prelude.FromText ConditionalOperator where
  parser = ConditionalOperator' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConditionalOperator where
  toText (ConditionalOperator' x) = x

instance Prelude.Hashable ConditionalOperator

instance Prelude.NFData ConditionalOperator

instance Prelude.ToByteString ConditionalOperator

instance Prelude.ToQuery ConditionalOperator

instance Prelude.ToHeader ConditionalOperator

instance Prelude.ToJSON ConditionalOperator where
  toJSON = Prelude.toJSONText
