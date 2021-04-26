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
-- Module      : Network.AWS.CodeBuild.Types.ReportPackagingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportPackagingType
  ( ReportPackagingType
      ( ..,
        ReportPackagingTypeNONE,
        ReportPackagingTypeZIP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReportPackagingType = ReportPackagingType'
  { fromReportPackagingType ::
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

pattern ReportPackagingTypeNONE :: ReportPackagingType
pattern ReportPackagingTypeNONE = ReportPackagingType' "NONE"

pattern ReportPackagingTypeZIP :: ReportPackagingType
pattern ReportPackagingTypeZIP = ReportPackagingType' "ZIP"

{-# COMPLETE
  ReportPackagingTypeNONE,
  ReportPackagingTypeZIP,
  ReportPackagingType'
  #-}

instance Prelude.FromText ReportPackagingType where
  parser = ReportPackagingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportPackagingType where
  toText (ReportPackagingType' x) = x

instance Prelude.Hashable ReportPackagingType

instance Prelude.NFData ReportPackagingType

instance Prelude.ToByteString ReportPackagingType

instance Prelude.ToQuery ReportPackagingType

instance Prelude.ToHeader ReportPackagingType

instance Prelude.ToJSON ReportPackagingType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ReportPackagingType where
  parseJSON = Prelude.parseJSONText "ReportPackagingType"
