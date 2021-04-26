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
-- Module      : Network.AWS.IoTAnalytics.Types.DatasetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatasetStatus
  ( DatasetStatus
      ( ..,
        DatasetStatusACTIVE,
        DatasetStatusCREATING,
        DatasetStatusDELETING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DatasetStatus = DatasetStatus'
  { fromDatasetStatus ::
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

pattern DatasetStatusACTIVE :: DatasetStatus
pattern DatasetStatusACTIVE = DatasetStatus' "ACTIVE"

pattern DatasetStatusCREATING :: DatasetStatus
pattern DatasetStatusCREATING = DatasetStatus' "CREATING"

pattern DatasetStatusDELETING :: DatasetStatus
pattern DatasetStatusDELETING = DatasetStatus' "DELETING"

{-# COMPLETE
  DatasetStatusACTIVE,
  DatasetStatusCREATING,
  DatasetStatusDELETING,
  DatasetStatus'
  #-}

instance Prelude.FromText DatasetStatus where
  parser = DatasetStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DatasetStatus where
  toText (DatasetStatus' x) = x

instance Prelude.Hashable DatasetStatus

instance Prelude.NFData DatasetStatus

instance Prelude.ToByteString DatasetStatus

instance Prelude.ToQuery DatasetStatus

instance Prelude.ToHeader DatasetStatus

instance Prelude.FromJSON DatasetStatus where
  parseJSON = Prelude.parseJSONText "DatasetStatus"
