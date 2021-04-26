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
-- Module      : Network.AWS.AlexaBusiness.Types.ConferenceProviderType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.ConferenceProviderType
  ( ConferenceProviderType
      ( ..,
        ConferenceProviderTypeBLUEJEANS,
        ConferenceProviderTypeCHIME,
        ConferenceProviderTypeCUSTOM,
        ConferenceProviderTypeFUZE,
        ConferenceProviderTypeGOOGLEHANGOUTS,
        ConferenceProviderTypePOLYCOM,
        ConferenceProviderTypeRINGCENTRAL,
        ConferenceProviderTypeSKYPEFORBUSINESS,
        ConferenceProviderTypeWEBEX,
        ConferenceProviderTypeZOOM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConferenceProviderType = ConferenceProviderType'
  { fromConferenceProviderType ::
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

pattern ConferenceProviderTypeBLUEJEANS :: ConferenceProviderType
pattern ConferenceProviderTypeBLUEJEANS = ConferenceProviderType' "BLUEJEANS"

pattern ConferenceProviderTypeCHIME :: ConferenceProviderType
pattern ConferenceProviderTypeCHIME = ConferenceProviderType' "CHIME"

pattern ConferenceProviderTypeCUSTOM :: ConferenceProviderType
pattern ConferenceProviderTypeCUSTOM = ConferenceProviderType' "CUSTOM"

pattern ConferenceProviderTypeFUZE :: ConferenceProviderType
pattern ConferenceProviderTypeFUZE = ConferenceProviderType' "FUZE"

pattern ConferenceProviderTypeGOOGLEHANGOUTS :: ConferenceProviderType
pattern ConferenceProviderTypeGOOGLEHANGOUTS = ConferenceProviderType' "GOOGLE_HANGOUTS"

pattern ConferenceProviderTypePOLYCOM :: ConferenceProviderType
pattern ConferenceProviderTypePOLYCOM = ConferenceProviderType' "POLYCOM"

pattern ConferenceProviderTypeRINGCENTRAL :: ConferenceProviderType
pattern ConferenceProviderTypeRINGCENTRAL = ConferenceProviderType' "RINGCENTRAL"

pattern ConferenceProviderTypeSKYPEFORBUSINESS :: ConferenceProviderType
pattern ConferenceProviderTypeSKYPEFORBUSINESS = ConferenceProviderType' "SKYPE_FOR_BUSINESS"

pattern ConferenceProviderTypeWEBEX :: ConferenceProviderType
pattern ConferenceProviderTypeWEBEX = ConferenceProviderType' "WEBEX"

pattern ConferenceProviderTypeZOOM :: ConferenceProviderType
pattern ConferenceProviderTypeZOOM = ConferenceProviderType' "ZOOM"

{-# COMPLETE
  ConferenceProviderTypeBLUEJEANS,
  ConferenceProviderTypeCHIME,
  ConferenceProviderTypeCUSTOM,
  ConferenceProviderTypeFUZE,
  ConferenceProviderTypeGOOGLEHANGOUTS,
  ConferenceProviderTypePOLYCOM,
  ConferenceProviderTypeRINGCENTRAL,
  ConferenceProviderTypeSKYPEFORBUSINESS,
  ConferenceProviderTypeWEBEX,
  ConferenceProviderTypeZOOM,
  ConferenceProviderType'
  #-}

instance Prelude.FromText ConferenceProviderType where
  parser = ConferenceProviderType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConferenceProviderType where
  toText (ConferenceProviderType' x) = x

instance Prelude.Hashable ConferenceProviderType

instance Prelude.NFData ConferenceProviderType

instance Prelude.ToByteString ConferenceProviderType

instance Prelude.ToQuery ConferenceProviderType

instance Prelude.ToHeader ConferenceProviderType

instance Prelude.ToJSON ConferenceProviderType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ConferenceProviderType where
  parseJSON = Prelude.parseJSONText "ConferenceProviderType"
