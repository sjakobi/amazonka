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
-- Module      : Network.AWS.Batch.Types.DeviceCgroupPermission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.DeviceCgroupPermission
  ( DeviceCgroupPermission
      ( ..,
        DeviceCgroupPermissionMKNOD,
        DeviceCgroupPermissionREAD,
        DeviceCgroupPermissionWRITE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeviceCgroupPermission = DeviceCgroupPermission'
  { fromDeviceCgroupPermission ::
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

pattern DeviceCgroupPermissionMKNOD :: DeviceCgroupPermission
pattern DeviceCgroupPermissionMKNOD = DeviceCgroupPermission' "MKNOD"

pattern DeviceCgroupPermissionREAD :: DeviceCgroupPermission
pattern DeviceCgroupPermissionREAD = DeviceCgroupPermission' "READ"

pattern DeviceCgroupPermissionWRITE :: DeviceCgroupPermission
pattern DeviceCgroupPermissionWRITE = DeviceCgroupPermission' "WRITE"

{-# COMPLETE
  DeviceCgroupPermissionMKNOD,
  DeviceCgroupPermissionREAD,
  DeviceCgroupPermissionWRITE,
  DeviceCgroupPermission'
  #-}

instance Prelude.FromText DeviceCgroupPermission where
  parser = DeviceCgroupPermission' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceCgroupPermission where
  toText (DeviceCgroupPermission' x) = x

instance Prelude.Hashable DeviceCgroupPermission

instance Prelude.NFData DeviceCgroupPermission

instance Prelude.ToByteString DeviceCgroupPermission

instance Prelude.ToQuery DeviceCgroupPermission

instance Prelude.ToHeader DeviceCgroupPermission

instance Prelude.ToJSON DeviceCgroupPermission where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeviceCgroupPermission where
  parseJSON = Prelude.parseJSONText "DeviceCgroupPermission"
