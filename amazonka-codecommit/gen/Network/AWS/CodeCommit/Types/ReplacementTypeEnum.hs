{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.ReplacementTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ReplacementTypeEnum
  ( ReplacementTypeEnum
      ( ..,
        KeepBase,
        KeepDestination,
        KeepSource,
        UseNewContent
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReplacementTypeEnum
  = ReplacementTypeEnum'
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

pattern KeepBase :: ReplacementTypeEnum
pattern KeepBase = ReplacementTypeEnum' "KEEP_BASE"

pattern KeepDestination :: ReplacementTypeEnum
pattern KeepDestination = ReplacementTypeEnum' "KEEP_DESTINATION"

pattern KeepSource :: ReplacementTypeEnum
pattern KeepSource = ReplacementTypeEnum' "KEEP_SOURCE"

pattern UseNewContent :: ReplacementTypeEnum
pattern UseNewContent = ReplacementTypeEnum' "USE_NEW_CONTENT"

{-# COMPLETE
  KeepBase,
  KeepDestination,
  KeepSource,
  UseNewContent,
  ReplacementTypeEnum'
  #-}

instance FromText ReplacementTypeEnum where
  parser = (ReplacementTypeEnum' . mk) <$> takeText

instance ToText ReplacementTypeEnum where
  toText (ReplacementTypeEnum' ci) = original ci

instance Hashable ReplacementTypeEnum

instance NFData ReplacementTypeEnum

instance ToByteString ReplacementTypeEnum

instance ToQuery ReplacementTypeEnum

instance ToHeader ReplacementTypeEnum

instance ToJSON ReplacementTypeEnum where
  toJSON = toJSONText
