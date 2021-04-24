{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ImageSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ImageSortBy
  ( ImageSortBy
      ( ..,
        ISBCreationTime,
        ISBImageName,
        ISBLastModifiedTime
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageSortBy = ImageSortBy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ISBCreationTime :: ImageSortBy
pattern ISBCreationTime = ImageSortBy' "CREATION_TIME"

pattern ISBImageName :: ImageSortBy
pattern ISBImageName = ImageSortBy' "IMAGE_NAME"

pattern ISBLastModifiedTime :: ImageSortBy
pattern ISBLastModifiedTime = ImageSortBy' "LAST_MODIFIED_TIME"

{-# COMPLETE
  ISBCreationTime,
  ISBImageName,
  ISBLastModifiedTime,
  ImageSortBy'
  #-}

instance FromText ImageSortBy where
  parser = (ImageSortBy' . mk) <$> takeText

instance ToText ImageSortBy where
  toText (ImageSortBy' ci) = original ci

instance Hashable ImageSortBy

instance NFData ImageSortBy

instance ToByteString ImageSortBy

instance ToQuery ImageSortBy

instance ToHeader ImageSortBy

instance ToJSON ImageSortBy where
  toJSON = toJSONText
