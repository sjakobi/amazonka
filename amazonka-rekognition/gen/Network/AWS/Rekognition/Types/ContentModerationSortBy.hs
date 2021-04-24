{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.ContentModerationSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.ContentModerationSortBy
  ( ContentModerationSortBy
      ( ..,
        CMSBName,
        CMSBTimestamp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContentModerationSortBy
  = ContentModerationSortBy'
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

pattern CMSBName :: ContentModerationSortBy
pattern CMSBName = ContentModerationSortBy' "NAME"

pattern CMSBTimestamp :: ContentModerationSortBy
pattern CMSBTimestamp = ContentModerationSortBy' "TIMESTAMP"

{-# COMPLETE
  CMSBName,
  CMSBTimestamp,
  ContentModerationSortBy'
  #-}

instance FromText ContentModerationSortBy where
  parser = (ContentModerationSortBy' . mk) <$> takeText

instance ToText ContentModerationSortBy where
  toText (ContentModerationSortBy' ci) = original ci

instance Hashable ContentModerationSortBy

instance NFData ContentModerationSortBy

instance ToByteString ContentModerationSortBy

instance ToQuery ContentModerationSortBy

instance ToHeader ContentModerationSortBy

instance ToJSON ContentModerationSortBy where
  toJSON = toJSONText
