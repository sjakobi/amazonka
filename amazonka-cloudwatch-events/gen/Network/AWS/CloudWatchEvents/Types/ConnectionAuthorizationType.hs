{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionAuthorizationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionAuthorizationType
  ( ConnectionAuthorizationType
      ( ..,
        APIKey,
        Basic,
        OauthClientCredentials
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectionAuthorizationType
  = ConnectionAuthorizationType'
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

pattern APIKey :: ConnectionAuthorizationType
pattern APIKey = ConnectionAuthorizationType' "API_KEY"

pattern Basic :: ConnectionAuthorizationType
pattern Basic = ConnectionAuthorizationType' "BASIC"

pattern OauthClientCredentials :: ConnectionAuthorizationType
pattern OauthClientCredentials = ConnectionAuthorizationType' "OAUTH_CLIENT_CREDENTIALS"

{-# COMPLETE
  APIKey,
  Basic,
  OauthClientCredentials,
  ConnectionAuthorizationType'
  #-}

instance FromText ConnectionAuthorizationType where
  parser = (ConnectionAuthorizationType' . mk) <$> takeText

instance ToText ConnectionAuthorizationType where
  toText (ConnectionAuthorizationType' ci) = original ci

instance Hashable ConnectionAuthorizationType

instance NFData ConnectionAuthorizationType

instance ToByteString ConnectionAuthorizationType

instance ToQuery ConnectionAuthorizationType

instance ToHeader ConnectionAuthorizationType

instance ToJSON ConnectionAuthorizationType where
  toJSON = toJSONText

instance FromJSON ConnectionAuthorizationType where
  parseJSON = parseJSONText "ConnectionAuthorizationType"
