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
-- Module      : Network.AWS.GuardDuty.Types.DataSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.DataSource
  ( DataSource
      ( ..,
        DataSourceCLOUDTRAIL,
        DataSourceDNSLOGS,
        DataSourceFLOWLOGS,
        DataSourceS3LOGS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DataSource = DataSource'
  { fromDataSource ::
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

pattern DataSourceCLOUDTRAIL :: DataSource
pattern DataSourceCLOUDTRAIL = DataSource' "CLOUD_TRAIL"

pattern DataSourceDNSLOGS :: DataSource
pattern DataSourceDNSLOGS = DataSource' "DNS_LOGS"

pattern DataSourceFLOWLOGS :: DataSource
pattern DataSourceFLOWLOGS = DataSource' "FLOW_LOGS"

pattern DataSourceS3LOGS :: DataSource
pattern DataSourceS3LOGS = DataSource' "S3_LOGS"

{-# COMPLETE
  DataSourceCLOUDTRAIL,
  DataSourceDNSLOGS,
  DataSourceFLOWLOGS,
  DataSourceS3LOGS,
  DataSource'
  #-}

instance Prelude.FromText DataSource where
  parser = DataSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText DataSource where
  toText (DataSource' x) = x

instance Prelude.Hashable DataSource

instance Prelude.NFData DataSource

instance Prelude.ToByteString DataSource

instance Prelude.ToQuery DataSource

instance Prelude.ToHeader DataSource

instance Prelude.ToJSON DataSource where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DataSource where
  parseJSON = Prelude.parseJSONText "DataSource"
