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
-- Module      : Network.AWS.Batch.Types.CRAllocationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.CRAllocationStrategy
  ( CRAllocationStrategy
      ( ..,
        CRAllocationStrategyBESTFIT,
        CRAllocationStrategyBESTFITPROGRESSIVE,
        CRAllocationStrategySPOTCAPACITYOPTIMIZED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CRAllocationStrategy = CRAllocationStrategy'
  { fromCRAllocationStrategy ::
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

pattern CRAllocationStrategyBESTFIT :: CRAllocationStrategy
pattern CRAllocationStrategyBESTFIT = CRAllocationStrategy' "BEST_FIT"

pattern CRAllocationStrategyBESTFITPROGRESSIVE :: CRAllocationStrategy
pattern CRAllocationStrategyBESTFITPROGRESSIVE = CRAllocationStrategy' "BEST_FIT_PROGRESSIVE"

pattern CRAllocationStrategySPOTCAPACITYOPTIMIZED :: CRAllocationStrategy
pattern CRAllocationStrategySPOTCAPACITYOPTIMIZED = CRAllocationStrategy' "SPOT_CAPACITY_OPTIMIZED"

{-# COMPLETE
  CRAllocationStrategyBESTFIT,
  CRAllocationStrategyBESTFITPROGRESSIVE,
  CRAllocationStrategySPOTCAPACITYOPTIMIZED,
  CRAllocationStrategy'
  #-}

instance Prelude.FromText CRAllocationStrategy where
  parser = CRAllocationStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText CRAllocationStrategy where
  toText (CRAllocationStrategy' x) = x

instance Prelude.Hashable CRAllocationStrategy

instance Prelude.NFData CRAllocationStrategy

instance Prelude.ToByteString CRAllocationStrategy

instance Prelude.ToQuery CRAllocationStrategy

instance Prelude.ToHeader CRAllocationStrategy

instance Prelude.ToJSON CRAllocationStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CRAllocationStrategy where
  parseJSON = Prelude.parseJSONText "CRAllocationStrategy"
