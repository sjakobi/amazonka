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
-- Module      : Network.AWS.Firehose.Types.HttpEndpointS3BackupMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.HttpEndpointS3BackupMode
  ( HttpEndpointS3BackupMode
      ( ..,
        HttpEndpointS3BackupModeAllData,
        HttpEndpointS3BackupModeFailedDataOnly
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HttpEndpointS3BackupMode = HttpEndpointS3BackupMode'
  { fromHttpEndpointS3BackupMode ::
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

pattern HttpEndpointS3BackupModeAllData :: HttpEndpointS3BackupMode
pattern HttpEndpointS3BackupModeAllData = HttpEndpointS3BackupMode' "AllData"

pattern HttpEndpointS3BackupModeFailedDataOnly :: HttpEndpointS3BackupMode
pattern HttpEndpointS3BackupModeFailedDataOnly = HttpEndpointS3BackupMode' "FailedDataOnly"

{-# COMPLETE
  HttpEndpointS3BackupModeAllData,
  HttpEndpointS3BackupModeFailedDataOnly,
  HttpEndpointS3BackupMode'
  #-}

instance Prelude.FromText HttpEndpointS3BackupMode where
  parser = HttpEndpointS3BackupMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText HttpEndpointS3BackupMode where
  toText (HttpEndpointS3BackupMode' x) = x

instance Prelude.Hashable HttpEndpointS3BackupMode

instance Prelude.NFData HttpEndpointS3BackupMode

instance Prelude.ToByteString HttpEndpointS3BackupMode

instance Prelude.ToQuery HttpEndpointS3BackupMode

instance Prelude.ToHeader HttpEndpointS3BackupMode

instance Prelude.ToJSON HttpEndpointS3BackupMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HttpEndpointS3BackupMode where
  parseJSON = Prelude.parseJSONText "HttpEndpointS3BackupMode"
