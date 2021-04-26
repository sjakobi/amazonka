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
-- Module      : Network.AWS.ELBv2.Types.ActionTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.ActionTypeEnum
  ( ActionTypeEnum
      ( ..,
        ActionTypeEnumAuthenticateCognito,
        ActionTypeEnumAuthenticateOidc,
        ActionTypeEnumFixedResponse,
        ActionTypeEnumForward,
        ActionTypeEnumRedirect
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionTypeEnum = ActionTypeEnum'
  { fromActionTypeEnum ::
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

pattern ActionTypeEnumAuthenticateCognito :: ActionTypeEnum
pattern ActionTypeEnumAuthenticateCognito = ActionTypeEnum' "authenticate-cognito"

pattern ActionTypeEnumAuthenticateOidc :: ActionTypeEnum
pattern ActionTypeEnumAuthenticateOidc = ActionTypeEnum' "authenticate-oidc"

pattern ActionTypeEnumFixedResponse :: ActionTypeEnum
pattern ActionTypeEnumFixedResponse = ActionTypeEnum' "fixed-response"

pattern ActionTypeEnumForward :: ActionTypeEnum
pattern ActionTypeEnumForward = ActionTypeEnum' "forward"

pattern ActionTypeEnumRedirect :: ActionTypeEnum
pattern ActionTypeEnumRedirect = ActionTypeEnum' "redirect"

{-# COMPLETE
  ActionTypeEnumAuthenticateCognito,
  ActionTypeEnumAuthenticateOidc,
  ActionTypeEnumFixedResponse,
  ActionTypeEnumForward,
  ActionTypeEnumRedirect,
  ActionTypeEnum'
  #-}

instance Prelude.FromText ActionTypeEnum where
  parser = ActionTypeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionTypeEnum where
  toText (ActionTypeEnum' x) = x

instance Prelude.Hashable ActionTypeEnum

instance Prelude.NFData ActionTypeEnum

instance Prelude.ToByteString ActionTypeEnum

instance Prelude.ToQuery ActionTypeEnum

instance Prelude.ToHeader ActionTypeEnum

instance Prelude.FromXML ActionTypeEnum where
  parseXML = Prelude.parseXMLText "ActionTypeEnum"
