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
-- Module      : Network.AWS.SMS.Types.AppReplicationConfigurationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppReplicationConfigurationStatus
  ( AppReplicationConfigurationStatus
      ( ..,
        AppReplicationConfigurationStatusCONFIGURED,
        AppReplicationConfigurationStatusNOTCONFIGURED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AppReplicationConfigurationStatus = AppReplicationConfigurationStatus'
  { fromAppReplicationConfigurationStatus ::
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

pattern AppReplicationConfigurationStatusCONFIGURED :: AppReplicationConfigurationStatus
pattern AppReplicationConfigurationStatusCONFIGURED = AppReplicationConfigurationStatus' "CONFIGURED"

pattern AppReplicationConfigurationStatusNOTCONFIGURED :: AppReplicationConfigurationStatus
pattern AppReplicationConfigurationStatusNOTCONFIGURED = AppReplicationConfigurationStatus' "NOT_CONFIGURED"

{-# COMPLETE
  AppReplicationConfigurationStatusCONFIGURED,
  AppReplicationConfigurationStatusNOTCONFIGURED,
  AppReplicationConfigurationStatus'
  #-}

instance Prelude.FromText AppReplicationConfigurationStatus where
  parser = AppReplicationConfigurationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AppReplicationConfigurationStatus where
  toText (AppReplicationConfigurationStatus' x) = x

instance Prelude.Hashable AppReplicationConfigurationStatus

instance Prelude.NFData AppReplicationConfigurationStatus

instance Prelude.ToByteString AppReplicationConfigurationStatus

instance Prelude.ToQuery AppReplicationConfigurationStatus

instance Prelude.ToHeader AppReplicationConfigurationStatus

instance Prelude.FromJSON AppReplicationConfigurationStatus where
  parseJSON = Prelude.parseJSONText "AppReplicationConfigurationStatus"
