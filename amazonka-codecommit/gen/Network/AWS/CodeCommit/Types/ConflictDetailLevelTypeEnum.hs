{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.ConflictDetailLevelTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ConflictDetailLevelTypeEnum
  ( ConflictDetailLevelTypeEnum
      ( ..,
        FileLevel,
        LineLevel
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConflictDetailLevelTypeEnum
  = ConflictDetailLevelTypeEnum'
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

pattern FileLevel :: ConflictDetailLevelTypeEnum
pattern FileLevel = ConflictDetailLevelTypeEnum' "FILE_LEVEL"

pattern LineLevel :: ConflictDetailLevelTypeEnum
pattern LineLevel = ConflictDetailLevelTypeEnum' "LINE_LEVEL"

{-# COMPLETE
  FileLevel,
  LineLevel,
  ConflictDetailLevelTypeEnum'
  #-}

instance FromText ConflictDetailLevelTypeEnum where
  parser = (ConflictDetailLevelTypeEnum' . mk) <$> takeText

instance ToText ConflictDetailLevelTypeEnum where
  toText (ConflictDetailLevelTypeEnum' ci) = original ci

instance Hashable ConflictDetailLevelTypeEnum

instance NFData ConflictDetailLevelTypeEnum

instance ToByteString ConflictDetailLevelTypeEnum

instance ToQuery ConflictDetailLevelTypeEnum

instance ToHeader ConflictDetailLevelTypeEnum

instance ToJSON ConflictDetailLevelTypeEnum where
  toJSON = toJSONText
