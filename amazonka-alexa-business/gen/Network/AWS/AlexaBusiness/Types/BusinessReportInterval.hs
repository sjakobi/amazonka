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
-- Module      : Network.AWS.AlexaBusiness.Types.BusinessReportInterval
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.BusinessReportInterval
  ( BusinessReportInterval
      ( ..,
        BusinessReportIntervalONEDAY,
        BusinessReportIntervalONEWEEK,
        BusinessReportIntervalTHIRTYDAYS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BusinessReportInterval = BusinessReportInterval'
  { fromBusinessReportInterval ::
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

pattern BusinessReportIntervalONEDAY :: BusinessReportInterval
pattern BusinessReportIntervalONEDAY = BusinessReportInterval' "ONE_DAY"

pattern BusinessReportIntervalONEWEEK :: BusinessReportInterval
pattern BusinessReportIntervalONEWEEK = BusinessReportInterval' "ONE_WEEK"

pattern BusinessReportIntervalTHIRTYDAYS :: BusinessReportInterval
pattern BusinessReportIntervalTHIRTYDAYS = BusinessReportInterval' "THIRTY_DAYS"

{-# COMPLETE
  BusinessReportIntervalONEDAY,
  BusinessReportIntervalONEWEEK,
  BusinessReportIntervalTHIRTYDAYS,
  BusinessReportInterval'
  #-}

instance Prelude.FromText BusinessReportInterval where
  parser = BusinessReportInterval' Prelude.<$> Prelude.takeText

instance Prelude.ToText BusinessReportInterval where
  toText (BusinessReportInterval' x) = x

instance Prelude.Hashable BusinessReportInterval

instance Prelude.NFData BusinessReportInterval

instance Prelude.ToByteString BusinessReportInterval

instance Prelude.ToQuery BusinessReportInterval

instance Prelude.ToHeader BusinessReportInterval

instance Prelude.ToJSON BusinessReportInterval where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BusinessReportInterval where
  parseJSON = Prelude.parseJSONText "BusinessReportInterval"
