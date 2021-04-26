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
-- Module      : Network.AWS.WorkDocs.Types.ResourceSortType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.ResourceSortType
  ( ResourceSortType
      ( ..,
        ResourceSortTypeDATE,
        ResourceSortTypeNAME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceSortType = ResourceSortType'
  { fromResourceSortType ::
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

pattern ResourceSortTypeDATE :: ResourceSortType
pattern ResourceSortTypeDATE = ResourceSortType' "DATE"

pattern ResourceSortTypeNAME :: ResourceSortType
pattern ResourceSortTypeNAME = ResourceSortType' "NAME"

{-# COMPLETE
  ResourceSortTypeDATE,
  ResourceSortTypeNAME,
  ResourceSortType'
  #-}

instance Prelude.FromText ResourceSortType where
  parser = ResourceSortType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceSortType where
  toText (ResourceSortType' x) = x

instance Prelude.Hashable ResourceSortType

instance Prelude.NFData ResourceSortType

instance Prelude.ToByteString ResourceSortType

instance Prelude.ToQuery ResourceSortType

instance Prelude.ToHeader ResourceSortType

instance Prelude.ToJSON ResourceSortType where
  toJSON = Prelude.toJSONText
