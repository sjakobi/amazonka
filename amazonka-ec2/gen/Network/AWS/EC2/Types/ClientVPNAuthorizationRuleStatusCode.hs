{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientVPNAuthorizationRuleStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVPNAuthorizationRuleStatusCode
  ( ClientVPNAuthorizationRuleStatusCode
      ( ..,
        CVARSCActive,
        CVARSCAuthorizing,
        CVARSCFailed,
        CVARSCRevoking
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ClientVPNAuthorizationRuleStatusCode
  = ClientVPNAuthorizationRuleStatusCode'
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

pattern CVARSCActive :: ClientVPNAuthorizationRuleStatusCode
pattern CVARSCActive = ClientVPNAuthorizationRuleStatusCode' "active"

pattern CVARSCAuthorizing :: ClientVPNAuthorizationRuleStatusCode
pattern CVARSCAuthorizing = ClientVPNAuthorizationRuleStatusCode' "authorizing"

pattern CVARSCFailed :: ClientVPNAuthorizationRuleStatusCode
pattern CVARSCFailed = ClientVPNAuthorizationRuleStatusCode' "failed"

pattern CVARSCRevoking :: ClientVPNAuthorizationRuleStatusCode
pattern CVARSCRevoking = ClientVPNAuthorizationRuleStatusCode' "revoking"

{-# COMPLETE
  CVARSCActive,
  CVARSCAuthorizing,
  CVARSCFailed,
  CVARSCRevoking,
  ClientVPNAuthorizationRuleStatusCode'
  #-}

instance FromText ClientVPNAuthorizationRuleStatusCode where
  parser = (ClientVPNAuthorizationRuleStatusCode' . mk) <$> takeText

instance ToText ClientVPNAuthorizationRuleStatusCode where
  toText (ClientVPNAuthorizationRuleStatusCode' ci) = original ci

instance Hashable ClientVPNAuthorizationRuleStatusCode

instance NFData ClientVPNAuthorizationRuleStatusCode

instance ToByteString ClientVPNAuthorizationRuleStatusCode

instance ToQuery ClientVPNAuthorizationRuleStatusCode

instance ToHeader ClientVPNAuthorizationRuleStatusCode

instance FromXML ClientVPNAuthorizationRuleStatusCode where
  parseXML = parseXMLText "ClientVPNAuthorizationRuleStatusCode"
