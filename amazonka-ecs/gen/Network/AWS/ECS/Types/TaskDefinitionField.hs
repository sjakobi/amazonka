{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.TaskDefinitionField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskDefinitionField
  ( TaskDefinitionField
      ( ..,
        TDFTags
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TaskDefinitionField
  = TaskDefinitionField'
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

pattern TDFTags :: TaskDefinitionField
pattern TDFTags = TaskDefinitionField' "TAGS"

{-# COMPLETE
  TDFTags,
  TaskDefinitionField'
  #-}

instance FromText TaskDefinitionField where
  parser = (TaskDefinitionField' . mk) <$> takeText

instance ToText TaskDefinitionField where
  toText (TaskDefinitionField' ci) = original ci

instance Hashable TaskDefinitionField

instance NFData TaskDefinitionField

instance ToByteString TaskDefinitionField

instance ToQuery TaskDefinitionField

instance ToHeader TaskDefinitionField

instance ToJSON TaskDefinitionField where
  toJSON = toJSONText
