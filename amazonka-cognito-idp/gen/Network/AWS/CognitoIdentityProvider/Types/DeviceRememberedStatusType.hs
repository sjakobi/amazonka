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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.DeviceRememberedStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.DeviceRememberedStatusType
  ( DeviceRememberedStatusType
      ( ..,
        DeviceRememberedStatusTypeNotRemembered,
        DeviceRememberedStatusTypeRemembered
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeviceRememberedStatusType = DeviceRememberedStatusType'
  { fromDeviceRememberedStatusType ::
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

pattern DeviceRememberedStatusTypeNotRemembered :: DeviceRememberedStatusType
pattern DeviceRememberedStatusTypeNotRemembered = DeviceRememberedStatusType' "not_remembered"

pattern DeviceRememberedStatusTypeRemembered :: DeviceRememberedStatusType
pattern DeviceRememberedStatusTypeRemembered = DeviceRememberedStatusType' "remembered"

{-# COMPLETE
  DeviceRememberedStatusTypeNotRemembered,
  DeviceRememberedStatusTypeRemembered,
  DeviceRememberedStatusType'
  #-}

instance Prelude.FromText DeviceRememberedStatusType where
  parser = DeviceRememberedStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceRememberedStatusType where
  toText (DeviceRememberedStatusType' x) = x

instance Prelude.Hashable DeviceRememberedStatusType

instance Prelude.NFData DeviceRememberedStatusType

instance Prelude.ToByteString DeviceRememberedStatusType

instance Prelude.ToQuery DeviceRememberedStatusType

instance Prelude.ToHeader DeviceRememberedStatusType

instance Prelude.ToJSON DeviceRememberedStatusType where
  toJSON = Prelude.toJSONText
