{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ImageVersionSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ImageVersionSortBy
  ( ImageVersionSortBy
      ( ..,
        IVSBCreationTime,
        IVSBLastModifiedTime,
        IVSBVersion
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageVersionSortBy
  = ImageVersionSortBy'
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

pattern IVSBCreationTime :: ImageVersionSortBy
pattern IVSBCreationTime = ImageVersionSortBy' "CREATION_TIME"

pattern IVSBLastModifiedTime :: ImageVersionSortBy
pattern IVSBLastModifiedTime = ImageVersionSortBy' "LAST_MODIFIED_TIME"

pattern IVSBVersion :: ImageVersionSortBy
pattern IVSBVersion = ImageVersionSortBy' "VERSION"

{-# COMPLETE
  IVSBCreationTime,
  IVSBLastModifiedTime,
  IVSBVersion,
  ImageVersionSortBy'
  #-}

instance FromText ImageVersionSortBy where
  parser = (ImageVersionSortBy' . mk) <$> takeText

instance ToText ImageVersionSortBy where
  toText (ImageVersionSortBy' ci) = original ci

instance Hashable ImageVersionSortBy

instance NFData ImageVersionSortBy

instance ToByteString ImageVersionSortBy

instance ToQuery ImageVersionSortBy

instance ToHeader ImageVersionSortBy

instance ToJSON ImageVersionSortBy where
  toJSON = toJSONText
