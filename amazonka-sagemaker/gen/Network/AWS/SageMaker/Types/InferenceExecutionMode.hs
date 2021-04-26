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
-- Module      : Network.AWS.SageMaker.Types.InferenceExecutionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.InferenceExecutionMode
  ( InferenceExecutionMode
      ( ..,
        InferenceExecutionModeDirect,
        InferenceExecutionModeSerial
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InferenceExecutionMode = InferenceExecutionMode'
  { fromInferenceExecutionMode ::
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

pattern InferenceExecutionModeDirect :: InferenceExecutionMode
pattern InferenceExecutionModeDirect = InferenceExecutionMode' "Direct"

pattern InferenceExecutionModeSerial :: InferenceExecutionMode
pattern InferenceExecutionModeSerial = InferenceExecutionMode' "Serial"

{-# COMPLETE
  InferenceExecutionModeDirect,
  InferenceExecutionModeSerial,
  InferenceExecutionMode'
  #-}

instance Prelude.FromText InferenceExecutionMode where
  parser = InferenceExecutionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText InferenceExecutionMode where
  toText (InferenceExecutionMode' x) = x

instance Prelude.Hashable InferenceExecutionMode

instance Prelude.NFData InferenceExecutionMode

instance Prelude.ToByteString InferenceExecutionMode

instance Prelude.ToQuery InferenceExecutionMode

instance Prelude.ToHeader InferenceExecutionMode

instance Prelude.ToJSON InferenceExecutionMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InferenceExecutionMode where
  parseJSON = Prelude.parseJSONText "InferenceExecutionMode"
