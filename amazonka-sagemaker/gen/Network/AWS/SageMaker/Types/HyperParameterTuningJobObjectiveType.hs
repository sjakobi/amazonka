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
-- Module      : Network.AWS.SageMaker.Types.HyperParameterTuningJobObjectiveType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HyperParameterTuningJobObjectiveType
  ( HyperParameterTuningJobObjectiveType
      ( ..,
        HyperParameterTuningJobObjectiveTypeMaximize,
        HyperParameterTuningJobObjectiveTypeMinimize
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HyperParameterTuningJobObjectiveType = HyperParameterTuningJobObjectiveType'
  { fromHyperParameterTuningJobObjectiveType ::
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

pattern HyperParameterTuningJobObjectiveTypeMaximize :: HyperParameterTuningJobObjectiveType
pattern HyperParameterTuningJobObjectiveTypeMaximize = HyperParameterTuningJobObjectiveType' "Maximize"

pattern HyperParameterTuningJobObjectiveTypeMinimize :: HyperParameterTuningJobObjectiveType
pattern HyperParameterTuningJobObjectiveTypeMinimize = HyperParameterTuningJobObjectiveType' "Minimize"

{-# COMPLETE
  HyperParameterTuningJobObjectiveTypeMaximize,
  HyperParameterTuningJobObjectiveTypeMinimize,
  HyperParameterTuningJobObjectiveType'
  #-}

instance Prelude.FromText HyperParameterTuningJobObjectiveType where
  parser = HyperParameterTuningJobObjectiveType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HyperParameterTuningJobObjectiveType where
  toText (HyperParameterTuningJobObjectiveType' x) = x

instance Prelude.Hashable HyperParameterTuningJobObjectiveType

instance Prelude.NFData HyperParameterTuningJobObjectiveType

instance Prelude.ToByteString HyperParameterTuningJobObjectiveType

instance Prelude.ToQuery HyperParameterTuningJobObjectiveType

instance Prelude.ToHeader HyperParameterTuningJobObjectiveType

instance Prelude.ToJSON HyperParameterTuningJobObjectiveType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HyperParameterTuningJobObjectiveType where
  parseJSON = Prelude.parseJSONText "HyperParameterTuningJobObjectiveType"
