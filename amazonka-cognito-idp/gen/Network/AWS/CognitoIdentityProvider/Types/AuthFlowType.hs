{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AuthFlowType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.AuthFlowType
  ( AuthFlowType
      ( ..,
        AFTAdminNoSrpAuth,
        AFTAdminUserPasswordAuth,
        AFTCustomAuth,
        AFTRefreshToken,
        AFTRefreshTokenAuth,
        AFTUserPasswordAuth,
        AFTUserSrpAuth
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuthFlowType = AuthFlowType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AFTAdminNoSrpAuth :: AuthFlowType
pattern AFTAdminNoSrpAuth = AuthFlowType' "ADMIN_NO_SRP_AUTH"

pattern AFTAdminUserPasswordAuth :: AuthFlowType
pattern AFTAdminUserPasswordAuth = AuthFlowType' "ADMIN_USER_PASSWORD_AUTH"

pattern AFTCustomAuth :: AuthFlowType
pattern AFTCustomAuth = AuthFlowType' "CUSTOM_AUTH"

pattern AFTRefreshToken :: AuthFlowType
pattern AFTRefreshToken = AuthFlowType' "REFRESH_TOKEN"

pattern AFTRefreshTokenAuth :: AuthFlowType
pattern AFTRefreshTokenAuth = AuthFlowType' "REFRESH_TOKEN_AUTH"

pattern AFTUserPasswordAuth :: AuthFlowType
pattern AFTUserPasswordAuth = AuthFlowType' "USER_PASSWORD_AUTH"

pattern AFTUserSrpAuth :: AuthFlowType
pattern AFTUserSrpAuth = AuthFlowType' "USER_SRP_AUTH"

{-# COMPLETE
  AFTAdminNoSrpAuth,
  AFTAdminUserPasswordAuth,
  AFTCustomAuth,
  AFTRefreshToken,
  AFTRefreshTokenAuth,
  AFTUserPasswordAuth,
  AFTUserSrpAuth,
  AuthFlowType'
  #-}

instance FromText AuthFlowType where
  parser = (AuthFlowType' . mk) <$> takeText

instance ToText AuthFlowType where
  toText (AuthFlowType' ci) = original ci

instance Hashable AuthFlowType

instance NFData AuthFlowType

instance ToByteString AuthFlowType

instance ToQuery AuthFlowType

instance ToHeader AuthFlowType

instance ToJSON AuthFlowType where
  toJSON = toJSONText
