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
-- Module      : Network.AWS.SecretsManager.Types.SortOrderType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecretsManager.Types.SortOrderType
  ( SortOrderType
      ( ..,
        SortOrderTypeAsc,
        SortOrderTypeDesc
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortOrderType = SortOrderType'
  { fromSortOrderType ::
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

pattern SortOrderTypeAsc :: SortOrderType
pattern SortOrderTypeAsc = SortOrderType' "asc"

pattern SortOrderTypeDesc :: SortOrderType
pattern SortOrderTypeDesc = SortOrderType' "desc"

{-# COMPLETE
  SortOrderTypeAsc,
  SortOrderTypeDesc,
  SortOrderType'
  #-}

instance Prelude.FromText SortOrderType where
  parser = SortOrderType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortOrderType where
  toText (SortOrderType' x) = x

instance Prelude.Hashable SortOrderType

instance Prelude.NFData SortOrderType

instance Prelude.ToByteString SortOrderType

instance Prelude.ToQuery SortOrderType

instance Prelude.ToHeader SortOrderType

instance Prelude.ToJSON SortOrderType where
  toJSON = Prelude.toJSONText
