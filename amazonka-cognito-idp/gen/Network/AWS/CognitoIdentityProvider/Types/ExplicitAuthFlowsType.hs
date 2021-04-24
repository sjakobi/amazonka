{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.ExplicitAuthFlowsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.ExplicitAuthFlowsType
  ( ExplicitAuthFlowsType
      ( ..,
        AdminNoSrpAuth,
        AllowAdminUserPasswordAuth,
        AllowCustomAuth,
        AllowRefreshTokenAuth,
        AllowUserPasswordAuth,
        AllowUserSrpAuth,
        CustomAuthFlowOnly,
        UserPasswordAuth
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExplicitAuthFlowsType
  = ExplicitAuthFlowsType'
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

pattern AdminNoSrpAuth :: ExplicitAuthFlowsType
pattern AdminNoSrpAuth = ExplicitAuthFlowsType' "ADMIN_NO_SRP_AUTH"

pattern AllowAdminUserPasswordAuth :: ExplicitAuthFlowsType
pattern AllowAdminUserPasswordAuth = ExplicitAuthFlowsType' "ALLOW_ADMIN_USER_PASSWORD_AUTH"

pattern AllowCustomAuth :: ExplicitAuthFlowsType
pattern AllowCustomAuth = ExplicitAuthFlowsType' "ALLOW_CUSTOM_AUTH"

pattern AllowRefreshTokenAuth :: ExplicitAuthFlowsType
pattern AllowRefreshTokenAuth = ExplicitAuthFlowsType' "ALLOW_REFRESH_TOKEN_AUTH"

pattern AllowUserPasswordAuth :: ExplicitAuthFlowsType
pattern AllowUserPasswordAuth = ExplicitAuthFlowsType' "ALLOW_USER_PASSWORD_AUTH"

pattern AllowUserSrpAuth :: ExplicitAuthFlowsType
pattern AllowUserSrpAuth = ExplicitAuthFlowsType' "ALLOW_USER_SRP_AUTH"

pattern CustomAuthFlowOnly :: ExplicitAuthFlowsType
pattern CustomAuthFlowOnly = ExplicitAuthFlowsType' "CUSTOM_AUTH_FLOW_ONLY"

pattern UserPasswordAuth :: ExplicitAuthFlowsType
pattern UserPasswordAuth = ExplicitAuthFlowsType' "USER_PASSWORD_AUTH"

{-# COMPLETE
  AdminNoSrpAuth,
  AllowAdminUserPasswordAuth,
  AllowCustomAuth,
  AllowRefreshTokenAuth,
  AllowUserPasswordAuth,
  AllowUserSrpAuth,
  CustomAuthFlowOnly,
  UserPasswordAuth,
  ExplicitAuthFlowsType'
  #-}

instance FromText ExplicitAuthFlowsType where
  parser = (ExplicitAuthFlowsType' . mk) <$> takeText

instance ToText ExplicitAuthFlowsType where
  toText (ExplicitAuthFlowsType' ci) = original ci

instance Hashable ExplicitAuthFlowsType

instance NFData ExplicitAuthFlowsType

instance ToByteString ExplicitAuthFlowsType

instance ToQuery ExplicitAuthFlowsType

instance ToHeader ExplicitAuthFlowsType

instance ToJSON ExplicitAuthFlowsType where
  toJSON = toJSONText

instance FromJSON ExplicitAuthFlowsType where
  parseJSON = parseJSONText "ExplicitAuthFlowsType"
