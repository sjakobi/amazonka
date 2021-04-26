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
-- Module      : Network.AWS.IoT.Types.DomainConfigurationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DomainConfigurationStatus
  ( DomainConfigurationStatus
      ( ..,
        DomainConfigurationStatusDISABLED,
        DomainConfigurationStatusENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DomainConfigurationStatus = DomainConfigurationStatus'
  { fromDomainConfigurationStatus ::
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

pattern DomainConfigurationStatusDISABLED :: DomainConfigurationStatus
pattern DomainConfigurationStatusDISABLED = DomainConfigurationStatus' "DISABLED"

pattern DomainConfigurationStatusENABLED :: DomainConfigurationStatus
pattern DomainConfigurationStatusENABLED = DomainConfigurationStatus' "ENABLED"

{-# COMPLETE
  DomainConfigurationStatusDISABLED,
  DomainConfigurationStatusENABLED,
  DomainConfigurationStatus'
  #-}

instance Prelude.FromText DomainConfigurationStatus where
  parser = DomainConfigurationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DomainConfigurationStatus where
  toText (DomainConfigurationStatus' x) = x

instance Prelude.Hashable DomainConfigurationStatus

instance Prelude.NFData DomainConfigurationStatus

instance Prelude.ToByteString DomainConfigurationStatus

instance Prelude.ToQuery DomainConfigurationStatus

instance Prelude.ToHeader DomainConfigurationStatus

instance Prelude.ToJSON DomainConfigurationStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DomainConfigurationStatus where
  parseJSON = Prelude.parseJSONText "DomainConfigurationStatus"
