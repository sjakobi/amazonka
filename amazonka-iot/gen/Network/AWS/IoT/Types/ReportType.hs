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
-- Module      : Network.AWS.IoT.Types.ReportType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ReportType
  ( ReportType
      ( ..,
        ReportTypeERRORS,
        ReportTypeRESULTS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReportType = ReportType'
  { fromReportType ::
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

pattern ReportTypeERRORS :: ReportType
pattern ReportTypeERRORS = ReportType' "ERRORS"

pattern ReportTypeRESULTS :: ReportType
pattern ReportTypeRESULTS = ReportType' "RESULTS"

{-# COMPLETE
  ReportTypeERRORS,
  ReportTypeRESULTS,
  ReportType'
  #-}

instance Prelude.FromText ReportType where
  parser = ReportType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportType where
  toText (ReportType' x) = x

instance Prelude.Hashable ReportType

instance Prelude.NFData ReportType

instance Prelude.ToByteString ReportType

instance Prelude.ToQuery ReportType

instance Prelude.ToHeader ReportType

instance Prelude.ToJSON ReportType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ReportType where
  parseJSON = Prelude.parseJSONText "ReportType"
