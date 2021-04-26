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
-- Module      : Network.AWS.Cloud9.Types.ConnectionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.ConnectionType
  ( ConnectionType
      ( ..,
        ConnectionTypeCONNECTSSH,
        ConnectionTypeCONNECTSSM
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

pattern ConnectionTypeCONNECTSSH :: ConnectionType
pattern ConnectionTypeCONNECTSSH = ConnectionType' "CONNECT_SSH"

pattern ConnectionTypeCONNECTSSM :: ConnectionType
pattern ConnectionTypeCONNECTSSM = ConnectionType' "CONNECT_SSM"

{-# COMPLETE
  ConnectionTypeCONNECTSSH,
  ConnectionTypeCONNECTSSM,
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
