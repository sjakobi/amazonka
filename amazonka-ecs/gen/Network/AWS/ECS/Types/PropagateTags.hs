{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.PropagateTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.PropagateTags
  ( PropagateTags
      ( ..,
        Service,
        TaskDefinition
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PropagateTags = PropagateTags' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Service :: PropagateTags
pattern Service = PropagateTags' "SERVICE"

pattern TaskDefinition :: PropagateTags
pattern TaskDefinition = PropagateTags' "TASK_DEFINITION"

{-# COMPLETE
  Service,
  TaskDefinition,
  PropagateTags'
  #-}

instance FromText PropagateTags where
  parser = (PropagateTags' . mk) <$> takeText

instance ToText PropagateTags where
  toText (PropagateTags' ci) = original ci

instance Hashable PropagateTags

instance NFData PropagateTags

instance ToByteString PropagateTags

instance ToQuery PropagateTags

instance ToHeader PropagateTags

instance ToJSON PropagateTags where
  toJSON = toJSONText

instance FromJSON PropagateTags where
  parseJSON = parseJSONText "PropagateTags"
