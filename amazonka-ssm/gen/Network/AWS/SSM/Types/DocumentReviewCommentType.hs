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
-- Module      : Network.AWS.SSM.Types.DocumentReviewCommentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentReviewCommentType
  ( DocumentReviewCommentType
      ( ..,
        DocumentReviewCommentTypeComment
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentReviewCommentType = DocumentReviewCommentType'
  { fromDocumentReviewCommentType ::
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

pattern DocumentReviewCommentTypeComment :: DocumentReviewCommentType
pattern DocumentReviewCommentTypeComment = DocumentReviewCommentType' "Comment"

{-# COMPLETE
  DocumentReviewCommentTypeComment,
  DocumentReviewCommentType'
  #-}

instance Prelude.FromText DocumentReviewCommentType where
  parser = DocumentReviewCommentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentReviewCommentType where
  toText (DocumentReviewCommentType' x) = x

instance Prelude.Hashable DocumentReviewCommentType

instance Prelude.NFData DocumentReviewCommentType

instance Prelude.ToByteString DocumentReviewCommentType

instance Prelude.ToQuery DocumentReviewCommentType

instance Prelude.ToHeader DocumentReviewCommentType

instance Prelude.ToJSON DocumentReviewCommentType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DocumentReviewCommentType where
  parseJSON = Prelude.parseJSONText "DocumentReviewCommentType"
