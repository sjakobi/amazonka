{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.GatewayResponseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.GatewayResponseType
  ( GatewayResponseType
      ( ..,
        APIConfigurationError,
        AccessDenied,
        AuthorizerConfigurationError,
        AuthorizerFailure,
        BadRequestBody,
        BadRequestParameters,
        Default4XX,
        Default5XX,
        ExpiredToken,
        IntegrationFailure,
        IntegrationTimeout,
        InvalidAPIKey,
        InvalidSignature,
        MissingAuthenticationToken,
        QuotaExceeded,
        RequestTooLarge,
        ResourceNotFound,
        Throttled,
        Unauthorized,
        UnsupportedMediaType
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GatewayResponseType
  = GatewayResponseType'
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

pattern APIConfigurationError :: GatewayResponseType
pattern APIConfigurationError = GatewayResponseType' "API_CONFIGURATION_ERROR"

pattern AccessDenied :: GatewayResponseType
pattern AccessDenied = GatewayResponseType' "ACCESS_DENIED"

pattern AuthorizerConfigurationError :: GatewayResponseType
pattern AuthorizerConfigurationError = GatewayResponseType' "AUTHORIZER_CONFIGURATION_ERROR"

pattern AuthorizerFailure :: GatewayResponseType
pattern AuthorizerFailure = GatewayResponseType' "AUTHORIZER_FAILURE"

pattern BadRequestBody :: GatewayResponseType
pattern BadRequestBody = GatewayResponseType' "BAD_REQUEST_BODY"

pattern BadRequestParameters :: GatewayResponseType
pattern BadRequestParameters = GatewayResponseType' "BAD_REQUEST_PARAMETERS"

pattern Default4XX :: GatewayResponseType
pattern Default4XX = GatewayResponseType' "DEFAULT_4XX"

pattern Default5XX :: GatewayResponseType
pattern Default5XX = GatewayResponseType' "DEFAULT_5XX"

pattern ExpiredToken :: GatewayResponseType
pattern ExpiredToken = GatewayResponseType' "EXPIRED_TOKEN"

pattern IntegrationFailure :: GatewayResponseType
pattern IntegrationFailure = GatewayResponseType' "INTEGRATION_FAILURE"

pattern IntegrationTimeout :: GatewayResponseType
pattern IntegrationTimeout = GatewayResponseType' "INTEGRATION_TIMEOUT"

pattern InvalidAPIKey :: GatewayResponseType
pattern InvalidAPIKey = GatewayResponseType' "INVALID_API_KEY"

pattern InvalidSignature :: GatewayResponseType
pattern InvalidSignature = GatewayResponseType' "INVALID_SIGNATURE"

pattern MissingAuthenticationToken :: GatewayResponseType
pattern MissingAuthenticationToken = GatewayResponseType' "MISSING_AUTHENTICATION_TOKEN"

pattern QuotaExceeded :: GatewayResponseType
pattern QuotaExceeded = GatewayResponseType' "QUOTA_EXCEEDED"

pattern RequestTooLarge :: GatewayResponseType
pattern RequestTooLarge = GatewayResponseType' "REQUEST_TOO_LARGE"

pattern ResourceNotFound :: GatewayResponseType
pattern ResourceNotFound = GatewayResponseType' "RESOURCE_NOT_FOUND"

pattern Throttled :: GatewayResponseType
pattern Throttled = GatewayResponseType' "THROTTLED"

pattern Unauthorized :: GatewayResponseType
pattern Unauthorized = GatewayResponseType' "UNAUTHORIZED"

pattern UnsupportedMediaType :: GatewayResponseType
pattern UnsupportedMediaType = GatewayResponseType' "UNSUPPORTED_MEDIA_TYPE"

{-# COMPLETE
  APIConfigurationError,
  AccessDenied,
  AuthorizerConfigurationError,
  AuthorizerFailure,
  BadRequestBody,
  BadRequestParameters,
  Default4XX,
  Default5XX,
  ExpiredToken,
  IntegrationFailure,
  IntegrationTimeout,
  InvalidAPIKey,
  InvalidSignature,
  MissingAuthenticationToken,
  QuotaExceeded,
  RequestTooLarge,
  ResourceNotFound,
  Throttled,
  Unauthorized,
  UnsupportedMediaType,
  GatewayResponseType'
  #-}

instance FromText GatewayResponseType where
  parser = (GatewayResponseType' . mk) <$> takeText

instance ToText GatewayResponseType where
  toText (GatewayResponseType' ci) = original ci

instance Hashable GatewayResponseType

instance NFData GatewayResponseType

instance ToByteString GatewayResponseType

instance ToQuery GatewayResponseType

instance ToHeader GatewayResponseType

instance ToJSON GatewayResponseType where
  toJSON = toJSONText

instance FromJSON GatewayResponseType where
  parseJSON = parseJSONText "GatewayResponseType"
