{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TransformSortColumnType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TransformSortColumnType
  ( TransformSortColumnType
      ( ..,
        Created,
        LastModified,
        Name,
        Status,
        TransformType
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TransformSortColumnType
  = TransformSortColumnType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Created :: TransformSortColumnType
pattern Created = TransformSortColumnType' "CREATED"

pattern LastModified :: TransformSortColumnType
pattern LastModified = TransformSortColumnType' "LAST_MODIFIED"

pattern Name :: TransformSortColumnType
pattern Name = TransformSortColumnType' "NAME"

pattern Status :: TransformSortColumnType
pattern Status = TransformSortColumnType' "STATUS"

pattern TransformType :: TransformSortColumnType
pattern TransformType = TransformSortColumnType' "TRANSFORM_TYPE"

{-# COMPLETE
  Created,
  LastModified,
  Name,
  Status,
  TransformType,
  TransformSortColumnType'
  #-}

instance FromText TransformSortColumnType where
  parser = (TransformSortColumnType' . mk) <$> takeText

instance ToText TransformSortColumnType where
  toText (TransformSortColumnType' ci) = original ci

instance Hashable TransformSortColumnType

instance NFData TransformSortColumnType

instance ToByteString TransformSortColumnType

instance ToQuery TransformSortColumnType

instance ToHeader TransformSortColumnType

instance ToJSON TransformSortColumnType where
  toJSON = toJSONText
