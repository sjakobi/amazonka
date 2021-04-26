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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.UserStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.UserStatusType
  ( UserStatusType
      ( ..,
        UserStatusTypeARCHIVED,
        UserStatusTypeCOMPROMISED,
        UserStatusTypeCONFIRMED,
        UserStatusTypeFORCECHANGEPASSWORD,
        UserStatusTypeRESETREQUIRED,
        UserStatusTypeUNCONFIRMED,
        UserStatusTypeUNKNOWN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UserStatusType = UserStatusType'
  { fromUserStatusType ::
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

pattern UserStatusTypeARCHIVED :: UserStatusType
pattern UserStatusTypeARCHIVED = UserStatusType' "ARCHIVED"

pattern UserStatusTypeCOMPROMISED :: UserStatusType
pattern UserStatusTypeCOMPROMISED = UserStatusType' "COMPROMISED"

pattern UserStatusTypeCONFIRMED :: UserStatusType
pattern UserStatusTypeCONFIRMED = UserStatusType' "CONFIRMED"

pattern UserStatusTypeFORCECHANGEPASSWORD :: UserStatusType
pattern UserStatusTypeFORCECHANGEPASSWORD = UserStatusType' "FORCE_CHANGE_PASSWORD"

pattern UserStatusTypeRESETREQUIRED :: UserStatusType
pattern UserStatusTypeRESETREQUIRED = UserStatusType' "RESET_REQUIRED"

pattern UserStatusTypeUNCONFIRMED :: UserStatusType
pattern UserStatusTypeUNCONFIRMED = UserStatusType' "UNCONFIRMED"

pattern UserStatusTypeUNKNOWN :: UserStatusType
pattern UserStatusTypeUNKNOWN = UserStatusType' "UNKNOWN"

{-# COMPLETE
  UserStatusTypeARCHIVED,
  UserStatusTypeCOMPROMISED,
  UserStatusTypeCONFIRMED,
  UserStatusTypeFORCECHANGEPASSWORD,
  UserStatusTypeRESETREQUIRED,
  UserStatusTypeUNCONFIRMED,
  UserStatusTypeUNKNOWN,
  UserStatusType'
  #-}

instance Prelude.FromText UserStatusType where
  parser = UserStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UserStatusType where
  toText (UserStatusType' x) = x

instance Prelude.Hashable UserStatusType

instance Prelude.NFData UserStatusType

instance Prelude.ToByteString UserStatusType

instance Prelude.ToQuery UserStatusType

instance Prelude.ToHeader UserStatusType

instance Prelude.FromJSON UserStatusType where
  parseJSON = Prelude.parseJSONText "UserStatusType"
