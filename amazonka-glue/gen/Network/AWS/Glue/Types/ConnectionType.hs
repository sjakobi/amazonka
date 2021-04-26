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
-- Module      : Network.AWS.Glue.Types.ConnectionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ConnectionType
  ( ConnectionType
      ( ..,
        ConnectionTypeCUSTOM,
        ConnectionTypeJDBC,
        ConnectionTypeKAFKA,
        ConnectionTypeMARKETPLACE,
        ConnectionTypeMONGODB,
        ConnectionTypeNETWORK,
        ConnectionTypeSFTP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConnectionType = ConnectionType'
  { fromConnectionType ::
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

pattern ConnectionTypeCUSTOM :: ConnectionType
pattern ConnectionTypeCUSTOM = ConnectionType' "CUSTOM"

pattern ConnectionTypeJDBC :: ConnectionType
pattern ConnectionTypeJDBC = ConnectionType' "JDBC"

pattern ConnectionTypeKAFKA :: ConnectionType
pattern ConnectionTypeKAFKA = ConnectionType' "KAFKA"

pattern ConnectionTypeMARKETPLACE :: ConnectionType
pattern ConnectionTypeMARKETPLACE = ConnectionType' "MARKETPLACE"

pattern ConnectionTypeMONGODB :: ConnectionType
pattern ConnectionTypeMONGODB = ConnectionType' "MONGODB"

pattern ConnectionTypeNETWORK :: ConnectionType
pattern ConnectionTypeNETWORK = ConnectionType' "NETWORK"

pattern ConnectionTypeSFTP :: ConnectionType
pattern ConnectionTypeSFTP = ConnectionType' "SFTP"

{-# COMPLETE
  ConnectionTypeCUSTOM,
  ConnectionTypeJDBC,
  ConnectionTypeKAFKA,
  ConnectionTypeMARKETPLACE,
  ConnectionTypeMONGODB,
  ConnectionTypeNETWORK,
  ConnectionTypeSFTP,
  ConnectionType'
  #-}

instance Prelude.FromText ConnectionType where
  parser = ConnectionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConnectionType where
  toText (ConnectionType' x) = x

instance Prelude.Hashable ConnectionType

instance Prelude.NFData ConnectionType

instance Prelude.ToByteString ConnectionType

instance Prelude.ToQuery ConnectionType

instance Prelude.ToHeader ConnectionType

instance Prelude.ToJSON ConnectionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ConnectionType where
  parseJSON = Prelude.parseJSONText "ConnectionType"
