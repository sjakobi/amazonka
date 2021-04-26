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
-- Module      : Network.AWS.CertificateManagerPCA.Types.ValidityPeriodType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.ValidityPeriodType
  ( ValidityPeriodType
      ( ..,
        ValidityPeriodTypeABSOLUTE,
        ValidityPeriodTypeDAYS,
        ValidityPeriodTypeENDDATE,
        ValidityPeriodTypeMONTHS,
        ValidityPeriodTypeYEARS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ValidityPeriodType = ValidityPeriodType'
  { fromValidityPeriodType ::
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

pattern ValidityPeriodTypeABSOLUTE :: ValidityPeriodType
pattern ValidityPeriodTypeABSOLUTE = ValidityPeriodType' "ABSOLUTE"

pattern ValidityPeriodTypeDAYS :: ValidityPeriodType
pattern ValidityPeriodTypeDAYS = ValidityPeriodType' "DAYS"

pattern ValidityPeriodTypeENDDATE :: ValidityPeriodType
pattern ValidityPeriodTypeENDDATE = ValidityPeriodType' "END_DATE"

pattern ValidityPeriodTypeMONTHS :: ValidityPeriodType
pattern ValidityPeriodTypeMONTHS = ValidityPeriodType' "MONTHS"

pattern ValidityPeriodTypeYEARS :: ValidityPeriodType
pattern ValidityPeriodTypeYEARS = ValidityPeriodType' "YEARS"

{-# COMPLETE
  ValidityPeriodTypeABSOLUTE,
  ValidityPeriodTypeDAYS,
  ValidityPeriodTypeENDDATE,
  ValidityPeriodTypeMONTHS,
  ValidityPeriodTypeYEARS,
  ValidityPeriodType'
  #-}

instance Prelude.FromText ValidityPeriodType where
  parser = ValidityPeriodType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ValidityPeriodType where
  toText (ValidityPeriodType' x) = x

instance Prelude.Hashable ValidityPeriodType

instance Prelude.NFData ValidityPeriodType

instance Prelude.ToByteString ValidityPeriodType

instance Prelude.ToQuery ValidityPeriodType

instance Prelude.ToHeader ValidityPeriodType

instance Prelude.ToJSON ValidityPeriodType where
  toJSON = Prelude.toJSONText
