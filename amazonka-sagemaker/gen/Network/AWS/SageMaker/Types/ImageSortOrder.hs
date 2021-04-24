{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ISOAscending,
        ISODescending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageSortOrder = ImageSortOrder' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ISOAscending :: ImageSortOrder
pattern ISOAscending = ImageSortOrder' "ASCENDING"

pattern ISODescending :: ImageSortOrder
pattern ISODescending = ImageSortOrder' "DESCENDING"

{-# COMPLETE
  ISOAscending,
  ISODescending,
  ImageSortOrder'
  #-}

instance FromText ImageSortOrder where
  parser = (ImageSortOrder' . mk) <$> takeText

instance ToText ImageSortOrder where
  toText (ImageSortOrder' ci) = original ci

instance Hashable ImageSortOrder

instance NFData ImageSortOrder

instance ToByteString ImageSortOrder

instance ToQuery ImageSortOrder

instance ToHeader ImageSortOrder

instance ToJSON ImageSortOrder where
  toJSON = toJSONText
