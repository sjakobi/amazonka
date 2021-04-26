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
-- Module      : Network.AWS.SMS.Types.ConnectorStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ConnectorStatus
  ( ConnectorStatus
      ( ..,
        ConnectorStatusHEALTHY,
        ConnectorStatusUNHEALTHY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConnectorStatus = ConnectorStatus'
  { fromConnectorStatus ::
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

pattern ConnectorStatusHEALTHY :: ConnectorStatus
pattern ConnectorStatusHEALTHY = ConnectorStatus' "HEALTHY"

pattern ConnectorStatusUNHEALTHY :: ConnectorStatus
pattern ConnectorStatusUNHEALTHY = ConnectorStatus' "UNHEALTHY"

{-# COMPLETE
  ConnectorStatusHEALTHY,
  ConnectorStatusUNHEALTHY,
  ConnectorStatus'
  #-}

instance Prelude.FromText ConnectorStatus where
  parser = ConnectorStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConnectorStatus where
  toText (ConnectorStatus' x) = x

instance Prelude.Hashable ConnectorStatus

instance Prelude.NFData ConnectorStatus

instance Prelude.ToByteString ConnectorStatus

instance Prelude.ToQuery ConnectorStatus

instance Prelude.ToHeader ConnectorStatus

instance Prelude.FromJSON ConnectorStatus where
  parseJSON = Prelude.parseJSONText "ConnectorStatus"
