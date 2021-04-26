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
-- Module      : Network.AWS.SSM.Types.PatchDeploymentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchDeploymentStatus
  ( PatchDeploymentStatus
      ( ..,
        PatchDeploymentStatusAPPROVED,
        PatchDeploymentStatusEXPLICITAPPROVED,
        PatchDeploymentStatusEXPLICITREJECTED,
        PatchDeploymentStatusPENDINGAPPROVAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PatchDeploymentStatus = PatchDeploymentStatus'
  { fromPatchDeploymentStatus ::
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

pattern PatchDeploymentStatusAPPROVED :: PatchDeploymentStatus
pattern PatchDeploymentStatusAPPROVED = PatchDeploymentStatus' "APPROVED"

pattern PatchDeploymentStatusEXPLICITAPPROVED :: PatchDeploymentStatus
pattern PatchDeploymentStatusEXPLICITAPPROVED = PatchDeploymentStatus' "EXPLICIT_APPROVED"

pattern PatchDeploymentStatusEXPLICITREJECTED :: PatchDeploymentStatus
pattern PatchDeploymentStatusEXPLICITREJECTED = PatchDeploymentStatus' "EXPLICIT_REJECTED"

pattern PatchDeploymentStatusPENDINGAPPROVAL :: PatchDeploymentStatus
pattern PatchDeploymentStatusPENDINGAPPROVAL = PatchDeploymentStatus' "PENDING_APPROVAL"

{-# COMPLETE
  PatchDeploymentStatusAPPROVED,
  PatchDeploymentStatusEXPLICITAPPROVED,
  PatchDeploymentStatusEXPLICITREJECTED,
  PatchDeploymentStatusPENDINGAPPROVAL,
  PatchDeploymentStatus'
  #-}

instance Prelude.FromText PatchDeploymentStatus where
  parser = PatchDeploymentStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText PatchDeploymentStatus where
  toText (PatchDeploymentStatus' x) = x

instance Prelude.Hashable PatchDeploymentStatus

instance Prelude.NFData PatchDeploymentStatus

instance Prelude.ToByteString PatchDeploymentStatus

instance Prelude.ToQuery PatchDeploymentStatus

instance Prelude.ToHeader PatchDeploymentStatus

instance Prelude.FromJSON PatchDeploymentStatus where
  parseJSON = Prelude.parseJSONText "PatchDeploymentStatus"
