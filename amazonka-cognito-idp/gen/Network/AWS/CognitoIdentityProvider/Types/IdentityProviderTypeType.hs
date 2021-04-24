{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.IdentityProviderTypeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.IdentityProviderTypeType
  ( IdentityProviderTypeType
      ( ..,
        Facebook,
        Google,
        LoginWithAmazon,
        Oidc,
        Saml,
        SignInWithApple
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IdentityProviderTypeType
  = IdentityProviderTypeType'
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

pattern Facebook :: IdentityProviderTypeType
pattern Facebook = IdentityProviderTypeType' "Facebook"

pattern Google :: IdentityProviderTypeType
pattern Google = IdentityProviderTypeType' "Google"

pattern LoginWithAmazon :: IdentityProviderTypeType
pattern LoginWithAmazon = IdentityProviderTypeType' "LoginWithAmazon"

pattern Oidc :: IdentityProviderTypeType
pattern Oidc = IdentityProviderTypeType' "OIDC"

pattern Saml :: IdentityProviderTypeType
pattern Saml = IdentityProviderTypeType' "SAML"

pattern SignInWithApple :: IdentityProviderTypeType
pattern SignInWithApple = IdentityProviderTypeType' "SignInWithApple"

{-# COMPLETE
  Facebook,
  Google,
  LoginWithAmazon,
  Oidc,
  Saml,
  SignInWithApple,
  IdentityProviderTypeType'
  #-}

instance FromText IdentityProviderTypeType where
  parser = (IdentityProviderTypeType' . mk) <$> takeText

instance ToText IdentityProviderTypeType where
  toText (IdentityProviderTypeType' ci) = original ci

instance Hashable IdentityProviderTypeType

instance NFData IdentityProviderTypeType

instance ToByteString IdentityProviderTypeType

instance ToQuery IdentityProviderTypeType

instance ToHeader IdentityProviderTypeType

instance ToJSON IdentityProviderTypeType where
  toJSON = toJSONText

instance FromJSON IdentityProviderTypeType where
  parseJSON = parseJSONText "IdentityProviderTypeType"
