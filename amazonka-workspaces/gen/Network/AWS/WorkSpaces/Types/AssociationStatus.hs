{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.AssociationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.AssociationStatus
  ( AssociationStatus
      ( ..,
        AssociatedWithOwnerAccount,
        AssociatedWithSharedAccount,
        NotAssociated,
        PendingAssociation,
        PendingDisassociation
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssociationStatus = AssociationStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AssociatedWithOwnerAccount :: AssociationStatus
pattern AssociatedWithOwnerAccount = AssociationStatus' "ASSOCIATED_WITH_OWNER_ACCOUNT"

pattern AssociatedWithSharedAccount :: AssociationStatus
pattern AssociatedWithSharedAccount = AssociationStatus' "ASSOCIATED_WITH_SHARED_ACCOUNT"

pattern NotAssociated :: AssociationStatus
pattern NotAssociated = AssociationStatus' "NOT_ASSOCIATED"

pattern PendingAssociation :: AssociationStatus
pattern PendingAssociation = AssociationStatus' "PENDING_ASSOCIATION"

pattern PendingDisassociation :: AssociationStatus
pattern PendingDisassociation = AssociationStatus' "PENDING_DISASSOCIATION"

{-# COMPLETE
  AssociatedWithOwnerAccount,
  AssociatedWithSharedAccount,
  NotAssociated,
  PendingAssociation,
  PendingDisassociation,
  AssociationStatus'
  #-}

instance FromText AssociationStatus where
  parser = (AssociationStatus' . mk) <$> takeText

instance ToText AssociationStatus where
  toText (AssociationStatus' ci) = original ci

instance Hashable AssociationStatus

instance NFData AssociationStatus

instance ToByteString AssociationStatus

instance ToQuery AssociationStatus

instance ToHeader AssociationStatus

instance FromJSON AssociationStatus where
  parseJSON = parseJSONText "AssociationStatus"
