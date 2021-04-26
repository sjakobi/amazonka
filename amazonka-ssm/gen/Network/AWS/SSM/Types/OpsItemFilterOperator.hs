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
-- Module      : Network.AWS.SSM.Types.OpsItemFilterOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemFilterOperator
  ( OpsItemFilterOperator
      ( ..,
        OpsItemFilterOperatorContains,
        OpsItemFilterOperatorEqual,
        OpsItemFilterOperatorGreaterThan,
        OpsItemFilterOperatorLessThan
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OpsItemFilterOperator = OpsItemFilterOperator'
  { fromOpsItemFilterOperator ::
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

pattern OpsItemFilterOperatorContains :: OpsItemFilterOperator
pattern OpsItemFilterOperatorContains = OpsItemFilterOperator' "Contains"

pattern OpsItemFilterOperatorEqual :: OpsItemFilterOperator
pattern OpsItemFilterOperatorEqual = OpsItemFilterOperator' "Equal"

pattern OpsItemFilterOperatorGreaterThan :: OpsItemFilterOperator
pattern OpsItemFilterOperatorGreaterThan = OpsItemFilterOperator' "GreaterThan"

pattern OpsItemFilterOperatorLessThan :: OpsItemFilterOperator
pattern OpsItemFilterOperatorLessThan = OpsItemFilterOperator' "LessThan"

{-# COMPLETE
  OpsItemFilterOperatorContains,
  OpsItemFilterOperatorEqual,
  OpsItemFilterOperatorGreaterThan,
  OpsItemFilterOperatorLessThan,
  OpsItemFilterOperator'
  #-}

instance Prelude.FromText OpsItemFilterOperator where
  parser = OpsItemFilterOperator' Prelude.<$> Prelude.takeText

instance Prelude.ToText OpsItemFilterOperator where
  toText (OpsItemFilterOperator' x) = x

instance Prelude.Hashable OpsItemFilterOperator

instance Prelude.NFData OpsItemFilterOperator

instance Prelude.ToByteString OpsItemFilterOperator

instance Prelude.ToQuery OpsItemFilterOperator

instance Prelude.ToHeader OpsItemFilterOperator

instance Prelude.ToJSON OpsItemFilterOperator where
  toJSON = Prelude.toJSONText
