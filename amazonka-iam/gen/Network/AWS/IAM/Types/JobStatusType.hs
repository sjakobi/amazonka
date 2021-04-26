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
-- Module      : Network.AWS.IAM.Types.JobStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.JobStatusType
  ( JobStatusType
      ( ..,
        JobStatusTypeCOMPLETED,
        JobStatusTypeFAILED,
        JobStatusTypeINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype JobStatusType = JobStatusType'
  { fromJobStatusType ::
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

pattern JobStatusTypeCOMPLETED :: JobStatusType
pattern JobStatusTypeCOMPLETED = JobStatusType' "COMPLETED"

pattern JobStatusTypeFAILED :: JobStatusType
pattern JobStatusTypeFAILED = JobStatusType' "FAILED"

pattern JobStatusTypeINPROGRESS :: JobStatusType
pattern JobStatusTypeINPROGRESS = JobStatusType' "IN_PROGRESS"

{-# COMPLETE
  JobStatusTypeCOMPLETED,
  JobStatusTypeFAILED,
  JobStatusTypeINPROGRESS,
  JobStatusType'
  #-}

instance Prelude.FromText JobStatusType where
  parser = JobStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText JobStatusType where
  toText (JobStatusType' x) = x

instance Prelude.Hashable JobStatusType

instance Prelude.NFData JobStatusType

instance Prelude.ToByteString JobStatusType

instance Prelude.ToQuery JobStatusType

instance Prelude.ToHeader JobStatusType

instance Prelude.FromXML JobStatusType where
  parseXML = Prelude.parseXMLText "JobStatusType"
