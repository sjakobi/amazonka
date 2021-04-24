{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.ScalingStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.ScalingStatusType
  ( ScalingStatusType
      ( ..,
        SSTActive,
        SSTDeleteRequested,
        SSTDeleted,
        SSTDeleting,
        SSTError',
        SSTUpdateRequested,
        SSTUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScalingStatusType = ScalingStatusType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSTActive :: ScalingStatusType
pattern SSTActive = ScalingStatusType' "ACTIVE"

pattern SSTDeleteRequested :: ScalingStatusType
pattern SSTDeleteRequested = ScalingStatusType' "DELETE_REQUESTED"

pattern SSTDeleted :: ScalingStatusType
pattern SSTDeleted = ScalingStatusType' "DELETED"

pattern SSTDeleting :: ScalingStatusType
pattern SSTDeleting = ScalingStatusType' "DELETING"

pattern SSTError' :: ScalingStatusType
pattern SSTError' = ScalingStatusType' "ERROR"

pattern SSTUpdateRequested :: ScalingStatusType
pattern SSTUpdateRequested = ScalingStatusType' "UPDATE_REQUESTED"

pattern SSTUpdating :: ScalingStatusType
pattern SSTUpdating = ScalingStatusType' "UPDATING"

{-# COMPLETE
  SSTActive,
  SSTDeleteRequested,
  SSTDeleted,
  SSTDeleting,
  SSTError',
  SSTUpdateRequested,
  SSTUpdating,
  ScalingStatusType'
  #-}

instance FromText ScalingStatusType where
  parser = (ScalingStatusType' . mk) <$> takeText

instance ToText ScalingStatusType where
  toText (ScalingStatusType' ci) = original ci

instance Hashable ScalingStatusType

instance NFData ScalingStatusType

instance ToByteString ScalingStatusType

instance ToQuery ScalingStatusType

instance ToHeader ScalingStatusType

instance ToJSON ScalingStatusType where
  toJSON = toJSONText

instance FromJSON ScalingStatusType where
  parseJSON = parseJSONText "ScalingStatusType"
