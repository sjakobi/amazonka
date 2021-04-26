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
-- Module      : Network.AWS.S3.Types.MetricsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.MetricsStatus
  ( MetricsStatus
      ( ..,
        MetricsStatusDisabled,
        MetricsStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype MetricsStatus = MetricsStatus'
  { fromMetricsStatus ::
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

pattern MetricsStatusDisabled :: MetricsStatus
pattern MetricsStatusDisabled = MetricsStatus' "Disabled"

pattern MetricsStatusEnabled :: MetricsStatus
pattern MetricsStatusEnabled = MetricsStatus' "Enabled"

{-# COMPLETE
  MetricsStatusDisabled,
  MetricsStatusEnabled,
  MetricsStatus'
  #-}

instance Prelude.FromText MetricsStatus where
  parser = MetricsStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText MetricsStatus where
  toText (MetricsStatus' x) = x

instance Prelude.Hashable MetricsStatus

instance Prelude.NFData MetricsStatus

instance Prelude.ToByteString MetricsStatus

instance Prelude.ToQuery MetricsStatus

instance Prelude.ToHeader MetricsStatus

instance Prelude.FromXML MetricsStatus where
  parseXML = Prelude.parseXMLText "MetricsStatus"

instance Prelude.ToXML MetricsStatus where
  toXML = Prelude.toXMLText
