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
-- Module      : Network.AWS.KMS.Types.ExpirationModelType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.ExpirationModelType
  ( ExpirationModelType
      ( ..,
        ExpirationModelTypeKEYMATERIALDOESNOTEXPIRE,
        ExpirationModelTypeKEYMATERIALEXPIRES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExpirationModelType = ExpirationModelType'
  { fromExpirationModelType ::
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

pattern ExpirationModelTypeKEYMATERIALDOESNOTEXPIRE :: ExpirationModelType
pattern ExpirationModelTypeKEYMATERIALDOESNOTEXPIRE = ExpirationModelType' "KEY_MATERIAL_DOES_NOT_EXPIRE"

pattern ExpirationModelTypeKEYMATERIALEXPIRES :: ExpirationModelType
pattern ExpirationModelTypeKEYMATERIALEXPIRES = ExpirationModelType' "KEY_MATERIAL_EXPIRES"

{-# COMPLETE
  ExpirationModelTypeKEYMATERIALDOESNOTEXPIRE,
  ExpirationModelTypeKEYMATERIALEXPIRES,
  ExpirationModelType'
  #-}

instance Prelude.FromText ExpirationModelType where
  parser = ExpirationModelType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExpirationModelType where
  toText (ExpirationModelType' x) = x

instance Prelude.Hashable ExpirationModelType

instance Prelude.NFData ExpirationModelType

instance Prelude.ToByteString ExpirationModelType

instance Prelude.ToQuery ExpirationModelType

instance Prelude.ToHeader ExpirationModelType

instance Prelude.ToJSON ExpirationModelType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ExpirationModelType where
  parseJSON = Prelude.parseJSONText "ExpirationModelType"
