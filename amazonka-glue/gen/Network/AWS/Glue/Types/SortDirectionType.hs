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
-- Module      : Network.AWS.Glue.Types.SortDirectionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SortDirectionType
  ( SortDirectionType
      ( ..,
        SortDirectionTypeASCENDING,
        SortDirectionTypeDESCENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortDirectionType = SortDirectionType'
  { fromSortDirectionType ::
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

pattern SortDirectionTypeASCENDING :: SortDirectionType
pattern SortDirectionTypeASCENDING = SortDirectionType' "ASCENDING"

pattern SortDirectionTypeDESCENDING :: SortDirectionType
pattern SortDirectionTypeDESCENDING = SortDirectionType' "DESCENDING"

{-# COMPLETE
  SortDirectionTypeASCENDING,
  SortDirectionTypeDESCENDING,
  SortDirectionType'
  #-}

instance Prelude.FromText SortDirectionType where
  parser = SortDirectionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortDirectionType where
  toText (SortDirectionType' x) = x

instance Prelude.Hashable SortDirectionType

instance Prelude.NFData SortDirectionType

instance Prelude.ToByteString SortDirectionType

instance Prelude.ToQuery SortDirectionType

instance Prelude.ToHeader SortDirectionType

instance Prelude.ToJSON SortDirectionType where
  toJSON = Prelude.toJSONText
