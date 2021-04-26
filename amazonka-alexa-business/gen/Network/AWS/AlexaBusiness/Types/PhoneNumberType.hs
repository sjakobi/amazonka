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
-- Module      : Network.AWS.AlexaBusiness.Types.PhoneNumberType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.PhoneNumberType
  ( PhoneNumberType
      ( ..,
        PhoneNumberTypeHOME,
        PhoneNumberTypeMOBILE,
        PhoneNumberTypeWORK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PhoneNumberType = PhoneNumberType'
  { fromPhoneNumberType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern PhoneNumberTypeHOME :: PhoneNumberType
pattern PhoneNumberTypeHOME = PhoneNumberType' "HOME"

pattern PhoneNumberTypeMOBILE :: PhoneNumberType
pattern PhoneNumberTypeMOBILE = PhoneNumberType' "MOBILE"

pattern PhoneNumberTypeWORK :: PhoneNumberType
pattern PhoneNumberTypeWORK = PhoneNumberType' "WORK"

{-# COMPLETE
  PhoneNumberTypeHOME,
  PhoneNumberTypeMOBILE,
  PhoneNumberTypeWORK,
  PhoneNumberType'
  #-}

instance Prelude.FromText PhoneNumberType where
  parser = PhoneNumberType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PhoneNumberType where
  toText (PhoneNumberType' x) = x

instance Prelude.Hashable PhoneNumberType

instance Prelude.NFData PhoneNumberType

instance Prelude.ToByteString PhoneNumberType

instance Prelude.ToQuery PhoneNumberType

instance Prelude.ToHeader PhoneNumberType

instance Prelude.ToJSON PhoneNumberType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PhoneNumberType where
  parseJSON = Prelude.parseJSONText "PhoneNumberType"
