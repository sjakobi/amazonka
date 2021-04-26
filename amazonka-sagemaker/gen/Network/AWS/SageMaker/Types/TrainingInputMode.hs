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
-- Module      : Network.AWS.SageMaker.Types.TrainingInputMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrainingInputMode
  ( TrainingInputMode
      ( ..,
        TrainingInputModeFile,
        TrainingInputModePipe
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TrainingInputMode = TrainingInputMode'
  { fromTrainingInputMode ::
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

pattern TrainingInputModeFile :: TrainingInputMode
pattern TrainingInputModeFile = TrainingInputMode' "File"

pattern TrainingInputModePipe :: TrainingInputMode
pattern TrainingInputModePipe = TrainingInputMode' "Pipe"

{-# COMPLETE
  TrainingInputModeFile,
  TrainingInputModePipe,
  TrainingInputMode'
  #-}

instance Prelude.FromText TrainingInputMode where
  parser = TrainingInputMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrainingInputMode where
  toText (TrainingInputMode' x) = x

instance Prelude.Hashable TrainingInputMode

instance Prelude.NFData TrainingInputMode

instance Prelude.ToByteString TrainingInputMode

instance Prelude.ToQuery TrainingInputMode

instance Prelude.ToHeader TrainingInputMode

instance Prelude.ToJSON TrainingInputMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TrainingInputMode where
  parseJSON = Prelude.parseJSONText "TrainingInputMode"
