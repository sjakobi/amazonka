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
-- Module      : Network.AWS.CostExplorer.Types.MonitorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.MonitorType
  ( MonitorType
      ( ..,
        MonitorTypeCUSTOM,
        MonitorTypeDIMENSIONAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MonitorType = MonitorType'
  { fromMonitorType ::
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

pattern MonitorTypeCUSTOM :: MonitorType
pattern MonitorTypeCUSTOM = MonitorType' "CUSTOM"

pattern MonitorTypeDIMENSIONAL :: MonitorType
pattern MonitorTypeDIMENSIONAL = MonitorType' "DIMENSIONAL"

{-# COMPLETE
  MonitorTypeCUSTOM,
  MonitorTypeDIMENSIONAL,
  MonitorType'
  #-}

instance Prelude.FromText MonitorType where
  parser = MonitorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MonitorType where
  toText (MonitorType' x) = x

instance Prelude.Hashable MonitorType

instance Prelude.NFData MonitorType

instance Prelude.ToByteString MonitorType

instance Prelude.ToQuery MonitorType

instance Prelude.ToHeader MonitorType

instance Prelude.ToJSON MonitorType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MonitorType where
  parseJSON = Prelude.parseJSONText "MonitorType"
