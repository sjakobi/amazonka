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
-- Module      : Network.AWS.SageMaker.Types.ImageVersionSortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ImageVersionSortOrder
  ( ImageVersionSortOrder
      ( ..,
        ImageVersionSortOrderASCENDING,
        ImageVersionSortOrderDESCENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageVersionSortOrder = ImageVersionSortOrder'
  { fromImageVersionSortOrder ::
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

pattern ImageVersionSortOrderASCENDING :: ImageVersionSortOrder
pattern ImageVersionSortOrderASCENDING = ImageVersionSortOrder' "ASCENDING"

pattern ImageVersionSortOrderDESCENDING :: ImageVersionSortOrder
pattern ImageVersionSortOrderDESCENDING = ImageVersionSortOrder' "DESCENDING"

{-# COMPLETE
  ImageVersionSortOrderASCENDING,
  ImageVersionSortOrderDESCENDING,
  ImageVersionSortOrder'
  #-}

instance Prelude.FromText ImageVersionSortOrder where
  parser = ImageVersionSortOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageVersionSortOrder where
  toText (ImageVersionSortOrder' x) = x

instance Prelude.Hashable ImageVersionSortOrder

instance Prelude.NFData ImageVersionSortOrder

instance Prelude.ToByteString ImageVersionSortOrder

instance Prelude.ToQuery ImageVersionSortOrder

instance Prelude.ToHeader ImageVersionSortOrder

instance Prelude.ToJSON ImageVersionSortOrder where
  toJSON = Prelude.toJSONText
