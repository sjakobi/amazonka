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
-- Module      : Network.AWS.SageMaker.Types.ProcessingS3InputMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingS3InputMode
  ( ProcessingS3InputMode
      ( ..,
        ProcessingS3InputModeFile,
        ProcessingS3InputModePipe
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProcessingS3InputMode = ProcessingS3InputMode'
  { fromProcessingS3InputMode ::
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

pattern ProcessingS3InputModeFile :: ProcessingS3InputMode
pattern ProcessingS3InputModeFile = ProcessingS3InputMode' "File"

pattern ProcessingS3InputModePipe :: ProcessingS3InputMode
pattern ProcessingS3InputModePipe = ProcessingS3InputMode' "Pipe"

{-# COMPLETE
  ProcessingS3InputModeFile,
  ProcessingS3InputModePipe,
  ProcessingS3InputMode'
  #-}

instance Prelude.FromText ProcessingS3InputMode where
  parser = ProcessingS3InputMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProcessingS3InputMode where
  toText (ProcessingS3InputMode' x) = x

instance Prelude.Hashable ProcessingS3InputMode

instance Prelude.NFData ProcessingS3InputMode

instance Prelude.ToByteString ProcessingS3InputMode

instance Prelude.ToQuery ProcessingS3InputMode

instance Prelude.ToHeader ProcessingS3InputMode

instance Prelude.ToJSON ProcessingS3InputMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProcessingS3InputMode where
  parseJSON = Prelude.parseJSONText "ProcessingS3InputMode"
