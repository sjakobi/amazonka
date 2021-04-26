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
-- Module      : Network.AWS.Connect.Types.PhoneType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.PhoneType
  ( PhoneType
      ( ..,
        PhoneTypeDESKPHONE,
        PhoneTypeSOFTPHONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PhoneType = PhoneType'
  { fromPhoneType ::
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

pattern PhoneTypeDESKPHONE :: PhoneType
pattern PhoneTypeDESKPHONE = PhoneType' "DESK_PHONE"

pattern PhoneTypeSOFTPHONE :: PhoneType
pattern PhoneTypeSOFTPHONE = PhoneType' "SOFT_PHONE"

{-# COMPLETE
  PhoneTypeDESKPHONE,
  PhoneTypeSOFTPHONE,
  PhoneType'
  #-}

instance Prelude.FromText PhoneType where
  parser = PhoneType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PhoneType where
  toText (PhoneType' x) = x

instance Prelude.Hashable PhoneType

instance Prelude.NFData PhoneType

instance Prelude.ToByteString PhoneType

instance Prelude.ToQuery PhoneType

instance Prelude.ToHeader PhoneType

instance Prelude.ToJSON PhoneType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PhoneType where
  parseJSON = Prelude.parseJSONText "PhoneType"
