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
-- Module      : Network.AWS.Greengrass.Types.ConfigurationSyncStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.ConfigurationSyncStatus
  ( ConfigurationSyncStatus
      ( ..,
        ConfigurationSyncStatusInSync,
        ConfigurationSyncStatusOutOfSync
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConfigurationSyncStatus = ConfigurationSyncStatus'
  { fromConfigurationSyncStatus ::
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

pattern ConfigurationSyncStatusInSync :: ConfigurationSyncStatus
pattern ConfigurationSyncStatusInSync = ConfigurationSyncStatus' "InSync"

pattern ConfigurationSyncStatusOutOfSync :: ConfigurationSyncStatus
pattern ConfigurationSyncStatusOutOfSync = ConfigurationSyncStatus' "OutOfSync"

{-# COMPLETE
  ConfigurationSyncStatusInSync,
  ConfigurationSyncStatusOutOfSync,
  ConfigurationSyncStatus'
  #-}

instance Prelude.FromText ConfigurationSyncStatus where
  parser = ConfigurationSyncStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConfigurationSyncStatus where
  toText (ConfigurationSyncStatus' x) = x

instance Prelude.Hashable ConfigurationSyncStatus

instance Prelude.NFData ConfigurationSyncStatus

instance Prelude.ToByteString ConfigurationSyncStatus

instance Prelude.ToQuery ConfigurationSyncStatus

instance Prelude.ToHeader ConfigurationSyncStatus

instance Prelude.FromJSON ConfigurationSyncStatus where
  parseJSON = Prelude.parseJSONText "ConfigurationSyncStatus"
