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
-- Module      : Network.AWS.CodeBuild.Types.ReportGroupSortByType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportGroupSortByType
  ( ReportGroupSortByType
      ( ..,
        ReportGroupSortByTypeCREATEDTIME,
        ReportGroupSortByTypeLASTMODIFIEDTIME,
        ReportGroupSortByTypeNAME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReportGroupSortByType = ReportGroupSortByType'
  { fromReportGroupSortByType ::
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

pattern ReportGroupSortByTypeCREATEDTIME :: ReportGroupSortByType
pattern ReportGroupSortByTypeCREATEDTIME = ReportGroupSortByType' "CREATED_TIME"

pattern ReportGroupSortByTypeLASTMODIFIEDTIME :: ReportGroupSortByType
pattern ReportGroupSortByTypeLASTMODIFIEDTIME = ReportGroupSortByType' "LAST_MODIFIED_TIME"

pattern ReportGroupSortByTypeNAME :: ReportGroupSortByType
pattern ReportGroupSortByTypeNAME = ReportGroupSortByType' "NAME"

{-# COMPLETE
  ReportGroupSortByTypeCREATEDTIME,
  ReportGroupSortByTypeLASTMODIFIEDTIME,
  ReportGroupSortByTypeNAME,
  ReportGroupSortByType'
  #-}

instance Prelude.FromText ReportGroupSortByType where
  parser = ReportGroupSortByType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportGroupSortByType where
  toText (ReportGroupSortByType' x) = x

instance Prelude.Hashable ReportGroupSortByType

instance Prelude.NFData ReportGroupSortByType

instance Prelude.ToByteString ReportGroupSortByType

instance Prelude.ToQuery ReportGroupSortByType

instance Prelude.ToHeader ReportGroupSortByType

instance Prelude.ToJSON ReportGroupSortByType where
  toJSON = Prelude.toJSONText
