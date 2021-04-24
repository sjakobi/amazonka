{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.HandshakeResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.HandshakeResourceType
  ( HandshakeResourceType
      ( ..,
        HRTAccount,
        HRTEmail,
        HRTMasterEmail,
        HRTMasterName,
        HRTNotes,
        HRTOrganization,
        HRTOrganizationFeatureSet,
        HRTParentHandshake
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HandshakeResourceType
  = HandshakeResourceType'
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

pattern HRTAccount :: HandshakeResourceType
pattern HRTAccount = HandshakeResourceType' "ACCOUNT"

pattern HRTEmail :: HandshakeResourceType
pattern HRTEmail = HandshakeResourceType' "EMAIL"

pattern HRTMasterEmail :: HandshakeResourceType
pattern HRTMasterEmail = HandshakeResourceType' "MASTER_EMAIL"

pattern HRTMasterName :: HandshakeResourceType
pattern HRTMasterName = HandshakeResourceType' "MASTER_NAME"

pattern HRTNotes :: HandshakeResourceType
pattern HRTNotes = HandshakeResourceType' "NOTES"

pattern HRTOrganization :: HandshakeResourceType
pattern HRTOrganization = HandshakeResourceType' "ORGANIZATION"

pattern HRTOrganizationFeatureSet :: HandshakeResourceType
pattern HRTOrganizationFeatureSet = HandshakeResourceType' "ORGANIZATION_FEATURE_SET"

pattern HRTParentHandshake :: HandshakeResourceType
pattern HRTParentHandshake = HandshakeResourceType' "PARENT_HANDSHAKE"

{-# COMPLETE
  HRTAccount,
  HRTEmail,
  HRTMasterEmail,
  HRTMasterName,
  HRTNotes,
  HRTOrganization,
  HRTOrganizationFeatureSet,
  HRTParentHandshake,
  HandshakeResourceType'
  #-}

instance FromText HandshakeResourceType where
  parser = (HandshakeResourceType' . mk) <$> takeText

instance ToText HandshakeResourceType where
  toText (HandshakeResourceType' ci) = original ci

instance Hashable HandshakeResourceType

instance NFData HandshakeResourceType

instance ToByteString HandshakeResourceType

instance ToQuery HandshakeResourceType

instance ToHeader HandshakeResourceType

instance FromJSON HandshakeResourceType where
  parseJSON = parseJSONText "HandshakeResourceType"
