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
-- Module      : Network.AWS.AppStream.Types.Permission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.Permission
  ( Permission
      ( ..,
        PermissionDISABLED,
        PermissionENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Permission = Permission'
  { fromPermission ::
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

pattern PermissionDISABLED :: Permission
pattern PermissionDISABLED = Permission' "DISABLED"

pattern PermissionENABLED :: Permission
pattern PermissionENABLED = Permission' "ENABLED"

{-# COMPLETE
  PermissionDISABLED,
  PermissionENABLED,
  Permission'
  #-}

instance Prelude.FromText Permission where
  parser = Permission' Prelude.<$> Prelude.takeText

instance Prelude.ToText Permission where
  toText (Permission' x) = x

instance Prelude.Hashable Permission

instance Prelude.NFData Permission

instance Prelude.ToByteString Permission

instance Prelude.ToQuery Permission

instance Prelude.ToHeader Permission

instance Prelude.ToJSON Permission where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Permission where
  parseJSON = Prelude.parseJSONText "Permission"
