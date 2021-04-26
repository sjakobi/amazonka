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
-- Module      : Network.AWS.S3.Types.ExistingObjectReplicationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ExistingObjectReplicationStatus
  ( ExistingObjectReplicationStatus
      ( ..,
        ExistingObjectReplicationStatusDisabled,
        ExistingObjectReplicationStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ExistingObjectReplicationStatus = ExistingObjectReplicationStatus'
  { fromExistingObjectReplicationStatus ::
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

pattern ExistingObjectReplicationStatusDisabled :: ExistingObjectReplicationStatus
pattern ExistingObjectReplicationStatusDisabled = ExistingObjectReplicationStatus' "Disabled"

pattern ExistingObjectReplicationStatusEnabled :: ExistingObjectReplicationStatus
pattern ExistingObjectReplicationStatusEnabled = ExistingObjectReplicationStatus' "Enabled"

{-# COMPLETE
  ExistingObjectReplicationStatusDisabled,
  ExistingObjectReplicationStatusEnabled,
  ExistingObjectReplicationStatus'
  #-}

instance Prelude.FromText ExistingObjectReplicationStatus where
  parser = ExistingObjectReplicationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExistingObjectReplicationStatus where
  toText (ExistingObjectReplicationStatus' x) = x

instance Prelude.Hashable ExistingObjectReplicationStatus

instance Prelude.NFData ExistingObjectReplicationStatus

instance Prelude.ToByteString ExistingObjectReplicationStatus

instance Prelude.ToQuery ExistingObjectReplicationStatus

instance Prelude.ToHeader ExistingObjectReplicationStatus

instance Prelude.FromXML ExistingObjectReplicationStatus where
  parseXML = Prelude.parseXMLText "ExistingObjectReplicationStatus"

instance Prelude.ToXML ExistingObjectReplicationStatus where
  toXML = Prelude.toXMLText
