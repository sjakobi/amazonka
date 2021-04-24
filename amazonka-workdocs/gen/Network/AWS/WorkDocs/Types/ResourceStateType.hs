{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.ResourceStateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.ResourceStateType
  ( ResourceStateType
      ( ..,
        Active,
        Recycled,
        Recycling,
        Restoring
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceStateType = ResourceStateType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: ResourceStateType
pattern Active = ResourceStateType' "ACTIVE"

pattern Recycled :: ResourceStateType
pattern Recycled = ResourceStateType' "RECYCLED"

pattern Recycling :: ResourceStateType
pattern Recycling = ResourceStateType' "RECYCLING"

pattern Restoring :: ResourceStateType
pattern Restoring = ResourceStateType' "RESTORING"

{-# COMPLETE
  Active,
  Recycled,
  Recycling,
  Restoring,
  ResourceStateType'
  #-}

instance FromText ResourceStateType where
  parser = (ResourceStateType' . mk) <$> takeText

instance ToText ResourceStateType where
  toText (ResourceStateType' ci) = original ci

instance Hashable ResourceStateType

instance NFData ResourceStateType

instance ToByteString ResourceStateType

instance ToQuery ResourceStateType

instance ToHeader ResourceStateType

instance ToJSON ResourceStateType where
  toJSON = toJSONText

instance FromJSON ResourceStateType where
  parseJSON = parseJSONText "ResourceStateType"
