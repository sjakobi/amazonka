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
-- Module      : Network.AWS.SWF.Types.RegistrationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.RegistrationStatus
  ( RegistrationStatus
      ( ..,
        RegistrationStatusDEPRECATED,
        RegistrationStatusREGISTERED
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

pattern RegistrationStatusDEPRECATED :: RegistrationStatus
pattern RegistrationStatusDEPRECATED = RegistrationStatus' "DEPRECATED"

pattern RegistrationStatusREGISTERED :: RegistrationStatus
pattern RegistrationStatusREGISTERED = RegistrationStatus' "REGISTERED"

{-# COMPLETE
  RegistrationStatusDEPRECATED,
  RegistrationStatusREGISTERED,
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

instance Prelude.FromJSON RegistrationStatus where
  parseJSON = Prelude.parseJSONText "RegistrationStatus"
