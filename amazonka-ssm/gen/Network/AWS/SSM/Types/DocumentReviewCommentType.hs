{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentReviewCommentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentReviewCommentType
  ( DocumentReviewCommentType
      ( ..,
        Comment
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DocumentReviewCommentType
  = DocumentReviewCommentType'
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

pattern Comment :: DocumentReviewCommentType
pattern Comment = DocumentReviewCommentType' "Comment"

{-# COMPLETE
  Comment,
  DocumentReviewCommentType'
  #-}

instance FromText DocumentReviewCommentType where
  parser = (DocumentReviewCommentType' . mk) <$> takeText

instance ToText DocumentReviewCommentType where
  toText (DocumentReviewCommentType' ci) = original ci

instance Hashable DocumentReviewCommentType

instance NFData DocumentReviewCommentType

instance ToByteString DocumentReviewCommentType

instance ToQuery DocumentReviewCommentType

instance ToHeader DocumentReviewCommentType

instance ToJSON DocumentReviewCommentType where
  toJSON = toJSONText

instance FromJSON DocumentReviewCommentType where
  parseJSON = parseJSONText "DocumentReviewCommentType"
