{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.OAuthFlowType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.OAuthFlowType
  ( OAuthFlowType
      ( ..,
        ClientCredentials,
        Code,
        Implicit
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OAuthFlowType = OAuthFlowType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ClientCredentials :: OAuthFlowType
pattern ClientCredentials = OAuthFlowType' "client_credentials"

pattern Code :: OAuthFlowType
pattern Code = OAuthFlowType' "code"

pattern Implicit :: OAuthFlowType
pattern Implicit = OAuthFlowType' "implicit"

{-# COMPLETE
  ClientCredentials,
  Code,
  Implicit,
  OAuthFlowType'
  #-}

instance FromText OAuthFlowType where
  parser = (OAuthFlowType' . mk) <$> takeText

instance ToText OAuthFlowType where
  toText (OAuthFlowType' ci) = original ci

instance Hashable OAuthFlowType

instance NFData OAuthFlowType

instance ToByteString OAuthFlowType

instance ToQuery OAuthFlowType

instance ToHeader OAuthFlowType

instance ToJSON OAuthFlowType where
  toJSON = toJSONText

instance FromJSON OAuthFlowType where
  parseJSON = parseJSONText "OAuthFlowType"
