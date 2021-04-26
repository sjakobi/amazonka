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
-- Module      : Network.AWS.IAM.Types.ReportStateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.ReportStateType
  ( ReportStateType
      ( ..,
        ReportStateTypeCOMPLETE,
        ReportStateTypeINPROGRESS,
        ReportStateTypeSTARTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReportStateType = ReportStateType'
  { fromReportStateType ::
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

pattern ReportStateTypeCOMPLETE :: ReportStateType
pattern ReportStateTypeCOMPLETE = ReportStateType' "COMPLETE"

pattern ReportStateTypeINPROGRESS :: ReportStateType
pattern ReportStateTypeINPROGRESS = ReportStateType' "INPROGRESS"

pattern ReportStateTypeSTARTED :: ReportStateType
pattern ReportStateTypeSTARTED = ReportStateType' "STARTED"

{-# COMPLETE
  ReportStateTypeCOMPLETE,
  ReportStateTypeINPROGRESS,
  ReportStateTypeSTARTED,
  ReportStateType'
  #-}

instance Prelude.FromText ReportStateType where
  parser = ReportStateType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportStateType where
  toText (ReportStateType' x) = x

instance Prelude.Hashable ReportStateType

instance Prelude.NFData ReportStateType

instance Prelude.ToByteString ReportStateType

instance Prelude.ToQuery ReportStateType

instance Prelude.ToHeader ReportStateType

instance Prelude.FromXML ReportStateType where
  parseXML = Prelude.parseXMLText "ReportStateType"
