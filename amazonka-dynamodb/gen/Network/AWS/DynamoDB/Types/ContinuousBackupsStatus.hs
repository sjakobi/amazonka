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
-- Module      : Network.AWS.DynamoDB.Types.ContinuousBackupsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ContinuousBackupsStatus
  ( ContinuousBackupsStatus
      ( ..,
        ContinuousBackupsStatusDISABLED,
        ContinuousBackupsStatusENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContinuousBackupsStatus = ContinuousBackupsStatus'
  { fromContinuousBackupsStatus ::
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

pattern ContinuousBackupsStatusDISABLED :: ContinuousBackupsStatus
pattern ContinuousBackupsStatusDISABLED = ContinuousBackupsStatus' "DISABLED"

pattern ContinuousBackupsStatusENABLED :: ContinuousBackupsStatus
pattern ContinuousBackupsStatusENABLED = ContinuousBackupsStatus' "ENABLED"

{-# COMPLETE
  ContinuousBackupsStatusDISABLED,
  ContinuousBackupsStatusENABLED,
  ContinuousBackupsStatus'
  #-}

instance Prelude.FromText ContinuousBackupsStatus where
  parser = ContinuousBackupsStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContinuousBackupsStatus where
  toText (ContinuousBackupsStatus' x) = x

instance Prelude.Hashable ContinuousBackupsStatus

instance Prelude.NFData ContinuousBackupsStatus

instance Prelude.ToByteString ContinuousBackupsStatus

instance Prelude.ToQuery ContinuousBackupsStatus

instance Prelude.ToHeader ContinuousBackupsStatus

instance Prelude.FromJSON ContinuousBackupsStatus where
  parseJSON = Prelude.parseJSONText "ContinuousBackupsStatus"
