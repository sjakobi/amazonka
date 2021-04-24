{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.VPCLinkStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.VPCLinkStatus
  ( VPCLinkStatus
      ( ..,
        VLSAvailable,
        VLSDeleting,
        VLSFailed,
        VLSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VPCLinkStatus = VPCLinkStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VLSAvailable :: VPCLinkStatus
pattern VLSAvailable = VPCLinkStatus' "AVAILABLE"

pattern VLSDeleting :: VPCLinkStatus
pattern VLSDeleting = VPCLinkStatus' "DELETING"

pattern VLSFailed :: VPCLinkStatus
pattern VLSFailed = VPCLinkStatus' "FAILED"

pattern VLSPending :: VPCLinkStatus
pattern VLSPending = VPCLinkStatus' "PENDING"

{-# COMPLETE
  VLSAvailable,
  VLSDeleting,
  VLSFailed,
  VLSPending,
  VPCLinkStatus'
  #-}

instance FromText VPCLinkStatus where
  parser = (VPCLinkStatus' . mk) <$> takeText

instance ToText VPCLinkStatus where
  toText (VPCLinkStatus' ci) = original ci

instance Hashable VPCLinkStatus

instance NFData VPCLinkStatus

instance ToByteString VPCLinkStatus

instance ToQuery VPCLinkStatus

instance ToHeader VPCLinkStatus

instance FromJSON VPCLinkStatus where
  parseJSON = parseJSONText "VPCLinkStatus"
