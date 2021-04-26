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
-- Module      : Network.AWS.CodeBuild.Types.ReportExportConfigType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportExportConfigType
  ( ReportExportConfigType
      ( ..,
        ReportExportConfigTypeNOEXPORT,
        ReportExportConfigTypeS3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReportExportConfigType = ReportExportConfigType'
  { fromReportExportConfigType ::
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

pattern ReportExportConfigTypeNOEXPORT :: ReportExportConfigType
pattern ReportExportConfigTypeNOEXPORT = ReportExportConfigType' "NO_EXPORT"

pattern ReportExportConfigTypeS3 :: ReportExportConfigType
pattern ReportExportConfigTypeS3 = ReportExportConfigType' "S3"

{-# COMPLETE
  ReportExportConfigTypeNOEXPORT,
  ReportExportConfigTypeS3,
  ReportExportConfigType'
  #-}

instance Prelude.FromText ReportExportConfigType where
  parser = ReportExportConfigType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportExportConfigType where
  toText (ReportExportConfigType' x) = x

instance Prelude.Hashable ReportExportConfigType

instance Prelude.NFData ReportExportConfigType

instance Prelude.ToByteString ReportExportConfigType

instance Prelude.ToQuery ReportExportConfigType

instance Prelude.ToHeader ReportExportConfigType

instance Prelude.ToJSON ReportExportConfigType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ReportExportConfigType where
  parseJSON = Prelude.parseJSONText "ReportExportConfigType"
