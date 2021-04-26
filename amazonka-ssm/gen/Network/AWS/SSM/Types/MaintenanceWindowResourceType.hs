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
-- Module      : Network.AWS.SSM.Types.MaintenanceWindowResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.MaintenanceWindowResourceType
  ( MaintenanceWindowResourceType
      ( ..,
        MaintenanceWindowResourceTypeINSTANCE,
        MaintenanceWindowResourceTypeRESOURCEGROUP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MaintenanceWindowResourceType = MaintenanceWindowResourceType'
  { fromMaintenanceWindowResourceType ::
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

pattern MaintenanceWindowResourceTypeINSTANCE :: MaintenanceWindowResourceType
pattern MaintenanceWindowResourceTypeINSTANCE = MaintenanceWindowResourceType' "INSTANCE"

pattern MaintenanceWindowResourceTypeRESOURCEGROUP :: MaintenanceWindowResourceType
pattern MaintenanceWindowResourceTypeRESOURCEGROUP = MaintenanceWindowResourceType' "RESOURCE_GROUP"

{-# COMPLETE
  MaintenanceWindowResourceTypeINSTANCE,
  MaintenanceWindowResourceTypeRESOURCEGROUP,
  MaintenanceWindowResourceType'
  #-}

instance Prelude.FromText MaintenanceWindowResourceType where
  parser = MaintenanceWindowResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MaintenanceWindowResourceType where
  toText (MaintenanceWindowResourceType' x) = x

instance Prelude.Hashable MaintenanceWindowResourceType

instance Prelude.NFData MaintenanceWindowResourceType

instance Prelude.ToByteString MaintenanceWindowResourceType

instance Prelude.ToQuery MaintenanceWindowResourceType

instance Prelude.ToHeader MaintenanceWindowResourceType

instance Prelude.ToJSON MaintenanceWindowResourceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MaintenanceWindowResourceType where
  parseJSON = Prelude.parseJSONText "MaintenanceWindowResourceType"
