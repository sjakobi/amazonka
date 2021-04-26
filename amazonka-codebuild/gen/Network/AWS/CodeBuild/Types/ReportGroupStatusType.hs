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
-- Module      : Network.AWS.CodeBuild.Types.ReportGroupStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportGroupStatusType
  ( ReportGroupStatusType
      ( ..,
        ReportGroupStatusTypeACTIVE,
        ReportGroupStatusTypeDELETING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReportGroupStatusType = ReportGroupStatusType'
  { fromReportGroupStatusType ::
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

pattern ReportGroupStatusTypeACTIVE :: ReportGroupStatusType
pattern ReportGroupStatusTypeACTIVE = ReportGroupStatusType' "ACTIVE"

pattern ReportGroupStatusTypeDELETING :: ReportGroupStatusType
pattern ReportGroupStatusTypeDELETING = ReportGroupStatusType' "DELETING"

{-# COMPLETE
  ReportGroupStatusTypeACTIVE,
  ReportGroupStatusTypeDELETING,
  ReportGroupStatusType'
  #-}

instance Prelude.FromText ReportGroupStatusType where
  parser = ReportGroupStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportGroupStatusType where
  toText (ReportGroupStatusType' x) = x

instance Prelude.Hashable ReportGroupStatusType

instance Prelude.NFData ReportGroupStatusType

instance Prelude.ToByteString ReportGroupStatusType

instance Prelude.ToQuery ReportGroupStatusType

instance Prelude.ToHeader ReportGroupStatusType

instance Prelude.FromJSON ReportGroupStatusType where
  parseJSON = Prelude.parseJSONText "ReportGroupStatusType"
