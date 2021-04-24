{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        EIPAssociate,
        InstanceAttach
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data InterfacePermissionType
  = InterfacePermissionType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EIPAssociate :: InterfacePermissionType
pattern EIPAssociate = InterfacePermissionType' "EIP-ASSOCIATE"

pattern InstanceAttach :: InterfacePermissionType
pattern InstanceAttach = InterfacePermissionType' "INSTANCE-ATTACH"

{-# COMPLETE
  EIPAssociate,
  InstanceAttach,
  InterfacePermissionType'
  #-}

instance FromText InterfacePermissionType where
  parser = (InterfacePermissionType' . mk) <$> takeText

instance ToText InterfacePermissionType where
  toText (InterfacePermissionType' ci) = original ci

instance Hashable InterfacePermissionType

instance NFData InterfacePermissionType

instance ToByteString InterfacePermissionType

instance ToQuery InterfacePermissionType

instance ToHeader InterfacePermissionType

instance FromXML InterfacePermissionType where
  parseXML = parseXMLText "InterfacePermissionType"
