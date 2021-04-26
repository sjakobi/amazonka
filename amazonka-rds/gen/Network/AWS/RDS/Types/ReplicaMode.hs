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
-- Module      : Network.AWS.RDS.Types.ReplicaMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.ReplicaMode
  ( ReplicaMode
      ( ..,
        ReplicaModeMounted,
        ReplicaModeOpenReadOnly
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReplicaMode = ReplicaMode'
  { fromReplicaMode ::
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

pattern ReplicaModeMounted :: ReplicaMode
pattern ReplicaModeMounted = ReplicaMode' "mounted"

pattern ReplicaModeOpenReadOnly :: ReplicaMode
pattern ReplicaModeOpenReadOnly = ReplicaMode' "open-read-only"

{-# COMPLETE
  ReplicaModeMounted,
  ReplicaModeOpenReadOnly,
  ReplicaMode'
  #-}

instance Prelude.FromText ReplicaMode where
  parser = ReplicaMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplicaMode where
  toText (ReplicaMode' x) = x

instance Prelude.Hashable ReplicaMode

instance Prelude.NFData ReplicaMode

instance Prelude.ToByteString ReplicaMode

instance Prelude.ToQuery ReplicaMode

instance Prelude.ToHeader ReplicaMode

instance Prelude.FromXML ReplicaMode where
  parseXML = Prelude.parseXMLText "ReplicaMode"
