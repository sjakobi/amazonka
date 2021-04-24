{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientVPNRouteStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVPNRouteStatusCode
  ( ClientVPNRouteStatusCode
      ( ..,
        CVRSCActive,
        CVRSCCreating,
        CVRSCDeleting,
        CVRSCFailed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ClientVPNRouteStatusCode
  = ClientVPNRouteStatusCode'
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

pattern CVRSCActive :: ClientVPNRouteStatusCode
pattern CVRSCActive = ClientVPNRouteStatusCode' "active"

pattern CVRSCCreating :: ClientVPNRouteStatusCode
pattern CVRSCCreating = ClientVPNRouteStatusCode' "creating"

pattern CVRSCDeleting :: ClientVPNRouteStatusCode
pattern CVRSCDeleting = ClientVPNRouteStatusCode' "deleting"

pattern CVRSCFailed :: ClientVPNRouteStatusCode
pattern CVRSCFailed = ClientVPNRouteStatusCode' "failed"

{-# COMPLETE
  CVRSCActive,
  CVRSCCreating,
  CVRSCDeleting,
  CVRSCFailed,
  ClientVPNRouteStatusCode'
  #-}

instance FromText ClientVPNRouteStatusCode where
  parser = (ClientVPNRouteStatusCode' . mk) <$> takeText

instance ToText ClientVPNRouteStatusCode where
  toText (ClientVPNRouteStatusCode' ci) = original ci

instance Hashable ClientVPNRouteStatusCode

instance NFData ClientVPNRouteStatusCode

instance ToByteString ClientVPNRouteStatusCode

instance ToQuery ClientVPNRouteStatusCode

instance ToHeader ClientVPNRouteStatusCode

instance FromXML ClientVPNRouteStatusCode where
  parseXML = parseXMLText "ClientVPNRouteStatusCode"
