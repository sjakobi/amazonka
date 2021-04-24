{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentMetadataEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentMetadataEnum
  ( DocumentMetadataEnum
      ( ..,
        DocumentReviews
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DocumentMetadataEnum
  = DocumentMetadataEnum'
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

pattern DocumentReviews :: DocumentMetadataEnum
pattern DocumentReviews = DocumentMetadataEnum' "DocumentReviews"

{-# COMPLETE
  DocumentReviews,
  DocumentMetadataEnum'
  #-}

instance FromText DocumentMetadataEnum where
  parser = (DocumentMetadataEnum' . mk) <$> takeText

instance ToText DocumentMetadataEnum where
  toText (DocumentMetadataEnum' ci) = original ci

instance Hashable DocumentMetadataEnum

instance NFData DocumentMetadataEnum

instance ToByteString DocumentMetadataEnum

instance ToQuery DocumentMetadataEnum

instance ToHeader DocumentMetadataEnum

instance ToJSON DocumentMetadataEnum where
  toJSON = toJSONText
