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
-- Module      : Network.AWS.WorkMail.Types.UserRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.UserRole
  ( UserRole
      ( ..,
        UserRoleRESOURCE,
        UserRoleSYSTEMUSER,
        UserRoleUSER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UserRole = UserRole'
  { fromUserRole ::
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

pattern UserRoleRESOURCE :: UserRole
pattern UserRoleRESOURCE = UserRole' "RESOURCE"

pattern UserRoleSYSTEMUSER :: UserRole
pattern UserRoleSYSTEMUSER = UserRole' "SYSTEM_USER"

pattern UserRoleUSER :: UserRole
pattern UserRoleUSER = UserRole' "USER"

{-# COMPLETE
  UserRoleRESOURCE,
  UserRoleSYSTEMUSER,
  UserRoleUSER,
  UserRole'
  #-}

instance Prelude.FromText UserRole where
  parser = UserRole' Prelude.<$> Prelude.takeText

instance Prelude.ToText UserRole where
  toText (UserRole' x) = x

instance Prelude.Hashable UserRole

instance Prelude.NFData UserRole

instance Prelude.ToByteString UserRole

instance Prelude.ToQuery UserRole

instance Prelude.ToHeader UserRole

instance Prelude.FromJSON UserRole where
  parseJSON = Prelude.parseJSONText "UserRole"
