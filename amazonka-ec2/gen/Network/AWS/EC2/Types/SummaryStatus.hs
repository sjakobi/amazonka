{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        SSImpaired,
        SSInitializing,
        SSInsufficientData,
        SSNotApplicable,
        SSOK
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data SummaryStatus = SummaryStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSImpaired :: SummaryStatus
pattern SSImpaired = SummaryStatus' "impaired"

pattern SSInitializing :: SummaryStatus
pattern SSInitializing = SummaryStatus' "initializing"

pattern SSInsufficientData :: SummaryStatus
pattern SSInsufficientData = SummaryStatus' "insufficient-data"

pattern SSNotApplicable :: SummaryStatus
pattern SSNotApplicable = SummaryStatus' "not-applicable"

pattern SSOK :: SummaryStatus
pattern SSOK = SummaryStatus' "ok"

{-# COMPLETE
  SSImpaired,
  SSInitializing,
  SSInsufficientData,
  SSNotApplicable,
  SSOK,
  SummaryStatus'
  #-}

instance FromText SummaryStatus where
  parser = (SummaryStatus' . mk) <$> takeText

instance ToText SummaryStatus where
  toText (SummaryStatus' ci) = original ci

instance Hashable SummaryStatus

instance NFData SummaryStatus

instance ToByteString SummaryStatus

instance ToQuery SummaryStatus

instance ToHeader SummaryStatus

instance FromXML SummaryStatus where
  parseXML = parseXMLText "SummaryStatus"
