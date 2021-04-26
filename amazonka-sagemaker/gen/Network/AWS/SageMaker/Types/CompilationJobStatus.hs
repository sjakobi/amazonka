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
-- Module      : Network.AWS.SageMaker.Types.CompilationJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CompilationJobStatus
  ( CompilationJobStatus
      ( ..,
        CompilationJobStatusCOMPLETED,
        CompilationJobStatusFAILED,
        CompilationJobStatusINPROGRESS,
        CompilationJobStatusSTARTING,
        CompilationJobStatusSTOPPED,
        CompilationJobStatusSTOPPING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CompilationJobStatus = CompilationJobStatus'
  { fromCompilationJobStatus ::
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

pattern CompilationJobStatusCOMPLETED :: CompilationJobStatus
pattern CompilationJobStatusCOMPLETED = CompilationJobStatus' "COMPLETED"

pattern CompilationJobStatusFAILED :: CompilationJobStatus
pattern CompilationJobStatusFAILED = CompilationJobStatus' "FAILED"

pattern CompilationJobStatusINPROGRESS :: CompilationJobStatus
pattern CompilationJobStatusINPROGRESS = CompilationJobStatus' "INPROGRESS"

pattern CompilationJobStatusSTARTING :: CompilationJobStatus
pattern CompilationJobStatusSTARTING = CompilationJobStatus' "STARTING"

pattern CompilationJobStatusSTOPPED :: CompilationJobStatus
pattern CompilationJobStatusSTOPPED = CompilationJobStatus' "STOPPED"

pattern CompilationJobStatusSTOPPING :: CompilationJobStatus
pattern CompilationJobStatusSTOPPING = CompilationJobStatus' "STOPPING"

{-# COMPLETE
  CompilationJobStatusCOMPLETED,
  CompilationJobStatusFAILED,
  CompilationJobStatusINPROGRESS,
  CompilationJobStatusSTARTING,
  CompilationJobStatusSTOPPED,
  CompilationJobStatusSTOPPING,
  CompilationJobStatus'
  #-}

instance Prelude.FromText CompilationJobStatus where
  parser = CompilationJobStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CompilationJobStatus where
  toText (CompilationJobStatus' x) = x

instance Prelude.Hashable CompilationJobStatus

instance Prelude.NFData CompilationJobStatus

instance Prelude.ToByteString CompilationJobStatus

instance Prelude.ToQuery CompilationJobStatus

instance Prelude.ToHeader CompilationJobStatus

instance Prelude.ToJSON CompilationJobStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CompilationJobStatus where
  parseJSON = Prelude.parseJSONText "CompilationJobStatus"
