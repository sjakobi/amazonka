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
-- Module      : Network.AWS.CodeDeploy.Types.RegistrationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.RegistrationStatus
  ( RegistrationStatus
      ( ..,
        RegistrationStatusDeregistered,
        RegistrationStatusRegistered
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RegistrationStatus = RegistrationStatus'
  { fromRegistrationStatus ::
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

pattern RegistrationStatusDeregistered :: RegistrationStatus
pattern RegistrationStatusDeregistered = RegistrationStatus' "Deregistered"

pattern RegistrationStatusRegistered :: RegistrationStatus
pattern RegistrationStatusRegistered = RegistrationStatus' "Registered"

{-# COMPLETE
  RegistrationStatusDeregistered,
  RegistrationStatusRegistered,
  RegistrationStatus'
  #-}

instance Prelude.FromText RegistrationStatus where
  parser = RegistrationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText RegistrationStatus where
  toText (RegistrationStatus' x) = x

instance Prelude.Hashable RegistrationStatus

instance Prelude.NFData RegistrationStatus

instance Prelude.ToByteString RegistrationStatus

instance Prelude.ToQuery RegistrationStatus

instance Prelude.ToHeader RegistrationStatus

instance Prelude.ToJSON RegistrationStatus where
  toJSON = Prelude.toJSONText
