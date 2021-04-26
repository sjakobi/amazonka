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
-- Module      : Network.AWS.GuardDuty.Types.DataSourceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.DataSourceStatus
  ( DataSourceStatus
      ( ..,
        DataSourceStatusDISABLED,
        DataSourceStatusENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DataSourceStatus = DataSourceStatus'
  { fromDataSourceStatus ::
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

pattern DataSourceStatusDISABLED :: DataSourceStatus
pattern DataSourceStatusDISABLED = DataSourceStatus' "DISABLED"

pattern DataSourceStatusENABLED :: DataSourceStatus
pattern DataSourceStatusENABLED = DataSourceStatus' "ENABLED"

{-# COMPLETE
  DataSourceStatusDISABLED,
  DataSourceStatusENABLED,
  DataSourceStatus'
  #-}

instance Prelude.FromText DataSourceStatus where
  parser = DataSourceStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DataSourceStatus where
  toText (DataSourceStatus' x) = x

instance Prelude.Hashable DataSourceStatus

instance Prelude.NFData DataSourceStatus

instance Prelude.ToByteString DataSourceStatus

instance Prelude.ToQuery DataSourceStatus

instance Prelude.ToHeader DataSourceStatus

instance Prelude.FromJSON DataSourceStatus where
  parseJSON = Prelude.parseJSONText "DataSourceStatus"
