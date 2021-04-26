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
-- Module      : Network.AWS.S3.Types.Permission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.Permission
  ( Permission
      ( ..,
        PermissionFULLCONTROL,
        PermissionREAD,
        PermissionREADACP,
        PermissionWRITE,
        PermissionWRITEACP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

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

pattern PermissionFULLCONTROL :: Permission
pattern PermissionFULLCONTROL = Permission' "FULL_CONTROL"

pattern PermissionREAD :: Permission
pattern PermissionREAD = Permission' "READ"

pattern PermissionREADACP :: Permission
pattern PermissionREADACP = Permission' "READ_ACP"

pattern PermissionWRITE :: Permission
pattern PermissionWRITE = Permission' "WRITE"

pattern PermissionWRITEACP :: Permission
pattern PermissionWRITEACP = Permission' "WRITE_ACP"

{-# COMPLETE
  PermissionFULLCONTROL,
  PermissionREAD,
  PermissionREADACP,
  PermissionWRITE,
  PermissionWRITEACP,
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

instance Prelude.FromXML Permission where
  parseXML = Prelude.parseXMLText "Permission"

instance Prelude.ToXML Permission where
  toXML = Prelude.toXMLText
