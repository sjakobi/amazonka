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
-- Module      : Network.AWS.Comprehend.Types.ModelStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.ModelStatus
  ( ModelStatus
      ( ..,
        ModelStatusDELETING,
        ModelStatusINERROR,
        ModelStatusSTOPPED,
        ModelStatusSTOPREQUESTED,
        ModelStatusSUBMITTED,
        ModelStatusTRAINED,
        ModelStatusTRAINING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ModelStatus = ModelStatus'
  { fromModelStatus ::
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

pattern ModelStatusDELETING :: ModelStatus
pattern ModelStatusDELETING = ModelStatus' "DELETING"

pattern ModelStatusINERROR :: ModelStatus
pattern ModelStatusINERROR = ModelStatus' "IN_ERROR"

pattern ModelStatusSTOPPED :: ModelStatus
pattern ModelStatusSTOPPED = ModelStatus' "STOPPED"

pattern ModelStatusSTOPREQUESTED :: ModelStatus
pattern ModelStatusSTOPREQUESTED = ModelStatus' "STOP_REQUESTED"

pattern ModelStatusSUBMITTED :: ModelStatus
pattern ModelStatusSUBMITTED = ModelStatus' "SUBMITTED"

pattern ModelStatusTRAINED :: ModelStatus
pattern ModelStatusTRAINED = ModelStatus' "TRAINED"

pattern ModelStatusTRAINING :: ModelStatus
pattern ModelStatusTRAINING = ModelStatus' "TRAINING"

{-# COMPLETE
  ModelStatusDELETING,
  ModelStatusINERROR,
  ModelStatusSTOPPED,
  ModelStatusSTOPREQUESTED,
  ModelStatusSUBMITTED,
  ModelStatusTRAINED,
  ModelStatusTRAINING,
  ModelStatus'
  #-}

instance Prelude.FromText ModelStatus where
  parser = ModelStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ModelStatus where
  toText (ModelStatus' x) = x

instance Prelude.Hashable ModelStatus

instance Prelude.NFData ModelStatus

instance Prelude.ToByteString ModelStatus

instance Prelude.ToQuery ModelStatus

instance Prelude.ToHeader ModelStatus

instance Prelude.ToJSON ModelStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ModelStatus where
  parseJSON = Prelude.parseJSONText "ModelStatus"
