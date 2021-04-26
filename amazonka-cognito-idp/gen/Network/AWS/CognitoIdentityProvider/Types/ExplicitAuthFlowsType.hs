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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.ExplicitAuthFlowsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.ExplicitAuthFlowsType
  ( ExplicitAuthFlowsType
      ( ..,
        ExplicitAuthFlowsTypeADMINNOSRPAUTH,
        ExplicitAuthFlowsTypeALLOWADMINUSERPASSWORDAUTH,
        ExplicitAuthFlowsTypeALLOWCUSTOMAUTH,
        ExplicitAuthFlowsTypeALLOWREFRESHTOKENAUTH,
        ExplicitAuthFlowsTypeALLOWUSERPASSWORDAUTH,
        ExplicitAuthFlowsTypeALLOWUSERSRPAUTH,
        ExplicitAuthFlowsTypeCUSTOMAUTHFLOWONLY,
        ExplicitAuthFlowsTypeUSERPASSWORDAUTH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExplicitAuthFlowsType = ExplicitAuthFlowsType'
  { fromExplicitAuthFlowsType ::
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

pattern ExplicitAuthFlowsTypeADMINNOSRPAUTH :: ExplicitAuthFlowsType
pattern ExplicitAuthFlowsTypeADMINNOSRPAUTH = ExplicitAuthFlowsType' "ADMIN_NO_SRP_AUTH"

pattern ExplicitAuthFlowsTypeALLOWADMINUSERPASSWORDAUTH :: ExplicitAuthFlowsType
pattern ExplicitAuthFlowsTypeALLOWADMINUSERPASSWORDAUTH = ExplicitAuthFlowsType' "ALLOW_ADMIN_USER_PASSWORD_AUTH"

pattern ExplicitAuthFlowsTypeALLOWCUSTOMAUTH :: ExplicitAuthFlowsType
pattern ExplicitAuthFlowsTypeALLOWCUSTOMAUTH = ExplicitAuthFlowsType' "ALLOW_CUSTOM_AUTH"

pattern ExplicitAuthFlowsTypeALLOWREFRESHTOKENAUTH :: ExplicitAuthFlowsType
pattern ExplicitAuthFlowsTypeALLOWREFRESHTOKENAUTH = ExplicitAuthFlowsType' "ALLOW_REFRESH_TOKEN_AUTH"

pattern ExplicitAuthFlowsTypeALLOWUSERPASSWORDAUTH :: ExplicitAuthFlowsType
pattern ExplicitAuthFlowsTypeALLOWUSERPASSWORDAUTH = ExplicitAuthFlowsType' "ALLOW_USER_PASSWORD_AUTH"

pattern ExplicitAuthFlowsTypeALLOWUSERSRPAUTH :: ExplicitAuthFlowsType
pattern ExplicitAuthFlowsTypeALLOWUSERSRPAUTH = ExplicitAuthFlowsType' "ALLOW_USER_SRP_AUTH"

pattern ExplicitAuthFlowsTypeCUSTOMAUTHFLOWONLY :: ExplicitAuthFlowsType
pattern ExplicitAuthFlowsTypeCUSTOMAUTHFLOWONLY = ExplicitAuthFlowsType' "CUSTOM_AUTH_FLOW_ONLY"

pattern ExplicitAuthFlowsTypeUSERPASSWORDAUTH :: ExplicitAuthFlowsType
pattern ExplicitAuthFlowsTypeUSERPASSWORDAUTH = ExplicitAuthFlowsType' "USER_PASSWORD_AUTH"

{-# COMPLETE
  ExplicitAuthFlowsTypeADMINNOSRPAUTH,
  ExplicitAuthFlowsTypeALLOWADMINUSERPASSWORDAUTH,
  ExplicitAuthFlowsTypeALLOWCUSTOMAUTH,
  ExplicitAuthFlowsTypeALLOWREFRESHTOKENAUTH,
  ExplicitAuthFlowsTypeALLOWUSERPASSWORDAUTH,
  ExplicitAuthFlowsTypeALLOWUSERSRPAUTH,
  ExplicitAuthFlowsTypeCUSTOMAUTHFLOWONLY,
  ExplicitAuthFlowsTypeUSERPASSWORDAUTH,
  ExplicitAuthFlowsType'
  #-}

instance Prelude.FromText ExplicitAuthFlowsType where
  parser = ExplicitAuthFlowsType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExplicitAuthFlowsType where
  toText (ExplicitAuthFlowsType' x) = x

instance Prelude.Hashable ExplicitAuthFlowsType

instance Prelude.NFData ExplicitAuthFlowsType

instance Prelude.ToByteString ExplicitAuthFlowsType

instance Prelude.ToQuery ExplicitAuthFlowsType

instance Prelude.ToHeader ExplicitAuthFlowsType

instance Prelude.ToJSON ExplicitAuthFlowsType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ExplicitAuthFlowsType where
  parseJSON = Prelude.parseJSONText "ExplicitAuthFlowsType"
