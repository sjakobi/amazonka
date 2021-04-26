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
-- Module      : Network.AWS.DirectoryService.Types.RadiusStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.RadiusStatus
  ( RadiusStatus
      ( ..,
        RadiusStatusCompleted,
        RadiusStatusCreating,
        RadiusStatusFailed
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RadiusStatus = RadiusStatus'
  { fromRadiusStatus ::
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

pattern RadiusStatusCompleted :: RadiusStatus
pattern RadiusStatusCompleted = RadiusStatus' "Completed"

pattern RadiusStatusCreating :: RadiusStatus
pattern RadiusStatusCreating = RadiusStatus' "Creating"

pattern RadiusStatusFailed :: RadiusStatus
pattern RadiusStatusFailed = RadiusStatus' "Failed"

{-# COMPLETE
  RadiusStatusCompleted,
  RadiusStatusCreating,
  RadiusStatusFailed,
  RadiusStatus'
  #-}

instance Prelude.FromText RadiusStatus where
  parser = RadiusStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText RadiusStatus where
  toText (RadiusStatus' x) = x

instance Prelude.Hashable RadiusStatus

instance Prelude.NFData RadiusStatus

instance Prelude.ToByteString RadiusStatus

instance Prelude.ToQuery RadiusStatus

instance Prelude.ToHeader RadiusStatus

instance Prelude.FromJSON RadiusStatus where
  parseJSON = Prelude.parseJSONText "RadiusStatus"
