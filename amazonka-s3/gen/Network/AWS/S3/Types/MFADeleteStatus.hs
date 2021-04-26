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
-- Module      : Network.AWS.S3.Types.MFADeleteStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.MFADeleteStatus
  ( MFADeleteStatus
      ( ..,
        MFADeleteStatusDisabled,
        MFADeleteStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype MFADeleteStatus = MFADeleteStatus'
  { fromMFADeleteStatus ::
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

pattern MFADeleteStatusDisabled :: MFADeleteStatus
pattern MFADeleteStatusDisabled = MFADeleteStatus' "Disabled"

pattern MFADeleteStatusEnabled :: MFADeleteStatus
pattern MFADeleteStatusEnabled = MFADeleteStatus' "Enabled"

{-# COMPLETE
  MFADeleteStatusDisabled,
  MFADeleteStatusEnabled,
  MFADeleteStatus'
  #-}

instance Prelude.FromText MFADeleteStatus where
  parser = MFADeleteStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText MFADeleteStatus where
  toText (MFADeleteStatus' x) = x

instance Prelude.Hashable MFADeleteStatus

instance Prelude.NFData MFADeleteStatus

instance Prelude.ToByteString MFADeleteStatus

instance Prelude.ToQuery MFADeleteStatus

instance Prelude.ToHeader MFADeleteStatus

instance Prelude.FromXML MFADeleteStatus where
  parseXML = Prelude.parseXMLText "MFADeleteStatus"
