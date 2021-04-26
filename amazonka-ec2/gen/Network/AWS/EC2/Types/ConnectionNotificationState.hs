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
-- Module      : Network.AWS.EC2.Types.ConnectionNotificationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ConnectionNotificationState
  ( ConnectionNotificationState
      ( ..,
        ConnectionNotificationStateDisabled,
        ConnectionNotificationStateEnabled
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ConnectionNotificationState = ConnectionNotificationState'
  { fromConnectionNotificationState ::
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

pattern ConnectionNotificationStateDisabled :: ConnectionNotificationState
pattern ConnectionNotificationStateDisabled = ConnectionNotificationState' "Disabled"

pattern ConnectionNotificationStateEnabled :: ConnectionNotificationState
pattern ConnectionNotificationStateEnabled = ConnectionNotificationState' "Enabled"

{-# COMPLETE
  ConnectionNotificationStateDisabled,
  ConnectionNotificationStateEnabled,
  ConnectionNotificationState'
  #-}

instance Prelude.FromText ConnectionNotificationState where
  parser = ConnectionNotificationState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConnectionNotificationState where
  toText (ConnectionNotificationState' x) = x

instance Prelude.Hashable ConnectionNotificationState

instance Prelude.NFData ConnectionNotificationState

instance Prelude.ToByteString ConnectionNotificationState

instance Prelude.ToQuery ConnectionNotificationState

instance Prelude.ToHeader ConnectionNotificationState

instance Prelude.FromXML ConnectionNotificationState where
  parseXML = Prelude.parseXMLText "ConnectionNotificationState"
