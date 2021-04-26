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
-- Module      : Network.AWS.CodeBuild.Types.ReportStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportStatusType
  ( ReportStatusType
      ( ..,
        ReportStatusTypeDELETING,
        ReportStatusTypeFAILED,
        ReportStatusTypeGENERATING,
        ReportStatusTypeINCOMPLETE,
        ReportStatusTypeSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReportStatusType = ReportStatusType'
  { fromReportStatusType ::
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

pattern ReportStatusTypeDELETING :: ReportStatusType
pattern ReportStatusTypeDELETING = ReportStatusType' "DELETING"

pattern ReportStatusTypeFAILED :: ReportStatusType
pattern ReportStatusTypeFAILED = ReportStatusType' "FAILED"

pattern ReportStatusTypeGENERATING :: ReportStatusType
pattern ReportStatusTypeGENERATING = ReportStatusType' "GENERATING"

pattern ReportStatusTypeINCOMPLETE :: ReportStatusType
pattern ReportStatusTypeINCOMPLETE = ReportStatusType' "INCOMPLETE"

pattern ReportStatusTypeSUCCEEDED :: ReportStatusType
pattern ReportStatusTypeSUCCEEDED = ReportStatusType' "SUCCEEDED"

{-# COMPLETE
  ReportStatusTypeDELETING,
  ReportStatusTypeFAILED,
  ReportStatusTypeGENERATING,
  ReportStatusTypeINCOMPLETE,
  ReportStatusTypeSUCCEEDED,
  ReportStatusType'
  #-}

instance Prelude.FromText ReportStatusType where
  parser = ReportStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportStatusType where
  toText (ReportStatusType' x) = x

instance Prelude.Hashable ReportStatusType

instance Prelude.NFData ReportStatusType

instance Prelude.ToByteString ReportStatusType

instance Prelude.ToQuery ReportStatusType

instance Prelude.ToHeader ReportStatusType

instance Prelude.ToJSON ReportStatusType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ReportStatusType where
  parseJSON = Prelude.parseJSONText "ReportStatusType"
