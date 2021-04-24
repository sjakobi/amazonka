{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.TaskSetField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskSetField
  ( TaskSetField
      ( ..,
        TSFTags
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TaskSetField = TaskSetField' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TSFTags :: TaskSetField
pattern TSFTags = TaskSetField' "TAGS"

{-# COMPLETE
  TSFTags,
  TaskSetField'
  #-}

instance FromText TaskSetField where
  parser = (TaskSetField' . mk) <$> takeText

instance ToText TaskSetField where
  toText (TaskSetField' ci) = original ci

instance Hashable TaskSetField

instance NFData TaskSetField

instance ToByteString TaskSetField

instance ToQuery TaskSetField

instance ToHeader TaskSetField

instance ToJSON TaskSetField where
  toJSON = toJSONText
