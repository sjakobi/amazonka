{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.ValidityPeriodType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.ValidityPeriodType
  ( ValidityPeriodType
      ( ..,
        Absolute,
        Days,
        EndDate,
        Months,
        Years
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ValidityPeriodType
  = ValidityPeriodType'
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

pattern Absolute :: ValidityPeriodType
pattern Absolute = ValidityPeriodType' "ABSOLUTE"

pattern Days :: ValidityPeriodType
pattern Days = ValidityPeriodType' "DAYS"

pattern EndDate :: ValidityPeriodType
pattern EndDate = ValidityPeriodType' "END_DATE"

pattern Months :: ValidityPeriodType
pattern Months = ValidityPeriodType' "MONTHS"

pattern Years :: ValidityPeriodType
pattern Years = ValidityPeriodType' "YEARS"

{-# COMPLETE
  Absolute,
  Days,
  EndDate,
  Months,
  Years,
  ValidityPeriodType'
  #-}

instance FromText ValidityPeriodType where
  parser = (ValidityPeriodType' . mk) <$> takeText

instance ToText ValidityPeriodType where
  toText (ValidityPeriodType' ci) = original ci

instance Hashable ValidityPeriodType

instance NFData ValidityPeriodType

instance ToByteString ValidityPeriodType

instance ToQuery ValidityPeriodType

instance ToHeader ValidityPeriodType

instance ToJSON ValidityPeriodType where
  toJSON = toJSONText
