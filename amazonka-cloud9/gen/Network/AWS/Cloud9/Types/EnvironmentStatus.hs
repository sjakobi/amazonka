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
-- Module      : Network.AWS.Cloud9.Types.EnvironmentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.EnvironmentStatus
  ( EnvironmentStatus
      ( ..,
        EnvironmentStatusConnecting,
        EnvironmentStatusCreating,
        EnvironmentStatusDeleting,
        EnvironmentStatusError,
        EnvironmentStatusReady,
        EnvironmentStatusStopped,
        EnvironmentStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnvironmentStatus = EnvironmentStatus'
  { fromEnvironmentStatus ::
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

pattern EnvironmentStatusConnecting :: EnvironmentStatus
pattern EnvironmentStatusConnecting = EnvironmentStatus' "connecting"

pattern EnvironmentStatusCreating :: EnvironmentStatus
pattern EnvironmentStatusCreating = EnvironmentStatus' "creating"

pattern EnvironmentStatusDeleting :: EnvironmentStatus
pattern EnvironmentStatusDeleting = EnvironmentStatus' "deleting"

pattern EnvironmentStatusError :: EnvironmentStatus
pattern EnvironmentStatusError = EnvironmentStatus' "error"

pattern EnvironmentStatusReady :: EnvironmentStatus
pattern EnvironmentStatusReady = EnvironmentStatus' "ready"

pattern EnvironmentStatusStopped :: EnvironmentStatus
pattern EnvironmentStatusStopped = EnvironmentStatus' "stopped"

pattern EnvironmentStatusStopping :: EnvironmentStatus
pattern EnvironmentStatusStopping = EnvironmentStatus' "stopping"

{-# COMPLETE
  EnvironmentStatusConnecting,
  EnvironmentStatusCreating,
  EnvironmentStatusDeleting,
  EnvironmentStatusError,
  EnvironmentStatusReady,
  EnvironmentStatusStopped,
  EnvironmentStatusStopping,
  EnvironmentStatus'
  #-}

instance Prelude.FromText EnvironmentStatus where
  parser = EnvironmentStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnvironmentStatus where
  toText (EnvironmentStatus' x) = x

instance Prelude.Hashable EnvironmentStatus

instance Prelude.NFData EnvironmentStatus

instance Prelude.ToByteString EnvironmentStatus

instance Prelude.ToQuery EnvironmentStatus

instance Prelude.ToHeader EnvironmentStatus

instance Prelude.FromJSON EnvironmentStatus where
  parseJSON = Prelude.parseJSONText "EnvironmentStatus"
