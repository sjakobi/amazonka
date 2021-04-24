{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Deleted,
        Draft,
        Published
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CommentStatusType = CommentStatusType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Deleted :: CommentStatusType
pattern Deleted = CommentStatusType' "DELETED"

pattern Draft :: CommentStatusType
pattern Draft = CommentStatusType' "DRAFT"

pattern Published :: CommentStatusType
pattern Published = CommentStatusType' "PUBLISHED"

{-# COMPLETE
  Deleted,
  Draft,
  Published,
  CommentStatusType'
  #-}

instance FromText CommentStatusType where
  parser = (CommentStatusType' . mk) <$> takeText

instance ToText CommentStatusType where
  toText (CommentStatusType' ci) = original ci

instance Hashable CommentStatusType

instance NFData CommentStatusType

instance ToByteString CommentStatusType

instance ToQuery CommentStatusType

instance ToHeader CommentStatusType

instance FromJSON CommentStatusType where
  parseJSON = parseJSONText "CommentStatusType"
