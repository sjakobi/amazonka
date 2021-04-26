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
-- Module      : Network.AWS.Config.Types.ConfigurationItemStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConfigurationItemStatus
  ( ConfigurationItemStatus
      ( ..,
        ConfigurationItemStatusOK,
        ConfigurationItemStatusResourceDeleted,
        ConfigurationItemStatusResourceDeletedNotRecorded,
        ConfigurationItemStatusResourceDiscovered,
        ConfigurationItemStatusResourceNotRecorded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConfigurationItemStatus = ConfigurationItemStatus'
  { fromConfigurationItemStatus ::
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

pattern ConfigurationItemStatusOK :: ConfigurationItemStatus
pattern ConfigurationItemStatusOK = ConfigurationItemStatus' "OK"

pattern ConfigurationItemStatusResourceDeleted :: ConfigurationItemStatus
pattern ConfigurationItemStatusResourceDeleted = ConfigurationItemStatus' "ResourceDeleted"

pattern ConfigurationItemStatusResourceDeletedNotRecorded :: ConfigurationItemStatus
pattern ConfigurationItemStatusResourceDeletedNotRecorded = ConfigurationItemStatus' "ResourceDeletedNotRecorded"

pattern ConfigurationItemStatusResourceDiscovered :: ConfigurationItemStatus
pattern ConfigurationItemStatusResourceDiscovered = ConfigurationItemStatus' "ResourceDiscovered"

pattern ConfigurationItemStatusResourceNotRecorded :: ConfigurationItemStatus
pattern ConfigurationItemStatusResourceNotRecorded = ConfigurationItemStatus' "ResourceNotRecorded"

{-# COMPLETE
  ConfigurationItemStatusOK,
  ConfigurationItemStatusResourceDeleted,
  ConfigurationItemStatusResourceDeletedNotRecorded,
  ConfigurationItemStatusResourceDiscovered,
  ConfigurationItemStatusResourceNotRecorded,
  ConfigurationItemStatus'
  #-}

instance Prelude.FromText ConfigurationItemStatus where
  parser = ConfigurationItemStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConfigurationItemStatus where
  toText (ConfigurationItemStatus' x) = x

instance Prelude.Hashable ConfigurationItemStatus

instance Prelude.NFData ConfigurationItemStatus

instance Prelude.ToByteString ConfigurationItemStatus

instance Prelude.ToQuery ConfigurationItemStatus

instance Prelude.ToHeader ConfigurationItemStatus

instance Prelude.FromJSON ConfigurationItemStatus where
  parseJSON = Prelude.parseJSONText "ConfigurationItemStatus"
