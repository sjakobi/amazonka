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
-- Module      : Network.AWS.SSM.Types.OpsItemEventFilterOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemEventFilterOperator
  ( OpsItemEventFilterOperator
      ( ..,
        OpsItemEventFilterOperatorEqual
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OpsItemEventFilterOperator = OpsItemEventFilterOperator'
  { fromOpsItemEventFilterOperator ::
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

pattern OpsItemEventFilterOperatorEqual :: OpsItemEventFilterOperator
pattern OpsItemEventFilterOperatorEqual = OpsItemEventFilterOperator' "Equal"

{-# COMPLETE
  OpsItemEventFilterOperatorEqual,
  OpsItemEventFilterOperator'
  #-}

instance Prelude.FromText OpsItemEventFilterOperator where
  parser = OpsItemEventFilterOperator' Prelude.<$> Prelude.takeText

instance Prelude.ToText OpsItemEventFilterOperator where
  toText (OpsItemEventFilterOperator' x) = x

instance Prelude.Hashable OpsItemEventFilterOperator

instance Prelude.NFData OpsItemEventFilterOperator

instance Prelude.ToByteString OpsItemEventFilterOperator

instance Prelude.ToQuery OpsItemEventFilterOperator

instance Prelude.ToHeader OpsItemEventFilterOperator

instance Prelude.ToJSON OpsItemEventFilterOperator where
  toJSON = Prelude.toJSONText
