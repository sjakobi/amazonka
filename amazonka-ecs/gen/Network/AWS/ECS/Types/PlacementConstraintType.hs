{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.PlacementConstraintType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.PlacementConstraintType
  ( PlacementConstraintType
      ( ..,
        PCTDistinctInstance,
        PCTMemberOf
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PlacementConstraintType
  = PlacementConstraintType'
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

pattern PCTDistinctInstance :: PlacementConstraintType
pattern PCTDistinctInstance = PlacementConstraintType' "distinctInstance"

pattern PCTMemberOf :: PlacementConstraintType
pattern PCTMemberOf = PlacementConstraintType' "memberOf"

{-# COMPLETE
  PCTDistinctInstance,
  PCTMemberOf,
  PlacementConstraintType'
  #-}

instance FromText PlacementConstraintType where
  parser = (PlacementConstraintType' . mk) <$> takeText

instance ToText PlacementConstraintType where
  toText (PlacementConstraintType' ci) = original ci

instance Hashable PlacementConstraintType

instance NFData PlacementConstraintType

instance ToByteString PlacementConstraintType

instance ToQuery PlacementConstraintType

instance ToHeader PlacementConstraintType

instance ToJSON PlacementConstraintType where
  toJSON = toJSONText

instance FromJSON PlacementConstraintType where
  parseJSON = parseJSONText "PlacementConstraintType"
