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
-- Module      : Network.AWS.IoT.Types.AutoRegistrationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AutoRegistrationStatus
  ( AutoRegistrationStatus
      ( ..,
        AutoRegistrationStatusDISABLE,
        AutoRegistrationStatusENABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoRegistrationStatus = AutoRegistrationStatus'
  { fromAutoRegistrationStatus ::
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

pattern AutoRegistrationStatusDISABLE :: AutoRegistrationStatus
pattern AutoRegistrationStatusDISABLE = AutoRegistrationStatus' "DISABLE"

pattern AutoRegistrationStatusENABLE :: AutoRegistrationStatus
pattern AutoRegistrationStatusENABLE = AutoRegistrationStatus' "ENABLE"

{-# COMPLETE
  AutoRegistrationStatusDISABLE,
  AutoRegistrationStatusENABLE,
  AutoRegistrationStatus'
  #-}

instance Prelude.FromText AutoRegistrationStatus where
  parser = AutoRegistrationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoRegistrationStatus where
  toText (AutoRegistrationStatus' x) = x

instance Prelude.Hashable AutoRegistrationStatus

instance Prelude.NFData AutoRegistrationStatus

instance Prelude.ToByteString AutoRegistrationStatus

instance Prelude.ToQuery AutoRegistrationStatus

instance Prelude.ToHeader AutoRegistrationStatus

instance Prelude.ToJSON AutoRegistrationStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AutoRegistrationStatus where
  parseJSON = Prelude.parseJSONText "AutoRegistrationStatus"
