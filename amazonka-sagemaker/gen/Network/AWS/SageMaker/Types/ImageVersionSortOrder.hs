{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        IVSOAscending,
        IVSODescending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageVersionSortOrder
  = ImageVersionSortOrder'
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

pattern IVSOAscending :: ImageVersionSortOrder
pattern IVSOAscending = ImageVersionSortOrder' "ASCENDING"

pattern IVSODescending :: ImageVersionSortOrder
pattern IVSODescending = ImageVersionSortOrder' "DESCENDING"

{-# COMPLETE
  IVSOAscending,
  IVSODescending,
  ImageVersionSortOrder'
  #-}

instance FromText ImageVersionSortOrder where
  parser = (ImageVersionSortOrder' . mk) <$> takeText

instance ToText ImageVersionSortOrder where
  toText (ImageVersionSortOrder' ci) = original ci

instance Hashable ImageVersionSortOrder

instance NFData ImageVersionSortOrder

instance ToByteString ImageVersionSortOrder

instance ToQuery ImageVersionSortOrder

instance ToHeader ImageVersionSortOrder

instance ToJSON ImageVersionSortOrder where
  toJSON = toJSONText
