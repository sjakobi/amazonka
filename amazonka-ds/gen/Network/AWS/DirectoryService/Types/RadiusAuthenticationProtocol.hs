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
-- Module      : Network.AWS.DirectoryService.Types.RadiusAuthenticationProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.RadiusAuthenticationProtocol
  ( RadiusAuthenticationProtocol
      ( ..,
        RadiusAuthenticationProtocolCHAP,
        RadiusAuthenticationProtocolMSCHAPV1,
        RadiusAuthenticationProtocolMSCHAPV2,
        RadiusAuthenticationProtocolPAP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RadiusAuthenticationProtocol = RadiusAuthenticationProtocol'
  { fromRadiusAuthenticationProtocol ::
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

pattern RadiusAuthenticationProtocolCHAP :: RadiusAuthenticationProtocol
pattern RadiusAuthenticationProtocolCHAP = RadiusAuthenticationProtocol' "CHAP"

pattern RadiusAuthenticationProtocolMSCHAPV1 :: RadiusAuthenticationProtocol
pattern RadiusAuthenticationProtocolMSCHAPV1 = RadiusAuthenticationProtocol' "MS-CHAPv1"

pattern RadiusAuthenticationProtocolMSCHAPV2 :: RadiusAuthenticationProtocol
pattern RadiusAuthenticationProtocolMSCHAPV2 = RadiusAuthenticationProtocol' "MS-CHAPv2"

pattern RadiusAuthenticationProtocolPAP :: RadiusAuthenticationProtocol
pattern RadiusAuthenticationProtocolPAP = RadiusAuthenticationProtocol' "PAP"

{-# COMPLETE
  RadiusAuthenticationProtocolCHAP,
  RadiusAuthenticationProtocolMSCHAPV1,
  RadiusAuthenticationProtocolMSCHAPV2,
  RadiusAuthenticationProtocolPAP,
  RadiusAuthenticationProtocol'
  #-}

instance Prelude.FromText RadiusAuthenticationProtocol where
  parser = RadiusAuthenticationProtocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText RadiusAuthenticationProtocol where
  toText (RadiusAuthenticationProtocol' x) = x

instance Prelude.Hashable RadiusAuthenticationProtocol

instance Prelude.NFData RadiusAuthenticationProtocol

instance Prelude.ToByteString RadiusAuthenticationProtocol

instance Prelude.ToQuery RadiusAuthenticationProtocol

instance Prelude.ToHeader RadiusAuthenticationProtocol

instance Prelude.ToJSON RadiusAuthenticationProtocol where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RadiusAuthenticationProtocol where
  parseJSON = Prelude.parseJSONText "RadiusAuthenticationProtocol"
