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
-- Module      : Network.AWS.WorkDocs.Types.CommentStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.CommentStatusType
  ( CommentStatusType
      ( ..,
        CommentStatusTypeDELETED,
        CommentStatusTypeDRAFT,
        CommentStatusTypePUBLISHED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CommentStatusType = CommentStatusType'
  { fromCommentStatusType ::
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

pattern CommentStatusTypeDELETED :: CommentStatusType
pattern CommentStatusTypeDELETED = CommentStatusType' "DELETED"

pattern CommentStatusTypeDRAFT :: CommentStatusType
pattern CommentStatusTypeDRAFT = CommentStatusType' "DRAFT"

pattern CommentStatusTypePUBLISHED :: CommentStatusType
pattern CommentStatusTypePUBLISHED = CommentStatusType' "PUBLISHED"

{-# COMPLETE
  CommentStatusTypeDELETED,
  CommentStatusTypeDRAFT,
  CommentStatusTypePUBLISHED,
  CommentStatusType'
  #-}

instance Prelude.FromText CommentStatusType where
  parser = CommentStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CommentStatusType where
  toText (CommentStatusType' x) = x

instance Prelude.Hashable CommentStatusType

instance Prelude.NFData CommentStatusType

instance Prelude.ToByteString CommentStatusType

instance Prelude.ToQuery CommentStatusType

instance Prelude.ToHeader CommentStatusType

instance Prelude.FromJSON CommentStatusType where
  parseJSON = Prelude.parseJSONText "CommentStatusType"
