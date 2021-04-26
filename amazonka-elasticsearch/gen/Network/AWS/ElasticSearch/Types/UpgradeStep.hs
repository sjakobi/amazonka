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
-- Module      : Network.AWS.ElasticSearch.Types.UpgradeStep
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.UpgradeStep
  ( UpgradeStep
      ( ..,
        UpgradeStepPREUPGRADECHECK,
        UpgradeStepSNAPSHOT,
        UpgradeStepUPGRADE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UpgradeStep = UpgradeStep'
  { fromUpgradeStep ::
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

pattern UpgradeStepPREUPGRADECHECK :: UpgradeStep
pattern UpgradeStepPREUPGRADECHECK = UpgradeStep' "PRE_UPGRADE_CHECK"

pattern UpgradeStepSNAPSHOT :: UpgradeStep
pattern UpgradeStepSNAPSHOT = UpgradeStep' "SNAPSHOT"

pattern UpgradeStepUPGRADE :: UpgradeStep
pattern UpgradeStepUPGRADE = UpgradeStep' "UPGRADE"

{-# COMPLETE
  UpgradeStepPREUPGRADECHECK,
  UpgradeStepSNAPSHOT,
  UpgradeStepUPGRADE,
  UpgradeStep'
  #-}

instance Prelude.FromText UpgradeStep where
  parser = UpgradeStep' Prelude.<$> Prelude.takeText

instance Prelude.ToText UpgradeStep where
  toText (UpgradeStep' x) = x

instance Prelude.Hashable UpgradeStep

instance Prelude.NFData UpgradeStep

instance Prelude.ToByteString UpgradeStep

instance Prelude.ToQuery UpgradeStep

instance Prelude.ToHeader UpgradeStep

instance Prelude.FromJSON UpgradeStep where
  parseJSON = Prelude.parseJSONText "UpgradeStep"
