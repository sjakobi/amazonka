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
-- Module      : Network.AWS.SMS.Types.LicenseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.LicenseType
  ( LicenseType
      ( ..,
        LicenseTypeAWS,
        LicenseTypeBYOL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LicenseType = LicenseType'
  { fromLicenseType ::
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

pattern LicenseTypeAWS :: LicenseType
pattern LicenseTypeAWS = LicenseType' "AWS"

pattern LicenseTypeBYOL :: LicenseType
pattern LicenseTypeBYOL = LicenseType' "BYOL"

{-# COMPLETE
  LicenseTypeAWS,
  LicenseTypeBYOL,
  LicenseType'
  #-}

instance Prelude.FromText LicenseType where
  parser = LicenseType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LicenseType where
  toText (LicenseType' x) = x

instance Prelude.Hashable LicenseType

instance Prelude.NFData LicenseType

instance Prelude.ToByteString LicenseType

instance Prelude.ToQuery LicenseType

instance Prelude.ToHeader LicenseType

instance Prelude.ToJSON LicenseType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LicenseType where
  parseJSON = Prelude.parseJSONText "LicenseType"
