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
-- Module      : Network.AWS.AlexaBusiness.Types.ConnectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.ConnectionStatus
  ( ConnectionStatus
      ( ..,
        ConnectionStatusOFFLINE,
        ConnectionStatusONLINE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConnectionStatus = ConnectionStatus'
  { fromConnectionStatus ::
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

pattern ConnectionStatusOFFLINE :: ConnectionStatus
pattern ConnectionStatusOFFLINE = ConnectionStatus' "OFFLINE"

pattern ConnectionStatusONLINE :: ConnectionStatus
pattern ConnectionStatusONLINE = ConnectionStatus' "ONLINE"

{-# COMPLETE
  ConnectionStatusOFFLINE,
  ConnectionStatusONLINE,
  ConnectionStatus'
  #-}

instance Prelude.FromText ConnectionStatus where
  parser = ConnectionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConnectionStatus where
  toText (ConnectionStatus' x) = x

instance Prelude.Hashable ConnectionStatus

instance Prelude.NFData ConnectionStatus

instance Prelude.ToByteString ConnectionStatus

instance Prelude.ToQuery ConnectionStatus

instance Prelude.ToHeader ConnectionStatus

instance Prelude.FromJSON ConnectionStatus where
  parseJSON = Prelude.parseJSONText "ConnectionStatus"
