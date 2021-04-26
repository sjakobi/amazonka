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
-- Module      : Network.AWS.EC2.Types.SummaryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SummaryStatus
  ( SummaryStatus
      ( ..,
        SummaryStatusImpaired,
        SummaryStatusInitializing,
        SummaryStatusInsufficientData,
        SummaryStatusNotApplicable,
        SummaryStatusOK
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype SummaryStatus = SummaryStatus'
  { fromSummaryStatus ::
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

pattern SummaryStatusImpaired :: SummaryStatus
pattern SummaryStatusImpaired = SummaryStatus' "impaired"

pattern SummaryStatusInitializing :: SummaryStatus
pattern SummaryStatusInitializing = SummaryStatus' "initializing"

pattern SummaryStatusInsufficientData :: SummaryStatus
pattern SummaryStatusInsufficientData = SummaryStatus' "insufficient-data"

pattern SummaryStatusNotApplicable :: SummaryStatus
pattern SummaryStatusNotApplicable = SummaryStatus' "not-applicable"

pattern SummaryStatusOK :: SummaryStatus
pattern SummaryStatusOK = SummaryStatus' "ok"

{-# COMPLETE
  SummaryStatusImpaired,
  SummaryStatusInitializing,
  SummaryStatusInsufficientData,
  SummaryStatusNotApplicable,
  SummaryStatusOK,
  SummaryStatus'
  #-}

instance Prelude.FromText SummaryStatus where
  parser = SummaryStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText SummaryStatus where
  toText (SummaryStatus' x) = x

instance Prelude.Hashable SummaryStatus

instance Prelude.NFData SummaryStatus

instance Prelude.ToByteString SummaryStatus

instance Prelude.ToQuery SummaryStatus

instance Prelude.ToHeader SummaryStatus

instance Prelude.FromXML SummaryStatus where
  parseXML = Prelude.parseXMLText "SummaryStatus"
