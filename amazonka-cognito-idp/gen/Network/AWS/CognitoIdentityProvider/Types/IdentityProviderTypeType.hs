{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        IdentityProviderTypeTypeFacebook,
        IdentityProviderTypeTypeGoogle,
        IdentityProviderTypeTypeLoginWithAmazon,
        IdentityProviderTypeTypeOIDC,
        IdentityProviderTypeTypeSAML,
        IdentityProviderTypeTypeSignInWithApple
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IdentityProviderTypeType = IdentityProviderTypeType'
  { fromIdentityProviderTypeType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern IdentityProviderTypeTypeFacebook :: IdentityProviderTypeType
pattern IdentityProviderTypeTypeFacebook = IdentityProviderTypeType' "Facebook"

pattern IdentityProviderTypeTypeGoogle :: IdentityProviderTypeType
pattern IdentityProviderTypeTypeGoogle = IdentityProviderTypeType' "Google"

pattern IdentityProviderTypeTypeLoginWithAmazon :: IdentityProviderTypeType
pattern IdentityProviderTypeTypeLoginWithAmazon = IdentityProviderTypeType' "LoginWithAmazon"

pattern IdentityProviderTypeTypeOIDC :: IdentityProviderTypeType
pattern IdentityProviderTypeTypeOIDC = IdentityProviderTypeType' "OIDC"

pattern IdentityProviderTypeTypeSAML :: IdentityProviderTypeType
pattern IdentityProviderTypeTypeSAML = IdentityProviderTypeType' "SAML"

pattern IdentityProviderTypeTypeSignInWithApple :: IdentityProviderTypeType
pattern IdentityProviderTypeTypeSignInWithApple = IdentityProviderTypeType' "SignInWithApple"

{-# COMPLETE
  IdentityProviderTypeTypeFacebook,
  IdentityProviderTypeTypeGoogle,
  IdentityProviderTypeTypeLoginWithAmazon,
  IdentityProviderTypeTypeOIDC,
  IdentityProviderTypeTypeSAML,
  IdentityProviderTypeTypeSignInWithApple,
  IdentityProviderTypeType'
  #-}

instance Prelude.FromText IdentityProviderTypeType where
  parser = IdentityProviderTypeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText IdentityProviderTypeType where
  toText (IdentityProviderTypeType' x) = x

instance Prelude.Hashable IdentityProviderTypeType

instance Prelude.NFData IdentityProviderTypeType

instance Prelude.ToByteString IdentityProviderTypeType

instance Prelude.ToQuery IdentityProviderTypeType

instance Prelude.ToHeader IdentityProviderTypeType

instance Prelude.ToJSON IdentityProviderTypeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON IdentityProviderTypeType where
  parseJSON = Prelude.parseJSONText "IdentityProviderTypeType"
