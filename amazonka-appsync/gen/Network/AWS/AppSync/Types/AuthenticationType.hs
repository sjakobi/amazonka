{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.AuthenticationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.AuthenticationType
  ( AuthenticationType
      ( ..,
        ATAPIKey,
        ATAWSIAM,
        ATAmazonCognitoUserPools,
        ATOpenidConnect
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuthenticationType
  = AuthenticationType'
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

pattern ATAPIKey :: AuthenticationType
pattern ATAPIKey = AuthenticationType' "API_KEY"

pattern ATAWSIAM :: AuthenticationType
pattern ATAWSIAM = AuthenticationType' "AWS_IAM"

pattern ATAmazonCognitoUserPools :: AuthenticationType
pattern ATAmazonCognitoUserPools = AuthenticationType' "AMAZON_COGNITO_USER_POOLS"

pattern ATOpenidConnect :: AuthenticationType
pattern ATOpenidConnect = AuthenticationType' "OPENID_CONNECT"

{-# COMPLETE
  ATAPIKey,
  ATAWSIAM,
  ATAmazonCognitoUserPools,
  ATOpenidConnect,
  AuthenticationType'
  #-}

instance FromText AuthenticationType where
  parser = (AuthenticationType' . mk) <$> takeText

instance ToText AuthenticationType where
  toText (AuthenticationType' ci) = original ci

instance Hashable AuthenticationType

instance NFData AuthenticationType

instance ToByteString AuthenticationType

instance ToQuery AuthenticationType

instance ToHeader AuthenticationType

instance ToJSON AuthenticationType where
  toJSON = toJSONText

instance FromJSON AuthenticationType where
  parseJSON = parseJSONText "AuthenticationType"
