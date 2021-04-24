{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.CommentVisibilityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.CommentVisibilityType
  ( CommentVisibilityType
      ( ..,
        Private,
        Public
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CommentVisibilityType
  = CommentVisibilityType'
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

pattern Private :: CommentVisibilityType
pattern Private = CommentVisibilityType' "PRIVATE"

pattern Public :: CommentVisibilityType
pattern Public = CommentVisibilityType' "PUBLIC"

{-# COMPLETE
  Private,
  Public,
  CommentVisibilityType'
  #-}

instance FromText CommentVisibilityType where
  parser = (CommentVisibilityType' . mk) <$> takeText

instance ToText CommentVisibilityType where
  toText (CommentVisibilityType' ci) = original ci

instance Hashable CommentVisibilityType

instance NFData CommentVisibilityType

instance ToByteString CommentVisibilityType

instance ToQuery CommentVisibilityType

instance ToHeader CommentVisibilityType

instance ToJSON CommentVisibilityType where
  toJSON = toJSONText

instance FromJSON CommentVisibilityType where
  parseJSON = parseJSONText "CommentVisibilityType"
