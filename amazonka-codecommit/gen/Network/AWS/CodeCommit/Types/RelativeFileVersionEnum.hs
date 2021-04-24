{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.RelativeFileVersionEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.RelativeFileVersionEnum
  ( RelativeFileVersionEnum
      ( ..,
        After,
        Before
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RelativeFileVersionEnum
  = RelativeFileVersionEnum'
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

pattern After :: RelativeFileVersionEnum
pattern After = RelativeFileVersionEnum' "AFTER"

pattern Before :: RelativeFileVersionEnum
pattern Before = RelativeFileVersionEnum' "BEFORE"

{-# COMPLETE
  After,
  Before,
  RelativeFileVersionEnum'
  #-}

instance FromText RelativeFileVersionEnum where
  parser = (RelativeFileVersionEnum' . mk) <$> takeText

instance ToText RelativeFileVersionEnum where
  toText (RelativeFileVersionEnum' ci) = original ci

instance Hashable RelativeFileVersionEnum

instance NFData RelativeFileVersionEnum

instance ToByteString RelativeFileVersionEnum

instance ToQuery RelativeFileVersionEnum

instance ToHeader RelativeFileVersionEnum

instance ToJSON RelativeFileVersionEnum where
  toJSON = toJSONText

instance FromJSON RelativeFileVersionEnum where
  parseJSON = parseJSONText "RelativeFileVersionEnum"
