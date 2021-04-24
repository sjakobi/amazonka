{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        DSSDisabled,
        DSSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DataSourceStatus = DataSourceStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DSSDisabled :: DataSourceStatus
pattern DSSDisabled = DataSourceStatus' "DISABLED"

pattern DSSEnabled :: DataSourceStatus
pattern DSSEnabled = DataSourceStatus' "ENABLED"

{-# COMPLETE
  DSSDisabled,
  DSSEnabled,
  DataSourceStatus'
  #-}

instance FromText DataSourceStatus where
  parser = (DataSourceStatus' . mk) <$> takeText

instance ToText DataSourceStatus where
  toText (DataSourceStatus' ci) = original ci

instance Hashable DataSourceStatus

instance NFData DataSourceStatus

instance ToByteString DataSourceStatus

instance ToQuery DataSourceStatus

instance ToHeader DataSourceStatus

instance FromJSON DataSourceStatus where
  parseJSON = parseJSONText "DataSourceStatus"
