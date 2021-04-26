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
-- Module      : Network.AWS.SageMaker.Types.ImageSortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ImageSortOrder
  ( ImageSortOrder
      ( ..,
        ImageSortOrderASCENDING,
        ImageSortOrderDESCENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageSortOrder = ImageSortOrder'
  { fromImageSortOrder ::
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

pattern ImageSortOrderASCENDING :: ImageSortOrder
pattern ImageSortOrderASCENDING = ImageSortOrder' "ASCENDING"

pattern ImageSortOrderDESCENDING :: ImageSortOrder
pattern ImageSortOrderDESCENDING = ImageSortOrder' "DESCENDING"

{-# COMPLETE
  ImageSortOrderASCENDING,
  ImageSortOrderDESCENDING,
  ImageSortOrder'
  #-}

instance Prelude.FromText ImageSortOrder where
  parser = ImageSortOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageSortOrder where
  toText (ImageSortOrder' x) = x

instance Prelude.Hashable ImageSortOrder

instance Prelude.NFData ImageSortOrder

instance Prelude.ToByteString ImageSortOrder

instance Prelude.ToQuery ImageSortOrder

instance Prelude.ToHeader ImageSortOrder

instance Prelude.ToJSON ImageSortOrder where
  toJSON = Prelude.toJSONText
