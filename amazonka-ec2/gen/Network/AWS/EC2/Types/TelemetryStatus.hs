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
-- Module      : Network.AWS.EC2.Types.TelemetryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TelemetryStatus
  ( TelemetryStatus
      ( ..,
        TelemetryStatusDOWN,
        TelemetryStatusUP
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TelemetryStatus = TelemetryStatus'
  { fromTelemetryStatus ::
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

pattern TelemetryStatusDOWN :: TelemetryStatus
pattern TelemetryStatusDOWN = TelemetryStatus' "DOWN"

pattern TelemetryStatusUP :: TelemetryStatus
pattern TelemetryStatusUP = TelemetryStatus' "UP"

{-# COMPLETE
  TelemetryStatusDOWN,
  TelemetryStatusUP,
  TelemetryStatus'
  #-}

instance Prelude.FromText TelemetryStatus where
  parser = TelemetryStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TelemetryStatus where
  toText (TelemetryStatus' x) = x

instance Prelude.Hashable TelemetryStatus

instance Prelude.NFData TelemetryStatus

instance Prelude.ToByteString TelemetryStatus

instance Prelude.ToQuery TelemetryStatus

instance Prelude.ToHeader TelemetryStatus

instance Prelude.FromXML TelemetryStatus where
  parseXML = Prelude.parseXMLText "TelemetryStatus"
