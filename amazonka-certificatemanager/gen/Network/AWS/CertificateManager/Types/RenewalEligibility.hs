{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManager.Types.RenewalEligibility
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.RenewalEligibility
  ( RenewalEligibility
      ( ..,
        Eligible,
        Ineligible
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RenewalEligibility
  = RenewalEligibility'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Eligible :: RenewalEligibility
pattern Eligible = RenewalEligibility' "ELIGIBLE"

pattern Ineligible :: RenewalEligibility
pattern Ineligible = RenewalEligibility' "INELIGIBLE"

{-# COMPLETE
  Eligible,
  Ineligible,
  RenewalEligibility'
  #-}

instance FromText RenewalEligibility where
  parser = (RenewalEligibility' . mk) <$> takeText

instance ToText RenewalEligibility where
  toText (RenewalEligibility' ci) = original ci

instance Hashable RenewalEligibility

instance NFData RenewalEligibility

instance ToByteString RenewalEligibility

instance ToQuery RenewalEligibility

instance ToHeader RenewalEligibility

instance FromJSON RenewalEligibility where
  parseJSON = parseJSONText "RenewalEligibility"
