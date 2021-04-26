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
-- Module      : Network.AWS.WorkDocs.Types.UserType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.UserType
  ( UserType
      ( ..,
        UserTypeADMIN,
        UserTypeMINIMALUSER,
        UserTypePOWERUSER,
        UserTypeUSER,
        UserTypeWORKSPACESUSER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UserType = UserType'
  { fromUserType ::
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

pattern UserTypeADMIN :: UserType
pattern UserTypeADMIN = UserType' "ADMIN"

pattern UserTypeMINIMALUSER :: UserType
pattern UserTypeMINIMALUSER = UserType' "MINIMALUSER"

pattern UserTypePOWERUSER :: UserType
pattern UserTypePOWERUSER = UserType' "POWERUSER"

pattern UserTypeUSER :: UserType
pattern UserTypeUSER = UserType' "USER"

pattern UserTypeWORKSPACESUSER :: UserType
pattern UserTypeWORKSPACESUSER = UserType' "WORKSPACESUSER"

{-# COMPLETE
  UserTypeADMIN,
  UserTypeMINIMALUSER,
  UserTypePOWERUSER,
  UserTypeUSER,
  UserTypeWORKSPACESUSER,
  UserType'
  #-}

instance Prelude.FromText UserType where
  parser = UserType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UserType where
  toText (UserType' x) = x

instance Prelude.Hashable UserType

instance Prelude.NFData UserType

instance Prelude.ToByteString UserType

instance Prelude.ToQuery UserType

instance Prelude.ToHeader UserType

instance Prelude.ToJSON UserType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON UserType where
  parseJSON = Prelude.parseJSONText "UserType"
