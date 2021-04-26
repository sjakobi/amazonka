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
-- Module      : Network.AWS.EC2.Types.AnalysisStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AnalysisStatus
  ( AnalysisStatus
      ( ..,
        AnalysisStatusFailed,
        AnalysisStatusRunning,
        AnalysisStatusSucceeded
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AnalysisStatus = AnalysisStatus'
  { fromAnalysisStatus ::
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

pattern AnalysisStatusFailed :: AnalysisStatus
pattern AnalysisStatusFailed = AnalysisStatus' "failed"

pattern AnalysisStatusRunning :: AnalysisStatus
pattern AnalysisStatusRunning = AnalysisStatus' "running"

pattern AnalysisStatusSucceeded :: AnalysisStatus
pattern AnalysisStatusSucceeded = AnalysisStatus' "succeeded"

{-# COMPLETE
  AnalysisStatusFailed,
  AnalysisStatusRunning,
  AnalysisStatusSucceeded,
  AnalysisStatus'
  #-}

instance Prelude.FromText AnalysisStatus where
  parser = AnalysisStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AnalysisStatus where
  toText (AnalysisStatus' x) = x

instance Prelude.Hashable AnalysisStatus

instance Prelude.NFData AnalysisStatus

instance Prelude.ToByteString AnalysisStatus

instance Prelude.ToQuery AnalysisStatus

instance Prelude.ToHeader AnalysisStatus

instance Prelude.FromXML AnalysisStatus where
  parseXML = Prelude.parseXMLText "AnalysisStatus"
