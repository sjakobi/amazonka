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
-- Module      : Network.AWS.S3.Types.DeleteMarkerReplicationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.DeleteMarkerReplicationStatus
  ( DeleteMarkerReplicationStatus
      ( ..,
        DeleteMarkerReplicationStatusDisabled,
        DeleteMarkerReplicationStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype DeleteMarkerReplicationStatus = DeleteMarkerReplicationStatus'
  { fromDeleteMarkerReplicationStatus ::
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

pattern DeleteMarkerReplicationStatusDisabled :: DeleteMarkerReplicationStatus
pattern DeleteMarkerReplicationStatusDisabled = DeleteMarkerReplicationStatus' "Disabled"

pattern DeleteMarkerReplicationStatusEnabled :: DeleteMarkerReplicationStatus
pattern DeleteMarkerReplicationStatusEnabled = DeleteMarkerReplicationStatus' "Enabled"

{-# COMPLETE
  DeleteMarkerReplicationStatusDisabled,
  DeleteMarkerReplicationStatusEnabled,
  DeleteMarkerReplicationStatus'
  #-}

instance Prelude.FromText DeleteMarkerReplicationStatus where
  parser = DeleteMarkerReplicationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeleteMarkerReplicationStatus where
  toText (DeleteMarkerReplicationStatus' x) = x

instance Prelude.Hashable DeleteMarkerReplicationStatus

instance Prelude.NFData DeleteMarkerReplicationStatus

instance Prelude.ToByteString DeleteMarkerReplicationStatus

instance Prelude.ToQuery DeleteMarkerReplicationStatus

instance Prelude.ToHeader DeleteMarkerReplicationStatus

instance Prelude.FromXML DeleteMarkerReplicationStatus where
  parseXML = Prelude.parseXMLText "DeleteMarkerReplicationStatus"

instance Prelude.ToXML DeleteMarkerReplicationStatus where
  toXML = Prelude.toXMLText
