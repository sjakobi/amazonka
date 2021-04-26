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
-- Module      : Network.AWS.MediaConvert.Types.JobPhase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.JobPhase
  ( JobPhase
      ( ..,
        JobPhasePROBING,
        JobPhaseTRANSCODING,
        JobPhaseUPLOADING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | A job\'s phase can be PROBING, TRANSCODING OR UPLOADING
newtype JobPhase = JobPhase'
  { fromJobPhase ::
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

pattern JobPhasePROBING :: JobPhase
pattern JobPhasePROBING = JobPhase' "PROBING"

pattern JobPhaseTRANSCODING :: JobPhase
pattern JobPhaseTRANSCODING = JobPhase' "TRANSCODING"

pattern JobPhaseUPLOADING :: JobPhase
pattern JobPhaseUPLOADING = JobPhase' "UPLOADING"

{-# COMPLETE
  JobPhasePROBING,
  JobPhaseTRANSCODING,
  JobPhaseUPLOADING,
  JobPhase'
  #-}

instance Prelude.FromText JobPhase where
  parser = JobPhase' Prelude.<$> Prelude.takeText

instance Prelude.ToText JobPhase where
  toText (JobPhase' x) = x

instance Prelude.Hashable JobPhase

instance Prelude.NFData JobPhase

instance Prelude.ToByteString JobPhase

instance Prelude.ToQuery JobPhase

instance Prelude.ToHeader JobPhase

instance Prelude.FromJSON JobPhase where
  parseJSON = Prelude.parseJSONText "JobPhase"
