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
-- Module      : Network.AWS.SageMaker.Types.EdgePackagingJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.EdgePackagingJobStatus
  ( EdgePackagingJobStatus
      ( ..,
        EdgePackagingJobStatusCOMPLETED,
        EdgePackagingJobStatusFAILED,
        EdgePackagingJobStatusINPROGRESS,
        EdgePackagingJobStatusSTARTING,
        EdgePackagingJobStatusSTOPPED,
        EdgePackagingJobStatusSTOPPING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EdgePackagingJobStatus = EdgePackagingJobStatus'
  { fromEdgePackagingJobStatus ::
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

pattern EdgePackagingJobStatusCOMPLETED :: EdgePackagingJobStatus
pattern EdgePackagingJobStatusCOMPLETED = EdgePackagingJobStatus' "COMPLETED"

pattern EdgePackagingJobStatusFAILED :: EdgePackagingJobStatus
pattern EdgePackagingJobStatusFAILED = EdgePackagingJobStatus' "FAILED"

pattern EdgePackagingJobStatusINPROGRESS :: EdgePackagingJobStatus
pattern EdgePackagingJobStatusINPROGRESS = EdgePackagingJobStatus' "INPROGRESS"

pattern EdgePackagingJobStatusSTARTING :: EdgePackagingJobStatus
pattern EdgePackagingJobStatusSTARTING = EdgePackagingJobStatus' "STARTING"

pattern EdgePackagingJobStatusSTOPPED :: EdgePackagingJobStatus
pattern EdgePackagingJobStatusSTOPPED = EdgePackagingJobStatus' "STOPPED"

pattern EdgePackagingJobStatusSTOPPING :: EdgePackagingJobStatus
pattern EdgePackagingJobStatusSTOPPING = EdgePackagingJobStatus' "STOPPING"

{-# COMPLETE
  EdgePackagingJobStatusCOMPLETED,
  EdgePackagingJobStatusFAILED,
  EdgePackagingJobStatusINPROGRESS,
  EdgePackagingJobStatusSTARTING,
  EdgePackagingJobStatusSTOPPED,
  EdgePackagingJobStatusSTOPPING,
  EdgePackagingJobStatus'
  #-}

instance Prelude.FromText EdgePackagingJobStatus where
  parser = EdgePackagingJobStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText EdgePackagingJobStatus where
  toText (EdgePackagingJobStatus' x) = x

instance Prelude.Hashable EdgePackagingJobStatus

instance Prelude.NFData EdgePackagingJobStatus

instance Prelude.ToByteString EdgePackagingJobStatus

instance Prelude.ToQuery EdgePackagingJobStatus

instance Prelude.ToHeader EdgePackagingJobStatus

instance Prelude.ToJSON EdgePackagingJobStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EdgePackagingJobStatus where
  parseJSON = Prelude.parseJSONText "EdgePackagingJobStatus"
