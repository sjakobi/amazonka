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
-- Module      : Network.AWS.SageMaker.Types.TrainingJobEarlyStoppingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrainingJobEarlyStoppingType
  ( TrainingJobEarlyStoppingType
      ( ..,
        TrainingJobEarlyStoppingTypeAuto,
        TrainingJobEarlyStoppingTypeOff
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TrainingJobEarlyStoppingType = TrainingJobEarlyStoppingType'
  { fromTrainingJobEarlyStoppingType ::
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

pattern TrainingJobEarlyStoppingTypeAuto :: TrainingJobEarlyStoppingType
pattern TrainingJobEarlyStoppingTypeAuto = TrainingJobEarlyStoppingType' "Auto"

pattern TrainingJobEarlyStoppingTypeOff :: TrainingJobEarlyStoppingType
pattern TrainingJobEarlyStoppingTypeOff = TrainingJobEarlyStoppingType' "Off"

{-# COMPLETE
  TrainingJobEarlyStoppingTypeAuto,
  TrainingJobEarlyStoppingTypeOff,
  TrainingJobEarlyStoppingType'
  #-}

instance Prelude.FromText TrainingJobEarlyStoppingType where
  parser = TrainingJobEarlyStoppingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrainingJobEarlyStoppingType where
  toText (TrainingJobEarlyStoppingType' x) = x

instance Prelude.Hashable TrainingJobEarlyStoppingType

instance Prelude.NFData TrainingJobEarlyStoppingType

instance Prelude.ToByteString TrainingJobEarlyStoppingType

instance Prelude.ToQuery TrainingJobEarlyStoppingType

instance Prelude.ToHeader TrainingJobEarlyStoppingType

instance Prelude.ToJSON TrainingJobEarlyStoppingType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TrainingJobEarlyStoppingType where
  parseJSON = Prelude.parseJSONText "TrainingJobEarlyStoppingType"
