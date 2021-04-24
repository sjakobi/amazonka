{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.AuthorizerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.AuthorizerType
  ( AuthorizerType
      ( ..,
        AuthorizerCognitoUserPools,
        AuthorizerRequest,
        AuthorizerToken
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The authorizer type. Valid values are @TOKEN@ for a Lambda function using a single authorization token submitted in a custom header, @REQUEST@ for a Lambda function using incoming request parameters, and @COGNITO_USER_POOLS@ for using an Amazon Cognito user pool.
data AuthorizerType = AuthorizerType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AuthorizerCognitoUserPools :: AuthorizerType
pattern AuthorizerCognitoUserPools = AuthorizerType' "COGNITO_USER_POOLS"

pattern AuthorizerRequest :: AuthorizerType
pattern AuthorizerRequest = AuthorizerType' "REQUEST"

pattern AuthorizerToken :: AuthorizerType
pattern AuthorizerToken = AuthorizerType' "TOKEN"

{-# COMPLETE
  AuthorizerCognitoUserPools,
  AuthorizerRequest,
  AuthorizerToken,
  AuthorizerType'
  #-}

instance FromText AuthorizerType where
  parser = (AuthorizerType' . mk) <$> takeText

instance ToText AuthorizerType where
  toText (AuthorizerType' ci) = original ci

instance Hashable AuthorizerType

instance NFData AuthorizerType

instance ToByteString AuthorizerType

instance ToQuery AuthorizerType

instance ToHeader AuthorizerType

instance ToJSON AuthorizerType where
  toJSON = toJSONText

instance FromJSON AuthorizerType where
  parseJSON = parseJSONText "AuthorizerType"
