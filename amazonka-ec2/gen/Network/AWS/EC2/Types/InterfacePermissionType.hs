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
-- Module      : Network.AWS.EC2.Types.InterfacePermissionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InterfacePermissionType
  ( InterfacePermissionType
      ( ..,
        InterfacePermissionTypeEIPASSOCIATE,
        InterfacePermissionTypeINSTANCEATTACH
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype InterfacePermissionType = InterfacePermissionType'
  { fromInterfacePermissionType ::
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

pattern InterfacePermissionTypeEIPASSOCIATE :: InterfacePermissionType
pattern InterfacePermissionTypeEIPASSOCIATE = InterfacePermissionType' "EIP-ASSOCIATE"

pattern InterfacePermissionTypeINSTANCEATTACH :: InterfacePermissionType
pattern InterfacePermissionTypeINSTANCEATTACH = InterfacePermissionType' "INSTANCE-ATTACH"

{-# COMPLETE
  InterfacePermissionTypeEIPASSOCIATE,
  InterfacePermissionTypeINSTANCEATTACH,
  InterfacePermissionType'
  #-}

instance Prelude.FromText InterfacePermissionType where
  parser = InterfacePermissionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InterfacePermissionType where
  toText (InterfacePermissionType' x) = x

instance Prelude.Hashable InterfacePermissionType

instance Prelude.NFData InterfacePermissionType

instance Prelude.ToByteString InterfacePermissionType

instance Prelude.ToQuery InterfacePermissionType

instance Prelude.ToHeader InterfacePermissionType

instance Prelude.FromXML InterfacePermissionType where
  parseXML = Prelude.parseXMLText "InterfacePermissionType"
