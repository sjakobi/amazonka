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
-- Module      : Network.AWS.SSM.Types.PingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PingStatus
  ( PingStatus
      ( ..,
        PingStatusConnectionLost,
        PingStatusInactive,
        PingStatusOnline
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PingStatus = PingStatus'
  { fromPingStatus ::
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

pattern PingStatusConnectionLost :: PingStatus
pattern PingStatusConnectionLost = PingStatus' "ConnectionLost"

pattern PingStatusInactive :: PingStatus
pattern PingStatusInactive = PingStatus' "Inactive"

pattern PingStatusOnline :: PingStatus
pattern PingStatusOnline = PingStatus' "Online"

{-# COMPLETE
  PingStatusConnectionLost,
  PingStatusInactive,
  PingStatusOnline,
  PingStatus'
  #-}

instance Prelude.FromText PingStatus where
  parser = PingStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText PingStatus where
  toText (PingStatus' x) = x

instance Prelude.Hashable PingStatus

instance Prelude.NFData PingStatus

instance Prelude.ToByteString PingStatus

instance Prelude.ToQuery PingStatus

instance Prelude.ToHeader PingStatus

instance Prelude.FromJSON PingStatus where
  parseJSON = Prelude.parseJSONText "PingStatus"
