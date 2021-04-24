{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.OutboundCrossClusterSearchConnectionStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.OutboundCrossClusterSearchConnectionStatusCode
  ( OutboundCrossClusterSearchConnectionStatusCode
      ( ..,
        OCCSCSCActive,
        OCCSCSCDeleted,
        OCCSCSCDeleting,
        OCCSCSCPendingAcceptance,
        OCCSCSCProvisioning,
        OCCSCSCRejected,
        OCCSCSCValidating,
        OCCSCSCValidationFailed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OutboundCrossClusterSearchConnectionStatusCode
  = OutboundCrossClusterSearchConnectionStatusCode'
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

pattern OCCSCSCActive :: OutboundCrossClusterSearchConnectionStatusCode
pattern OCCSCSCActive = OutboundCrossClusterSearchConnectionStatusCode' "ACTIVE"

pattern OCCSCSCDeleted :: OutboundCrossClusterSearchConnectionStatusCode
pattern OCCSCSCDeleted = OutboundCrossClusterSearchConnectionStatusCode' "DELETED"

pattern OCCSCSCDeleting :: OutboundCrossClusterSearchConnectionStatusCode
pattern OCCSCSCDeleting = OutboundCrossClusterSearchConnectionStatusCode' "DELETING"

pattern OCCSCSCPendingAcceptance :: OutboundCrossClusterSearchConnectionStatusCode
pattern OCCSCSCPendingAcceptance = OutboundCrossClusterSearchConnectionStatusCode' "PENDING_ACCEPTANCE"

pattern OCCSCSCProvisioning :: OutboundCrossClusterSearchConnectionStatusCode
pattern OCCSCSCProvisioning = OutboundCrossClusterSearchConnectionStatusCode' "PROVISIONING"

pattern OCCSCSCRejected :: OutboundCrossClusterSearchConnectionStatusCode
pattern OCCSCSCRejected = OutboundCrossClusterSearchConnectionStatusCode' "REJECTED"

pattern OCCSCSCValidating :: OutboundCrossClusterSearchConnectionStatusCode
pattern OCCSCSCValidating = OutboundCrossClusterSearchConnectionStatusCode' "VALIDATING"

pattern OCCSCSCValidationFailed :: OutboundCrossClusterSearchConnectionStatusCode
pattern OCCSCSCValidationFailed = OutboundCrossClusterSearchConnectionStatusCode' "VALIDATION_FAILED"

{-# COMPLETE
  OCCSCSCActive,
  OCCSCSCDeleted,
  OCCSCSCDeleting,
  OCCSCSCPendingAcceptance,
  OCCSCSCProvisioning,
  OCCSCSCRejected,
  OCCSCSCValidating,
  OCCSCSCValidationFailed,
  OutboundCrossClusterSearchConnectionStatusCode'
  #-}

instance FromText OutboundCrossClusterSearchConnectionStatusCode where
  parser = (OutboundCrossClusterSearchConnectionStatusCode' . mk) <$> takeText

instance ToText OutboundCrossClusterSearchConnectionStatusCode where
  toText (OutboundCrossClusterSearchConnectionStatusCode' ci) = original ci

instance Hashable OutboundCrossClusterSearchConnectionStatusCode

instance NFData OutboundCrossClusterSearchConnectionStatusCode

instance ToByteString OutboundCrossClusterSearchConnectionStatusCode

instance ToQuery OutboundCrossClusterSearchConnectionStatusCode

instance ToHeader OutboundCrossClusterSearchConnectionStatusCode

instance FromJSON OutboundCrossClusterSearchConnectionStatusCode where
  parseJSON = parseJSONText "OutboundCrossClusterSearchConnectionStatusCode"
