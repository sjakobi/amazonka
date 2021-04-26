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
-- Module      : Network.AWS.SSM.Types.PatchProperty
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchProperty
  ( PatchProperty
      ( ..,
        PatchPropertyCLASSIFICATION,
        PatchPropertyMSRCSEVERITY,
        PatchPropertyPRIORITY,
        PatchPropertyPRODUCT,
        PatchPropertyPRODUCTFAMILY,
        PatchPropertySEVERITY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PatchProperty = PatchProperty'
  { fromPatchProperty ::
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

pattern PatchPropertyCLASSIFICATION :: PatchProperty
pattern PatchPropertyCLASSIFICATION = PatchProperty' "CLASSIFICATION"

pattern PatchPropertyMSRCSEVERITY :: PatchProperty
pattern PatchPropertyMSRCSEVERITY = PatchProperty' "MSRC_SEVERITY"

pattern PatchPropertyPRIORITY :: PatchProperty
pattern PatchPropertyPRIORITY = PatchProperty' "PRIORITY"

pattern PatchPropertyPRODUCT :: PatchProperty
pattern PatchPropertyPRODUCT = PatchProperty' "PRODUCT"

pattern PatchPropertyPRODUCTFAMILY :: PatchProperty
pattern PatchPropertyPRODUCTFAMILY = PatchProperty' "PRODUCT_FAMILY"

pattern PatchPropertySEVERITY :: PatchProperty
pattern PatchPropertySEVERITY = PatchProperty' "SEVERITY"

{-# COMPLETE
  PatchPropertyCLASSIFICATION,
  PatchPropertyMSRCSEVERITY,
  PatchPropertyPRIORITY,
  PatchPropertyPRODUCT,
  PatchPropertyPRODUCTFAMILY,
  PatchPropertySEVERITY,
  PatchProperty'
  #-}

instance Prelude.FromText PatchProperty where
  parser = PatchProperty' Prelude.<$> Prelude.takeText

instance Prelude.ToText PatchProperty where
  toText (PatchProperty' x) = x

instance Prelude.Hashable PatchProperty

instance Prelude.NFData PatchProperty

instance Prelude.ToByteString PatchProperty

instance Prelude.ToQuery PatchProperty

instance Prelude.ToHeader PatchProperty

instance Prelude.ToJSON PatchProperty where
  toJSON = Prelude.toJSONText
