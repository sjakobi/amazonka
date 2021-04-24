{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.DomainStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.DomainStatusType
  ( DomainStatusType
      ( ..,
        DSTActive,
        DSTCreating,
        DSTDeleting,
        DSTFailed,
        DSTUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DomainStatusType = DomainStatusType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DSTActive :: DomainStatusType
pattern DSTActive = DomainStatusType' "ACTIVE"

pattern DSTCreating :: DomainStatusType
pattern DSTCreating = DomainStatusType' "CREATING"

pattern DSTDeleting :: DomainStatusType
pattern DSTDeleting = DomainStatusType' "DELETING"

pattern DSTFailed :: DomainStatusType
pattern DSTFailed = DomainStatusType' "FAILED"

pattern DSTUpdating :: DomainStatusType
pattern DSTUpdating = DomainStatusType' "UPDATING"

{-# COMPLETE
  DSTActive,
  DSTCreating,
  DSTDeleting,
  DSTFailed,
  DSTUpdating,
  DomainStatusType'
  #-}

instance FromText DomainStatusType where
  parser = (DomainStatusType' . mk) <$> takeText

instance ToText DomainStatusType where
  toText (DomainStatusType' ci) = original ci

instance Hashable DomainStatusType

instance NFData DomainStatusType

instance ToByteString DomainStatusType

instance ToQuery DomainStatusType

instance ToHeader DomainStatusType

instance FromJSON DomainStatusType where
  parseJSON = parseJSONText "DomainStatusType"
