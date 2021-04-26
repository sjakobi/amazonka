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
-- Module      : Network.AWS.EC2.Types.LogDestinationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LogDestinationType
  ( LogDestinationType
      ( ..,
        LogDestinationTypeCloudWatchLogs,
        LogDestinationTypeS3
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype LogDestinationType = LogDestinationType'
  { fromLogDestinationType ::
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

pattern LogDestinationTypeCloudWatchLogs :: LogDestinationType
pattern LogDestinationTypeCloudWatchLogs = LogDestinationType' "cloud-watch-logs"

pattern LogDestinationTypeS3 :: LogDestinationType
pattern LogDestinationTypeS3 = LogDestinationType' "s3"

{-# COMPLETE
  LogDestinationTypeCloudWatchLogs,
  LogDestinationTypeS3,
  LogDestinationType'
  #-}

instance Prelude.FromText LogDestinationType where
  parser = LogDestinationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LogDestinationType where
  toText (LogDestinationType' x) = x

instance Prelude.Hashable LogDestinationType

instance Prelude.NFData LogDestinationType

instance Prelude.ToByteString LogDestinationType

instance Prelude.ToQuery LogDestinationType

instance Prelude.ToHeader LogDestinationType

instance Prelude.FromXML LogDestinationType where
  parseXML = Prelude.parseXMLText "LogDestinationType"
