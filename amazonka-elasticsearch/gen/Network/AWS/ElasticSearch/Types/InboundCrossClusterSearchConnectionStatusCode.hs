{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.InboundCrossClusterSearchConnectionStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.InboundCrossClusterSearchConnectionStatusCode
  ( InboundCrossClusterSearchConnectionStatusCode
      ( ..,
        Approved,
        Deleted,
        Deleting,
        PendingAcceptance,
        Rejected,
        Rejecting
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InboundCrossClusterSearchConnectionStatusCode
  = InboundCrossClusterSearchConnectionStatusCode'
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

pattern Approved :: InboundCrossClusterSearchConnectionStatusCode
pattern Approved = InboundCrossClusterSearchConnectionStatusCode' "APPROVED"

pattern Deleted :: InboundCrossClusterSearchConnectionStatusCode
pattern Deleted = InboundCrossClusterSearchConnectionStatusCode' "DELETED"

pattern Deleting :: InboundCrossClusterSearchConnectionStatusCode
pattern Deleting = InboundCrossClusterSearchConnectionStatusCode' "DELETING"

pattern PendingAcceptance :: InboundCrossClusterSearchConnectionStatusCode
pattern PendingAcceptance = InboundCrossClusterSearchConnectionStatusCode' "PENDING_ACCEPTANCE"

pattern Rejected :: InboundCrossClusterSearchConnectionStatusCode
pattern Rejected = InboundCrossClusterSearchConnectionStatusCode' "REJECTED"

pattern Rejecting :: InboundCrossClusterSearchConnectionStatusCode
pattern Rejecting = InboundCrossClusterSearchConnectionStatusCode' "REJECTING"

{-# COMPLETE
  Approved,
  Deleted,
  Deleting,
  PendingAcceptance,
  Rejected,
  Rejecting,
  InboundCrossClusterSearchConnectionStatusCode'
  #-}

instance FromText InboundCrossClusterSearchConnectionStatusCode where
  parser = (InboundCrossClusterSearchConnectionStatusCode' . mk) <$> takeText

instance ToText InboundCrossClusterSearchConnectionStatusCode where
  toText (InboundCrossClusterSearchConnectionStatusCode' ci) = original ci

instance Hashable InboundCrossClusterSearchConnectionStatusCode

instance NFData InboundCrossClusterSearchConnectionStatusCode

instance ToByteString InboundCrossClusterSearchConnectionStatusCode

instance ToQuery InboundCrossClusterSearchConnectionStatusCode

instance ToHeader InboundCrossClusterSearchConnectionStatusCode

instance FromJSON InboundCrossClusterSearchConnectionStatusCode where
  parseJSON = parseJSONText "InboundCrossClusterSearchConnectionStatusCode"
