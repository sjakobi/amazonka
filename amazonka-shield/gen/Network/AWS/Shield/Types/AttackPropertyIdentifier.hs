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
-- Module      : Network.AWS.Shield.Types.AttackPropertyIdentifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.AttackPropertyIdentifier
  ( AttackPropertyIdentifier
      ( ..,
        AttackPropertyIdentifierDESTINATIONURL,
        AttackPropertyIdentifierREFERRER,
        AttackPropertyIdentifierSOURCEASN,
        AttackPropertyIdentifierSOURCECOUNTRY,
        AttackPropertyIdentifierSOURCEIPADDRESS,
        AttackPropertyIdentifierSOURCEUSERAGENT,
        AttackPropertyIdentifierWORDPRESSPINGBACKREFLECTOR,
        AttackPropertyIdentifierWORDPRESSPINGBACKSOURCE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AttackPropertyIdentifier = AttackPropertyIdentifier'
  { fromAttackPropertyIdentifier ::
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

pattern AttackPropertyIdentifierDESTINATIONURL :: AttackPropertyIdentifier
pattern AttackPropertyIdentifierDESTINATIONURL = AttackPropertyIdentifier' "DESTINATION_URL"

pattern AttackPropertyIdentifierREFERRER :: AttackPropertyIdentifier
pattern AttackPropertyIdentifierREFERRER = AttackPropertyIdentifier' "REFERRER"

pattern AttackPropertyIdentifierSOURCEASN :: AttackPropertyIdentifier
pattern AttackPropertyIdentifierSOURCEASN = AttackPropertyIdentifier' "SOURCE_ASN"

pattern AttackPropertyIdentifierSOURCECOUNTRY :: AttackPropertyIdentifier
pattern AttackPropertyIdentifierSOURCECOUNTRY = AttackPropertyIdentifier' "SOURCE_COUNTRY"

pattern AttackPropertyIdentifierSOURCEIPADDRESS :: AttackPropertyIdentifier
pattern AttackPropertyIdentifierSOURCEIPADDRESS = AttackPropertyIdentifier' "SOURCE_IP_ADDRESS"

pattern AttackPropertyIdentifierSOURCEUSERAGENT :: AttackPropertyIdentifier
pattern AttackPropertyIdentifierSOURCEUSERAGENT = AttackPropertyIdentifier' "SOURCE_USER_AGENT"

pattern AttackPropertyIdentifierWORDPRESSPINGBACKREFLECTOR :: AttackPropertyIdentifier
pattern AttackPropertyIdentifierWORDPRESSPINGBACKREFLECTOR = AttackPropertyIdentifier' "WORDPRESS_PINGBACK_REFLECTOR"

pattern AttackPropertyIdentifierWORDPRESSPINGBACKSOURCE :: AttackPropertyIdentifier
pattern AttackPropertyIdentifierWORDPRESSPINGBACKSOURCE = AttackPropertyIdentifier' "WORDPRESS_PINGBACK_SOURCE"

{-# COMPLETE
  AttackPropertyIdentifierDESTINATIONURL,
  AttackPropertyIdentifierREFERRER,
  AttackPropertyIdentifierSOURCEASN,
  AttackPropertyIdentifierSOURCECOUNTRY,
  AttackPropertyIdentifierSOURCEIPADDRESS,
  AttackPropertyIdentifierSOURCEUSERAGENT,
  AttackPropertyIdentifierWORDPRESSPINGBACKREFLECTOR,
  AttackPropertyIdentifierWORDPRESSPINGBACKSOURCE,
  AttackPropertyIdentifier'
  #-}

instance Prelude.FromText AttackPropertyIdentifier where
  parser = AttackPropertyIdentifier' Prelude.<$> Prelude.takeText

instance Prelude.ToText AttackPropertyIdentifier where
  toText (AttackPropertyIdentifier' x) = x

instance Prelude.Hashable AttackPropertyIdentifier

instance Prelude.NFData AttackPropertyIdentifier

instance Prelude.ToByteString AttackPropertyIdentifier

instance Prelude.ToQuery AttackPropertyIdentifier

instance Prelude.ToHeader AttackPropertyIdentifier

instance Prelude.FromJSON AttackPropertyIdentifier where
  parseJSON = Prelude.parseJSONText "AttackPropertyIdentifier"
