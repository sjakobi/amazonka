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
-- Module      : Network.AWS.Glue.Types.Permission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Permission
  ( Permission
      ( ..,
        PermissionALL,
        PermissionALTER,
        PermissionCREATEDATABASE,
        PermissionCREATETABLE,
        PermissionDATALOCATIONACCESS,
        PermissionDELETE,
        PermissionDROP,
        PermissionINSERT,
        PermissionSELECT
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

pattern PermissionALL :: Permission
pattern PermissionALL = Permission' "ALL"

pattern PermissionALTER :: Permission
pattern PermissionALTER = Permission' "ALTER"

pattern PermissionCREATEDATABASE :: Permission
pattern PermissionCREATEDATABASE = Permission' "CREATE_DATABASE"

pattern PermissionCREATETABLE :: Permission
pattern PermissionCREATETABLE = Permission' "CREATE_TABLE"

pattern PermissionDATALOCATIONACCESS :: Permission
pattern PermissionDATALOCATIONACCESS = Permission' "DATA_LOCATION_ACCESS"

pattern PermissionDELETE :: Permission
pattern PermissionDELETE = Permission' "DELETE"

pattern PermissionDROP :: Permission
pattern PermissionDROP = Permission' "DROP"

pattern PermissionINSERT :: Permission
pattern PermissionINSERT = Permission' "INSERT"

pattern PermissionSELECT :: Permission
pattern PermissionSELECT = Permission' "SELECT"

{-# COMPLETE
  PermissionALL,
  PermissionALTER,
  PermissionCREATEDATABASE,
  PermissionCREATETABLE,
  PermissionDATALOCATIONACCESS,
  PermissionDELETE,
  PermissionDROP,
  PermissionINSERT,
  PermissionSELECT,
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
