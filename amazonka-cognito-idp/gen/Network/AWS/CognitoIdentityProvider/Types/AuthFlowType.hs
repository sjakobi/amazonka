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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AuthFlowType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.AuthFlowType
  ( AuthFlowType
      ( ..,
        AuthFlowTypeADMINNOSRPAUTH,
        AuthFlowTypeADMINUSERPASSWORDAUTH,
        AuthFlowTypeCUSTOMAUTH,
        AuthFlowTypeREFRESHTOKEN,
        AuthFlowTypeREFRESHTOKENAUTH,
        AuthFlowTypeUSERPASSWORDAUTH,
        AuthFlowTypeUSERSRPAUTH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthFlowType = AuthFlowType'
  { fromAuthFlowType ::
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

pattern AuthFlowTypeADMINNOSRPAUTH :: AuthFlowType
pattern AuthFlowTypeADMINNOSRPAUTH = AuthFlowType' "ADMIN_NO_SRP_AUTH"

pattern AuthFlowTypeADMINUSERPASSWORDAUTH :: AuthFlowType
pattern AuthFlowTypeADMINUSERPASSWORDAUTH = AuthFlowType' "ADMIN_USER_PASSWORD_AUTH"

pattern AuthFlowTypeCUSTOMAUTH :: AuthFlowType
pattern AuthFlowTypeCUSTOMAUTH = AuthFlowType' "CUSTOM_AUTH"

pattern AuthFlowTypeREFRESHTOKEN :: AuthFlowType
pattern AuthFlowTypeREFRESHTOKEN = AuthFlowType' "REFRESH_TOKEN"

pattern AuthFlowTypeREFRESHTOKENAUTH :: AuthFlowType
pattern AuthFlowTypeREFRESHTOKENAUTH = AuthFlowType' "REFRESH_TOKEN_AUTH"

pattern AuthFlowTypeUSERPASSWORDAUTH :: AuthFlowType
pattern AuthFlowTypeUSERPASSWORDAUTH = AuthFlowType' "USER_PASSWORD_AUTH"

pattern AuthFlowTypeUSERSRPAUTH :: AuthFlowType
pattern AuthFlowTypeUSERSRPAUTH = AuthFlowType' "USER_SRP_AUTH"

{-# COMPLETE
  AuthFlowTypeADMINNOSRPAUTH,
  AuthFlowTypeADMINUSERPASSWORDAUTH,
  AuthFlowTypeCUSTOMAUTH,
  AuthFlowTypeREFRESHTOKEN,
  AuthFlowTypeREFRESHTOKENAUTH,
  AuthFlowTypeUSERPASSWORDAUTH,
  AuthFlowTypeUSERSRPAUTH,
  AuthFlowType'
  #-}

instance Prelude.FromText AuthFlowType where
  parser = AuthFlowType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthFlowType where
  toText (AuthFlowType' x) = x

instance Prelude.Hashable AuthFlowType

instance Prelude.NFData AuthFlowType

instance Prelude.ToByteString AuthFlowType

instance Prelude.ToQuery AuthFlowType

instance Prelude.ToHeader AuthFlowType

instance Prelude.ToJSON AuthFlowType where
  toJSON = Prelude.toJSONText
