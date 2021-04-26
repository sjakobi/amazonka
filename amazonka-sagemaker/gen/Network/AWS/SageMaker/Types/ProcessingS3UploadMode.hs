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
-- Module      : Network.AWS.SageMaker.Types.ProcessingS3UploadMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingS3UploadMode
  ( ProcessingS3UploadMode
      ( ..,
        ProcessingS3UploadModeContinuous,
        ProcessingS3UploadModeEndOfJob
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProcessingS3UploadMode = ProcessingS3UploadMode'
  { fromProcessingS3UploadMode ::
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

pattern ProcessingS3UploadModeContinuous :: ProcessingS3UploadMode
pattern ProcessingS3UploadModeContinuous = ProcessingS3UploadMode' "Continuous"

pattern ProcessingS3UploadModeEndOfJob :: ProcessingS3UploadMode
pattern ProcessingS3UploadModeEndOfJob = ProcessingS3UploadMode' "EndOfJob"

{-# COMPLETE
  ProcessingS3UploadModeContinuous,
  ProcessingS3UploadModeEndOfJob,
  ProcessingS3UploadMode'
  #-}

instance Prelude.FromText ProcessingS3UploadMode where
  parser = ProcessingS3UploadMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProcessingS3UploadMode where
  toText (ProcessingS3UploadMode' x) = x

instance Prelude.Hashable ProcessingS3UploadMode

instance Prelude.NFData ProcessingS3UploadMode

instance Prelude.ToByteString ProcessingS3UploadMode

instance Prelude.ToQuery ProcessingS3UploadMode

instance Prelude.ToHeader ProcessingS3UploadMode

instance Prelude.ToJSON ProcessingS3UploadMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProcessingS3UploadMode where
  parseJSON = Prelude.parseJSONText "ProcessingS3UploadMode"
